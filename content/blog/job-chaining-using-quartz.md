title=Job chaining using Quartz
date=2009-03-31
tags=quartz,java
slug=job-chaining-using-quartz
summary=Using Quartz to chain jobs rather than scheduling for indeterminate running time
category=Papers
author=Senthilkumar Gopal
type=post
status=published
~~~~~~

###Project Usage
Our Project had the requirement of reading a set of records from a table which acts as a queue and sends the pending mails. This reading /sending of mails has to happen every five minutes. However, since the SMTP server needs to address online mailing at times, this job may run more than the given five minutes. Also, if the number of records in the table is high, the Job exceeds the expected time of completion of five minutes. Hence it was decided to “chain” the jobs with a five minute delay.

###Introduction to Quartz

Quartz is an open source job scheduling framework that provides simple but powerful mechanisms for job scheduling in Java applications. Quartz allows developers to schedule jobs by time interval or by time of day. It implements many-to-many relationships for jobs and triggers and can associate multiple jobs with different triggers.
Applications that incorporate Quartz can reuse jobs from different events and also group multiple jobs for a single event. While you can configure Quartz through a property file (in which you can specify a data source for JDBC transactions, global job and/or trigger listeners, plug-ins, thread pools, and more) it is not at all integrated with the application server's context or references.

###Jobs and triggers

The two fundamental units of Quartz's scheduling package are jobs and triggers. A job is an executable task that can be scheduled, while a trigger provides a schedule for a job. While these two entities could easily have been combined, their separation in Quartz is both intentional and beneficial. By keeping the work to be performed separate from its scheduling, Quartz allows you to change the scheduled trigger for a job without losing the job itself, or the context around it. Also, any singular job can have many triggers associated with it.

###Simple Job Example

An example of a Quartz job is given below. This class overrides the execute () (JobExecutionContext context) method with a very simple output statement. This method can contain any code that constitutes the job to be executed

####SimpleQuartzJob.java
    import java.util.Date;
    import org.quartz.Job;
    import org.quartz.JobExecutionContext;
    import org.quartz.JobExecutionException;

    public class SimpleQuartzJob implements Job {

        public SimpleQuartzJob() {
        }

        public void execute(JobExecutionContext context) throws JobExecutionException {
            System.out.println("In SimpleQuartzJob - executing its JOB at "
                    + new Date() + " by " + context.getTrigger().getName());
        }
    }

*Notice that the execute method takes a JobExecutionContext object as an argument. This object provides the runtime context around the job instance. Specifically, it gives access to the scheduler and trigger, which collaborated to initiate execution of the job as well as the job's JobDetail object. Quartz separates the execution and the surrounding state of a job by placing the state in a JobDetail object and having the JobDetail constructor initiate an instance of a job. The JobDetail object stores the job's listeners, group, data map, description, and other properties of the job.*

####Simple Trigger Example
A trigger develops a schedule for job execution. Quartz offers a few different trigger options of varying complexity. The SimpleTrigger given below shows the fundamentals of triggers.

####SimpleTriggerRunner.java

    import org.quartz.JobDetail;
    import org.quartz.Scheduler;
    import org.quartz.SchedulerException;
    import org.quartz.Trigger;
    import org.quartz.TriggerUtils;
    import org.quartz.impl.StdSchedulerFactory;

    public class Test{
        public void scheduleTask() throws SchedulerException {
            try{
                logger.info("Starting the scheduler in Quartz");
                StdSchedulerFactory schedFact = new StdSchedulerFactory();
                Scheduler sched = schedFact.getScheduler();
                logger.info("Scheduling a Tickler job in Quartz");

                    //Making a daily Trigger for the Job
                Trigger simpleTrigger = TriggerUtils.makeDailyTrigger(2, 00);
                simpleTrigger.setName("SimpleQuartzTrigger");
                simpleTrigger.setGroup(Scheduler.DEFAULT_GROUP);
                JobDetail simpleJob = new JobDetail("SimpleQuartzJob", Scheduler.DEFAULT_GROUP, SimpleQuartzJob.class);
                sched.scheduleJob(simpleJob,simpleTrigger);
                logger.info("Tickler Mail Job Scheduled");
            }
            catch(Exception e){
                logger.info("Error while scheduling the jobs.");
                logger.error(e);
            }
        }
    }

The scheduling method starts by instantiating a SchedulerFactory and getting the scheduler. As discussed earlier, the JobDetail object is created by taking the Job (SimpleQuartzJob) as an argument to its constructor. The TriggerUtils.makeDailyTrigger creates a simple trigger which executes the associated job(s) at 2:00 am everyday
There are a number of other ways to manipulate a SimpleTrigger. In addition to a specified number of repeats and a specified repeat interval, jobs may be schedules to execute at a specific calendar time, given a maximum time of execution, or given a priority. Some of the advanced concepts include CronTriggers, Job Stores, and JobMap etc.,


###Need for Job Chaining
The job known as “MailProcessor” needs to be scheduled every 5 minutes i.e., this job has to execute every five minutes. The code which was used for scheduling the job is given below:

    Trigger mailProcTrigger = TriggerUtils.makeMinutelyTrigger(5);
    mailProcTrigger.setName(SchedulingConstants.MAILPROCESSOR_TRIGGER_NAME);
    mailProcTrigger.setGroup(Scheduler.DEFAULT_GROUP);
    JobDetail mailProc = new JobDetail(SchedulingConstants.MAILPROCESSOR_JOB_NAME, Scheduler.DEFAULT_GROUP, MailProcessor.class);
    sched.scheduleJob(mailProc,mailProcTrigger);
    logger.info("Mail Processor Scheduled");

Following are the issues faced with this kind of scheduling

1. The SMTP Server needs to address online mailing at times.
2. The number of records in the table is high and hence the number of mails to be sent are higher in number
3. Due to the above reasons, this job may have a completion of time of more than five minutes, which means that the next schedule of the same will get triggered even before the first one completes.

__Solution__

Hence to resolve this, we need to chain the jobs such that the job gets “re-scheduled” only after the first job is completed. This is known as “Job-Chaining”

###Job Chaining – How it was implemented
1. A Utility Method for returning the time 5 minutes from now and another Utility method for returning a SimpleTrigger using the NextScheduledTime are created.
2. The first time scheduling of the Job is done with a SimpleTrigger (Utility method) which starts the first job 5 minutes from the starting instance


    //The Utility method to return the Next Scheduling time 5 minutes from now
    public static Date getNextMailScheduledTime() {
        Calendar cal = Calendar.getInstance();
        System.out.println("Date Current: "+cal.getTimeInMillis());
        cal.add(Calendar.MINUTE,1);
        System.out.println("Date after addition: "+cal.getTimeInMillis());
        return cal.getTime();
    }

    //The Utility Method to return a SimpleTrigger which used the NextScheduledTime Utility Method for the Triggering time
    public static Trigger getMailProcessorTrigger() {
        Date newDate = VsimsUtil.getNextMailScheduledTime();
        Trigger mailTrigger = new SimpleTrigger(SchedulingConstants.MAILPROCESSOR_TRIGGER_NAME, Scheduler.DEFAULT_GROUP,newDate);
        mailTrigger.setJobName(SchedulingConstants.MAILPROCESSOR_JOB_NAME);
        mailTrigger.setJobGroup(Scheduler.DEFAULT_GROUP);
        return mailTrigger;
    }

###Scheduling the Job for the First Run
1. Using the Utility methods the “MailProcessor” Job is scheduled to run after Five minutes from the current Instance
2. Since a specific time instance is given for the Trigger, this Job will get Triggered only once


    JobDetail mailJobDetail = new JobDetail("MailProcessorJob",Scheduler.DEFAULT_GROUP, MailProcessor.class);
    sched.scheduleJob(mailJobDetail,VsimsUtil Util.getMailProcessorTrigger());
    logger.info("Mail Processor Scheduled");

Note: _Since the Job is being scheduled for the first time we have to use sched.scheduleJob() for scheduling the job_

In the Execute method of the Job, once the Job gets fired for the first time by the Trigger created, the Job Execution steps are completed and then the job gets “re-scheduled’ after five minutes using the same Utility method


    public void execute(JobExecutionContext jobContext) throws JobExecutionException {
            logger.info("MailProcessor execute - start");

            //PERFORM THE JOB EXECUTION STEPS HERE
            //Chaining of the Job by re-scheduling
            try {
                logger.info("Scheduler Instance Id in Mail Processor: "+
                    + jobContext.getScheduler().getSchedulerInstanceId());

                //If Rescheduled Correctly, the Scheduler returns the next Scheduled Time of the JOB
                Date nextScheduledTime = jobContext.getScheduler().rescheduleJob
                    ("MailProcessorJob", Scheduler.DEFAULT_GROUP, Util.getMailProcessorTrigger());
                logger.info("Rescheduled at : "+nextScheduledTime);
            } catch (SchedulerException e) {
                logger.error("Error in Scheduling the Job for the Next Iteration");
                e.printStackTrace();
            }

    }

Note: _Since the same job is being chained, we have to use rescheduleJob()._

The re-scheduling also happens using the Trigger returned by the Utility Method. Hence the job gets rescheduled only once. Hence the subsequent run of the job will reschedule the job again for its next run. Thus we achieve chaining of the job runs



References
* <http://quartz.sourceforge.net/firstTutorial.html>
* <http://www-128.ibm.com/developerworks/java/library/j-quartz/>
