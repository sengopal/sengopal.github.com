title=A great article about Code reviews
date=2010-12-13
tags=java, process
slug=notes-about-code-reviews
summary=Notes about code review and how important that is from few other articles
category=Development Process
author=Senthilkumar Gopal
type=post
status=draft
~~~~~~

Originally posted [here](http://www.developer.com/tech/article.php/3579756/Effective-Code-Reviews-Without-the-Pain.htm). It really draws out the perspective of developers considering themselves as the owner of the code and how they become defensive about it. Code reviews in most organizations are a painful experience for everyone involved. The developer often feels like it's a bashing session designed to beat out their will. The development leads are often confused as to what is important to point out and what isn't. And other developers that may be involved often use this as a chance to show how much better they can be by pointing out possible issues in the reviewed code. Code reviews, however, don't have to be painful

####Remembering the Purpose
Code reviews have two purposes. Their first purpose is to make sure that the code that is being produced has sufficient quality to be released. In other words, it's the acid test for whether the code should be promoted to the next step in the process. Code reviews are very effective at finding errors of all types, including those caused by poor structure, those that don't match business process, and also those simple omissions. That's why they are an effective litmus test for the quality of the code.

The second purpose is as a teaching tool to help developers learn when and how to apply techniques to improve code quality, consistency, and maintainability. Through thoughtfully evaluating code on a recurring basis, developers have the opportunity to learn different and potentially better ways of coding.

Code reviews often start off on the wrong foot because they are perceived as an unnecessary step that has been forced upon the developers or, in some cases, evidence that management doesn't trust the developers. Neither of these perspectives is accurate. Code reviews are a proven, effective way to minimize defects. Whatever additional motivations the organization has for performing code reviews, they are, at their core, an industry best practice.

###A Matter of Approach
One of the other ways that a code review gets off track is by the participants approaching it as though the process is designed to demonstrate who the better programmer is. Code reviews often become mental jousting matches where people take shots at a target; in other words, the developer that wrote the code being reviewed. A better approach is a learning approach where the whole exercise is viewed as a forum to discuss and learn from everyone.

Saying that the approach should be educational and open is one thing but creating that feeling when the history has been mental jousting matches can be quite challenging. That being said, there are a few simple things that you can do to change the approach for the better:

1. **Ask questions rather than make statements.** A statement is accusatory. "You didn't follow the standard here&quot; is an attack—whether intentional or not. The question, &quot;What was the reasoning behind the approached you used?&quot; is seeking more information. Obviously, that question can't be said with a sarcastic or condescending tone; but, done correctly, it can often open the developer up to stating their thinking and then asking if there was a better way.

2. **Avoid the "Why" questions.** Although extremely difficult at times, avoiding the&quot;Why&quot; questions can substantially improve the mood. Just as a statement is accusatory—so is a why question. Most &quot;Why&quot; questions can be reworded to a question that doesn't include the word &quot;Why&quot; and the results can be dramatic. For example, &quot;Why didn't you follow the standards here...&quot; versus &quot;What was the reasoning behind the deviation from the standards here...&quot;

3. **Remember to praise.** The purposes of code reviews are not focused at telling developers how they can improve, and not necessarily that they did a good job. Human nature is such that we want and need to be acknowledged for our successes, not just shown our faults. Because development is necessarily a creative work that developers pour their soul into, it often can be close to their hearts. This makes the need for praise even more critical.

4. **Make sure you have good coding standards to reference** Code reviews find their foundation in the coding standards of the organization. Coding standards are supposed to be the shared agreement that the developers have with one another to produce quality, maintainable code. If you're discussing an item that isn't in your coding standards, you have some work to do to get the item in the coding standards. You should regularly ask yourself whether the item being discussed is in your coding standards.

5. **Make sure the discussion stays focused on the code and not the coder.** Staying focused on the code helps keep the process from becoming personal. You're not interested in saying the person is a bad person. Instead, you're looking to generate the best quality code possible.

6. **Remember that there is often more than one way to approach a solution.** Although the developer might have coded something differently from how you would have, it isn't necessarily wrong. The goal is quality, maintainable code. If it meets those goals and follows the coding standards, that's all you can ask for.

###What to Do If You're a Developer###
The above advice is fine if you're the project or development leader who is organizing the code review, but what if you're the one who has to endure a painful code review? What can you do to make the process less painful if you're the developer who's having your code reviewed?

1. **Remember that the code isn't you.** Development is a creative process. It's normal to get attached to your code. However, the folks who are reviewing the code generally aren't trying to say that you're a bad developer (or person) by pointing out something that you missed, or a better way of handling things. They're doing what they're supposed to be doing by pointing out better ways. Even if they're doing a bad job of conveying it, it's your responsibility to hear past the attacking comments and focus on the learning that you can get out of the process. You need to strive to not get defensive.

2. **Create a checklist for yourself of the things that the code reviews tend to focus on.** Some of this checklist should be easy to put together. It should follow the outline of the coding standards document. Because it's your checklist, you can focus on the thing that you struggle with and skip the things that you rarely, if ever, have a problem with. Run through your code with the checklist and fix whatever you find. Not only will you reduce the number of things that the team finds, you'll reduce the time to complete the code review meeting—and everyone will be happy to spend less time in the review.

3. **Help to maintain the coding standards.** Offer to add to the coding standards for things discussed that aren't in the coding standards. One of the challenges that a developer has in an organization with combative code review practices is that they frequently don't know where the next problem will come from. If you document each issue into the coding standards, you can check for it with your checklist the next time you come up for code reviews. It also will help cement the concept into your mind so that you're less likely to miss opportunities to use the feedback.

Sure the above techniques can help you when you're sitting across the table from someone but how do you communicate tone and approach when you're doing code reviews through marking up the developer's code. Surprisingly, it's often easier than face-to-face code reviews.

In a face-to-face code review you, have to think on your feet. You can't reread your statements and questions and then change them to be more sensitive, more precise, or more caring. The benefit of an off-line code review is most heightened at the beginning of the process. Both the development leader and the developer have the opportunity to think about how to respond.

By the way, this off-line review process is the one that books (and some articles use.) This off-line process is used all the time in the publishing world, but is strangely not frequently used for code reviews. In some ways, it can be much more effective than a face-to-face conversation. Even if you have the ability to do meetings, you may consider moving to an off-line review to make the process better.

If you do your reviews by comments, a few special techniques are called for. They are:

1. **Put a summary comment at the top—and be positive.** One of the beautiful things about a review that is done off-line is that it's possible to read through everything and make a summary statement at the top of the file. This can help set the mood of the developer so they understand whether you're thrilled, thankful, happy, and so forth. This will soften comments even if harsh at times and make them more palatable. No matter what, the initial comment should contain some element of a positive message because there's something good to say about nearly every piece of code—even if it is only that it compiles. (It is syntactically correct.) Setting that positive attitude is essential.

2. **Use an electronic mechanism to record the comments.** Whether you export the code to a PDF file and use comments to mark it up, or copy the code into Word and use Word's commenting features, make sure that you use an electronic format for comments. This is important because it doesn't limit you to how much you can fit on a page—so you can explain more of what you mean and you can be more questioning and caring than doing a hardcopy review allows.

3. **Make an upfront agreement that not every question needs to be responded to.** The best off-line reviews include thinking questions. Questions such as &quot;Would it be better to implement a provider pattern here?&quot; don't necessarily need a response. Make it clear to the developer that some comments are simply to provoke thinking. This allows you to identify areas where you want to make sure the developer is considering alternatives without raising them to the point of being an issue with the code. Getting developers to think about the code they are writing doesn't improve the quality of the code they've already written, but it does have a long-term positive impact on code quality.
###Conclusion###
Code reviews are often misused and painful for everyone, but they don't have to be. Some simple steps can convert torture into teaching and improve the long-term outlook for code quality in your organization.
