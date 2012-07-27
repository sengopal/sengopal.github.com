---
layout: post
title: Discussion about JVM Options
type: post
tags:
 - java
published: true
meta:
categories:
 - blog
---
##JVM Optimization and Parameters
The following notes are obtained from bits and pieces available from various posts on the world wide web. Not all command-line flags are  necessarily supported by any VM other than the one from Sun/Oracle. The best way to  find out whether a flag is supported is, of course, to try it and see if it works.

###Classification  
Options that begin with -X are non-standard (not guaranteed to be supported on all VM implementations), and are subject to change without notice in    subsequent releases of the JDK. Options that are specified with -XX are not stable and are not recommended for casual use.
 
 
###Default Values   
Boolean options are turned on with `-XX:+<option>` and turned off with `-XX:-<option>`.
   
Numeric options are set with `-XX:<option>=<number>`. Numbers can include 'm' or 'M' for megabytes, 'k' or 'K' for kilobytes, and 'g' or'G' for gigabytes (for example, 32k is the same as 32768).
   
String options are set with `-XX:<option>=<string>` and are usually used to specify a file, a path or a list of commands

_As a developer, following are the five important parameters we need to remember_

####DisableExplicitGC
To prevent application developers from using System.gc() explicitly. The `-XX:+DisableExplicitGC` flag automatically turns a System.gc() call into a no-op 
 
####HeapDumpOnOutOfMemoryError
`XX:+HeapDumpOnOutOfMemoryError` command catches a snapshot of the heap right as the JVM is on its dying breath. The actual path to which the file is saved  using the corresponding `-XX:HeapDumpPath` flag.

####bootclasspath
`-Xbootclasspath` lets you set the complete boot classpath, which typically has to include a reference to rt.jar, plus a bunch of other JAR files that ship with the JDK that aren't part of rt.jar. `-Xbootclasspath/p` prepends the value to the existing bootclasspath, and `-Xbootclasspath/a` appends it. 
 
####verbose
-verbose is a useful first-level diagnostic utility for virtually any type of Java application. The flag has three sub-flags: gc, class, and jni. 
 
**gc** - is typically the first place developers go to try to figure out if the JVM garbage collector is acting up and causing poor performance.

**class** - can be a life-saver for trying to diagnose ClassLoader and/or mismatched class conflicts. It reports not only when a class is loaded, but also where the class was loaded from, including the path to the JAR file, assuming it came from a JAR.

**jni** - is of little use except when working with JNI and native libraries. When turned on, it will report various JNI events, such as when native libraries are loaded and methods are bound; again, the output can vary from one release or JVM to  another.


###-X
Running the command-line argument -X lists all the non-standard (but mostly safe) arguments that the JVM provides.
   
`-Xint` - which runs the JVM in interpreted mode (which can be useful for testing whether the JIT compiler is actually having an effect on your code or    verifying if you have a bug in the JIT compiler).
   
`-Xloggc` - which does the same thing as `-verbose:gc` but logs to a file instead of spewing to the command-line window.
 
The "not-so-exhaustive" list is given below. 
 
####Behavior Options 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
_Option and its default Value_ is given for better understanding
      
**-XX:-AllowUserSignalHandlers** - Do not complain if the application installs signal handlers.

**-XX:AltStackSize=16384** - Alternate signal stack size (in Kbytes)
         
**-XX:-DisableExplicitGC** - Disable calls to System.gc(), JVM still performs garbage collection when          necessary.
         
**-XX:+FailOverToOldVerifier** - Fail over to old verifier when the new type checker fails.

**-XX:+HandlePromotionFailure** - The youngest generation collection does not require a guarantee of full promotion of all live objects.

**-XX:+MaxFDLimit** - Bump the number of file descriptors to max.
         
**-XX:PreBlockSpin=10** - Spin count variable for use with `**-XX:+UseSpinning`. Controls the maximum spin iterations allowed before entering operating system thread synchronization code.
         
**-XX:-RelaxAccessControlCheck** - Relax the access control checks in the verifier.
         
**-XX:+ScavengeBeforeFullGC** - Do young generation GC prior to a full GC.
         
**-XX:+UseAltSigs** - Use alternate signals instead of SIGUSR1 and SIGUSR2 for VM internal signals.
         
**-XX:+UseBoundThreads** - Bind user level threads to kernel threads.

**-XX:-UseConcMarkSweepGC** - Use concurrent mark-sweep collection for the old generation.

**-XX:+UseGCOverheadLimit** - Use a policy that limits the proportion of the VM's time that is spent in GC before an OutOfMemory error is thrown.

**-XX:+UseLWPSynchronization** - Use LWP-based instead of thread based synchronization.

**-XX :-UseParallelGC** - Use parallel garbage collection for scavenges.

**-XX:-UseParallelOldGC** - Use parallel garbage collection for the full collections. Enabling this          option automatically sets `-XX:+UseParallelGC`

**-XX:-UseSerialGC** - Use serial garbage collection.

**-XX:-UseSpinning** - Enable naive spinning on Java monitor before entering operating system thread synchronizaton code.

**-XX:+UseTLAB** - Use thread-local object allocation 

**-XX:+UseSplitVerifier** - Use the new type checker with StackMapTable attributes.

**-XX:+UseThreadPriorities** - Use native thread priorities.

**-XX:+UseVMInterruptibleIO** - Thread interrupt before or with EINTR for I/O operations results in          OS_INTRPT.

####Performance Options
_Option and its default Value_ is given for better understanding
         
**-XX:+AggressiveOpts** - Turn on point performance compiler optimizations that are expected to be          default in upcoming releases.

**-XX:CompileThreshold=10000** - Number of method invocations/branches before compiling [-client: 1,500]
         
**-XX:LargePageSizeInBytes=4m** - Sets the large page size used for the Java heap.

**-XX:MaxHeapFreeRatio=70** - Maximum percentage of heap free after GC to avoid shrinking.

**-XX:MaxNewSize=size** - Maximum size of new generation (in bytes).

**-XX:MaxPermSize=64m** - Size of the Permanent Generation.

**-XX:MinHeapFreeRatio=40** - Minimum percentage of heap free after GC to avoid expansion.

**-XX:NewRatio=2** - Ratio of new/old generation sizes.

**-XX:NewSize=2.125m** - Default size of new generation (in bytes)

**-XX:ReservedCodeCacheSize=32m** - Reserved code cache size (in bytes) 

**-XX:SurvivorRatio=8** - Ratio of eden/survivor space size 

**-XX:TargetSurvivorRatio=50** - Desired percentage of survivor space used after scavenge.
         
**-XX:ThreadStackSize=512** - Thread Stack Size (in Kbytes). (0 means use default stack size) 

**-XX:+UseBiasedLocking** - Enable biased locking.

**-XX:+UseFastAccessorMethods** - Use optimized versions of `Get<Primitive>Field`

**-XX:-UseISM** - Use Intimate Shared Memory.

**-XX:+UseLargePages** - Use large page memory.

**-XX:+UseMPSS** - Use Multiple Page Size Support w/4mb pages for the heap._Do not use with ISM as this replaces the need for ISM_
         
**-XX:+UseStringCache** - Enables caching of commonly allocated strings.

**-XX:AllocatePrefetchLines=1** - Number of cache lines to load after the last object allocation using prefetch instructions generated in JIT compiled code. _Default values are 1 if the last allocated object was an instance and 3 if it was an array_

**-XX:AllocatePrefetchStyle=1** - Generate code style for prefetch instructions.
``` 
0 - no prefetch instructions are generated,
1 - execute prefetch instructions after each allocation,
2 - use TL AB allocation watermark pointer to gate when prefetch instructions are executed.
```

**-XX:+UseCompressedStrings** - Use a byte[] for Strings which can be represented as pure ASCII.

**-XX:+OptimizeStringConcat** - Optimize String concatenation operations where possible.

####Debugging Options
_Option and its default Value_ is given for better understanding

**-XX:-CITime** - Prints time spent in JIT Compiler.

**-XX:ErrorFile=./hs_err_pid&lt;pid&gt;.log** - If an error occurs, save the error data to this file.

**-XX:-ExtendedDTraceProbes** - Enable performance-impacting dtrace probes

**-XX:HeapDumpPath=./java_pid&lt;pid&gt;.hprof** - Path to directory or filename for heap dump.

**-XX:-HeapDumpOnOutOfMemoryError** - Dump heap to file when java.lang.OutOfMemoryError is thrown.

**-XX:OnError="&lt;cmd args&gt;;&lt;cmd args&gt;"** - Run user-defined commands on fatal error

**-XX:OnOutOfMemoryError="&lt;cmd args&gt;;&lt;cmd args&gt;"** - Run user-defined commands when an OutOfMemoryError is first thrown

**-XX:-PrintClassHistogram** - Print a histogram of class instances on Ctrl-Break.

**-XX:-PrintConcurrentLocks** - Print java.util.concurrent locks in Ctrl-Break thread dump.

**-XX:-PrintCommandLineFlags** - Print flags that appeared on the command line.

**-XX:-PrintCompilation** - Print message when a method is compiled.

**-XX:-PrintGC** - Print messages at garbage collection.

**-XX:-PrintGCDetails** - Print more details at garbage collection.

**-XX:-PrintGCTimeStamps** - Print timestamps at garbage collection

**-XX:-PrintTenuringDistribution** - Print tenuring age information.

**-XX:-TraceClassLoading** - Trace loading of classes.

**-XX:-TraceClassLoadingPreorder** - Trace all classes loaded in order referenced (not loaded)

**-XX:-TraceClassResolution** - Trace constant pool resolutions

**-XX:-TraceClassUnloading** - Trace unloading of classes

**-XX:-TraceLoaderConstraints** - Trace recording of loader constraints

**-XX:+PerfSaveDataToFile** - Saves jvmstat binary data on exit

**-XX:ParallelGCThreads=** - Sets the number of garbage collection threads in the young and old parallel garbage collectors. _The default value varies with the platform on which the JVM is running._
         
**-XX:+UseCompressedOops** - Enables the use of compressed pointers (object references represented as 32 bit offsets instead of 64-bit pointers) for optimized 64-bit performance with Java heap sizes less than 32gb.

**-XX:+AlwaysPreTouch** - Pre-touch the Java heap during JVM initialization. _Every page of the heap is thus demand-zeroed during initialization rather than incrementally during application execution._

**-XX:AllocatePrefetchDistance=** - Sets the prefetch distance for object allocation. _Memory about to be written with the value of new objects is prefetched into cache at this distance (in bytes) beyond the address of the last allocated object. Each Java thread has its own allocation point. The default value varies with the platform on which the JVM is running._

**-XX:InlineSmallCode=** - Inline a previously compiled method only if its generated native code size          is less than this. The default value varies with the platform on which the JVM is running

**-XX:MaxInlineSize=35** - Maximum bytecode size of a method to be inlined.

**-XX:FreqInlineSize=** - Maximum bytecode size of a frequently executed method to be inlined. The          default value varies with the platform on which the JVM is running

**-XX:LoopUnrollLimit=** - Unroll loop bodies with server compiler intermediate representation node          count less than this value. 

**-XX:InitialTenuringThreshold=7** - Sets the initial tenuring threshold for use in adaptive GC sizing in the parallel young collector. _The tenuring threshold is the number of times an object survives a young collection before being promoted to the old, or tenured, generation._

**-XX:MaxTenuringThreshold=** - Sets the maximum tenuring threshold for use in adaptive GC sizing.