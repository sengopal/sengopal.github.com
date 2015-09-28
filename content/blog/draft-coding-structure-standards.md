title=coding-structure-standards
date=2012-01-08
tags=android
slug=android-learn-part1
summary=Coding structure and standards
category=Android
author=Senthilkumar Gopal
type=post
status=draft
~~~~~~



“Code Is Hard to Read

By Dave Anderson

Each programmer has an idea in their head regarding hard to read and easy to read. Readability depends on many factors:

Implementation language. Some syntax just is easier to read than others. XSLT anyone?
Code layout and formatting. Personal preferences and pet hates, like “Where do I place the curly brace?” and indentation.
Naming conventions. userStatus versus _userstatus versus x.
Viewer. Choice of IDE, editor, or other tool used will contribute to readability.”

“Solution design. The most common problem – “I see what’s happening here… but it could be done better.”


“When you have the opportunity, try deodorizing the smelly code. Don’t rush. Just take small steps. In Martin Fowler’s Refactoring the steps of the refactorings presented are outlined in great detail, so it’s easy to follow. I would suggest doing the steps at least once manually to get a feeling for the preconditions and side effects of each refactoring. Thinking about what you’re doing is absolutely necessary when refactoring.”



Choosing DataTypes and parameters



Decouple the UI



Dont use too much magic

“n recent years convention over configuration has been an emerging software design paradigm. By taking advantage of it, developers only need specify the non-common part of their application, because the tools that follow this approach provide meaningful behavior for all the aspects covered by the tool itself. These default behaviors often fit the most typical needs. The defaults can be replaced by custom implementations where something more specific is needed. ”



“Execution Speed versus Maintenance Effort”



“Improved Testability Leads to Better Design”



Interface design
“The conclusion on this is that setters and getters are alien constructs that do not reveal the intention and responsibility of a behavior-centric interface. Therefore you should try to avoid using them; there are better alternatives.”


Complexity
“While a low line count is a good starting point, the overall cognitive load can be further reduced by keeping the cyclomatic complexity low – ideally under 3 or 4, definitely under 10. Cyclomatic complexity is a numeric value that can easily be computed by many tools and is roughly equivalent to the number of execution paths through a method. A high cyclomatic complexity complicates unit testing and has been empirically shown to correlate with bugs.”


Small Methods / Name methods



“The list of attributes I use (in no particular order) are:

Correctness: Does the code do its job?
Modifiability: How easy is the code to modify?
Performance: How fast does the code run? How much memory, disk space, CPU, network usage, etc. will it use?
Speed of production: How quickly will the code be constructed?
Reusability: To what degree will the code be architected to allow later projects to reuse code?
Approachability: How difficult is it for people who are proficient in the languages and tools used to be able to take on future maintenance tasks?”

“Process strictness: How important is it that the nominated development process and coding procedure is followed? In other words, is anyone going to be sacked if they don’t follow the identified processes?
Standards compliance: How important is it to comply with the various relevant standards?”


Comments
“Comment to supplement the source code.”
“Comment to explain the unusual.”
“Comment to document hardware/software interactions.”
“Comment with maintenance in mind.”


“Understand Principles behind Practices”


“Use Aggregate Objects to Reduce Coupling

”

Method Structure

“Keep each method as short as possible: 15 lines of code is a reasonable upper limit that you should be wary of ”

“limit that you should be wary of exceeding.
Give each method a single responsibility: If you are trying to give a meaningful name to the method and you find the name contains an <code />and</code>, there is a good chance that you are breaking this rule.
Declare methods with the lowest number of parameters possible: If you need more than 3 parameters it could be a good idea to do a small refactor by grouping them as properties of a single object.
Avoid nested loops or conditions where possible: You can improve both readability and reusability by putting them in little separated methods.
Write comments only when strictly necessary and keep them in sync with the code: There is nothing more useless than a comment that explains what you can easily read from the code or more ”

“confounding than a comment that says something different from what the code actually does.
Establish a set of shared coding standards: Programmers can understand a piece of code faster if they don’t encounter unexpected surprises while reading it.
By making your code easily readable by other programmers you are making their job simpler. And this is no bad thing when you consider that the next programmer to read the code could be you.”





