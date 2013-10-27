Title: Google Developer Fest 2011 - My Scribblings Part 2
Date: 2011-10-24 15:00
Tags: conference, nontech
Slug: google-dev-fest-part-2
Summary: Notes about the happenings in Google developer fest 2011 Part 2
Category: Ramblings
Author: Senthil Gopal

###Launching and Growing your Business
Michael gave a wonderful talk on how Google Apps can be leveraged to improve the  business propositions. He also spoke about Google Apps Marketplace and Google Apps for  Business which is being used by 40 million users from 3 million businesses and how  developers can develop and deploy their own applications and use them for businesses as  well. Including Gmail, some of the applications available out of the market place are  enterprise security, audit tools, two part authentication, project management, sales  and marketing, administration tools and scheduling.


Some of the success stores are OpenID which provides single  sign-on, Breeze which performs user management with Google Apps and  uses the Provisioning API which takes the list of users, ManyMoon which performs  Autocomplete from Google Apps Contacts and Calendar, MindMeister with Docs Integration, Sliderocket which creates live charts in presentations and Docs  Integration. There are many Gmail contextual gadgets which can get the Details of the  sender from CRM and display in the email, sidebar gadgets in Gmail such as Atlassian  gadget  and sidebar gadgets in Calendar such as TripIt .

The significant Integration points from the above success stories are taking  advantage of existing data without any data silos, Importing contacts and user feeds  which makes sharing with people easier  and Collaboration not limited only to  Google Docs but also with Google APIS and Other APIs from other services.


###Quick Steps for publishing in Google App Marketplace
1. Search for Google Apps marketplace
2. Install ManyMoon Project management
3. Create the manifest â€“ the definition of applications to use and publish to marketplace
4. Build your application with any tools and provider
5. Integrate the application by adding SSO using OpenID
6. Sell your application with a one time fee of 100$

#####Important Links
* [Google Marketplaces](http://www.google.com/enterprise/marketplace "Google Marketplace")
* [Google Code for Apps](http://code.google.com/googleapps "Google Code for Apps")
* [Google Apps Blog](http://googleappsdeveloper.blogspot.com "Google Apps Blog")

###Chrome Developer Tools

Boris gave an excellent and well received session on the not-too-well known Chrome Developer tools. He started off with Session and Local Storage and showed a one page overview of the Chrome Dev Tools, a Cheat Sheet hosted on his blog. `CRTL+ALT+I` is the magic key combination to invoke all the underlying  tools. Chrome now has an improved workflow for editing Inline Styles which updates as you type against the need to press the Enter key. A new style can be easily added using the + key. Right Click and choosing `Edit as HTML` on a `<div/>` displays the appropriate content for editing. We can edit the JS and CSS from the resources tab and double click on the JS to edit it. The  resources tab is a great tool to work with which has all these small nuances like  highlighting the changes done in green, maintaining the revision history, syncing the  changes across panels and even the ability to save the revisions to the local disk.

Some pro features that are found in chrome developer tools are Autocomplete everywhere, ability to tab between properties in CSS Editor [web inspector],   Color manipulation in any of the HSL / RGB /Hex modes by clicking [using the  SHIFT makes the values increment by 10], ability to inspect  pseudo class selectors, great keyboard shortcuts and configurable options [right click  on the console]. The complete list of keyboard shortcuts can be found by using the `?` key.

The Console API used in chrome is same as Firebug Console Log. Some cool features  are console.log takes N parameters, using copy() to copy the last run result from the  console, using querySelector(), using inspect() which switches to the element view of  the selected elements and use arguments like $0 when inspecting, to use the selected  element. While debugging, use CTRL+L to navigate to a specific line number while  the  functioning of breakpoints and debugging remain same as Firebug. One great  aspect of search in resources is that it gives the number of results in each file and  we can prettify an obfuscated JS using the pretty print feature.

#####Breakpoints
Also, there are the regular line breakpoints for debugging and some special ones  like conditional breakpoints and my favorite the Exception breakpoints which are  represented by the small buttons on the left bottom, for "Stop on Exceptions" and  "Don't stop on Exceptions". Then there are the other DOM Breakpoints which can be created by right-click on an DOM View, right-click and selecting "Break on  modifications", the Event Breakpoints which can be selected to break on on the right side panel, the XHR Breakpoints where the condition of the XHR URL contains the given  string can be given.

The future of the developer tools seems to hold a lot such as Chrome extensions - an  API for extending Developer Tools which is experimental for now [need to use flags]  which can be used to add audits and panels such as PageSpeed, JS Validator. Modifications of the Developer tools itself since it is just a web application and  chromiumer can be used to update the DevTools.

The last but not the least of the great features available in developer tools is the  ability for Remote Debugging which can be done using `-remote-debugging-port=31337`. This is currently being pursued as part of the project: `weinre`. The invocation goes like starting the webkit instance with remote debugging, opening the server instance and remote debugging can be done using that instance.

There are lot many videos available on Chrome Dev Tools home page and [Chrome Bugs](http://new.crbug.com "Chrome Bugs") can be used to log any issues or submit an idea for a new feature.

###Web applications on High Replication Datastore
We had a very informative session with Alfred about the Datastore and how it is being used across various platforms. With the cloud platform providing various SaaS, Paas and IaaS such as the App Engine, dynamic scaling and reliability are key aspects for the platform's success. The Datastore is schema-less, non-relational. Started in  January 2011, it has provided serial consistency, sync replication, high reliability  and availability,  consistent performance and no data-loss or downtime.


#####Strong Vs Eventual
Strong means that if datastore tells us that the write is committed, then the write  is immediately visible while if Eventual is committed, it takes some time to be  visible.


#####Why to use a High Replication Datastore
Datastore provides a written sync using a consensus algorithm [Paxos] and no single  replica is guaranteed to have all the data at any time. High replication is made  available either through Strong Vs Eventual ideology. Strong reads are transactional  i.e., on a read, Datastore tries to determine if the replica has the latest data, if  not then the datastore catches up the replica to the latest version.

To make the datastore which needs to scale, Entity Groups are created helping the  application to check only a small group of entities, not the entire datastore. Entity  Groups is just a logical grouping of entities with parent child key relationship. The  unit of transactionality is maintained by having only read/write in a single  group[Cross entity group transactions are coming soon. The Unit of consistency  is based on a Strong serial consistency where the datastore will always get an entity once put but never see a part of transaction, but a whole one.

The best example to demonstrate this is to use it for a collaborative Blog application where we have Users, Photos, Documents, Blog Posts, Comments, Revision History and comments. The comments are individual in nature for Photos, Docs and Posts. The acceptable Entity Group Limitations are that the throughput is limited to at least `1 write/second and Write/Sec != Entity/Sec` with the batch puts/transactions counted as 1 write. A contradictory advice to the  above mentioned norms is that the Entity Groups must be big to get all the groups  involved, but never greater than 1 write/sec.

Dealing with eventual consistency needs some trade-offs. So some simple steps to ensure that that the eventual consistency is reached is by performing a code audit to find global queries and make sure everything is strongly consistent, accepting that a  lot of global queries don't need strong consistency and avoid large entity groups + batch writes. Better usage of Memcache such as Session cache [keep track of recent writes of user] to achieve eventual consistency. A good example is displaying a  blog's comments where a user comments on a blog post and will see all his recent comments but may not see all the other user's comments.

###Android User Experience
The final talk for the day was about the UI and the user experience design for  Phones and Tablets. Some of the great UI experiences in Honeycomb are the Holographic UI, the Bookmarks App for the browser, Fading in of the widgets [inspired from games  and movies digital UI], the RenderScript usage for the Youtube application for the 3D  carousel [Java - Master and C code - RenderScript is the slave], the Books  Application with the never ending scroll, the reflections on the shelf, the elegance of  the UI where the Page is being flipped, the Progress Bars, New Widgets and Styles and  the theme.Holo.Light.

Then the discussion spanned into the Tablet UI Patterns and Honeycomb framework  features. They also provided some general solutions to recurring problems which are  inherently supported in the framework. These were just guidelines and not restrictions.  Some of them were using the Action Bar for the most important actions such as  My location in Maps Application, Home Icon for branding and also helps  user to restart the flow without quitting the application. Using the Navigation/Options  Button for buttons which are lesser used and Context Based such as Sorting the list.  The main usage of the Application Icon is to provide a branding  experience for the application and can be replaced with logo and to support "upward"  navigation within the application.

The various components of the application view are View Details  [What can i see] which can Simple with a non interactive title bar  replacement or Richer with Tabs, dropdowns, menus, breadcrumbs [  Examples: Day, week, month of calendar application / Search fields of the map  application],  Action Buttons [What can i do here] with more  important/frequently accessed action at left. The buttons can only be icon, text and if  real estate permits, put the text or add to the other items menu.

Having the Action bar transform its appearance when items are selected [such as copy/paste] is a slick trick and can improve the user experience. The action bar can  also change for single or multiple selections which is typically invoked using touch  and hold. It can also contain items like a normal action bar such as Done button,  Selection details, Contextual action buttons.

**Multi-Pane Layouts** gives the advantage of increased real estate,  help avoid long line lengths, consolidate multiple related screens into a single  compound view and provide more context based settings. Some commonly used designs are  the Right-Panes show more content or details for items selected in the left panes.

The multi-pane layout should support orientations i.e., Orientation change should  preserve functional parity and should not make a user rotate to achieve a task. The  Strategies should be applied per screen and not per application. For show/hide use  UPward navigation to show the master pane [Example: Gmail Conversation view]. Make use  of Intents and Fragments, and for a new Intent use the same activity and change the  layout if needed. Use Fragment-Activity-Fragment communication in case we have both  intents and fragments in the same screen.

The major pieces in Honeycomb to remember while designing an Android Application are  application navigations, richer notifications and richer home screen widgets. The long  press of the Home button in Honey comb shows a preview of the Activity going on.

Android has relied on _temporal memory_ since users are not good at remembering order of events but good at remembering what just happened. It also relies on users having  good structural memory which helps in remembering the relationships between screens such as the differences  between Application UP which navigates through the hierarchy within the application while the SYSTEM BACK navigates the user back to the  previous activity the user was on.

Though these are the best practices, it is always better to be creative with  different navigation views for media-rich apps and break the monotony with great views  such as CarouselView using Renderscript customizations.


#####Some of the Do's and Don'ts for a novice Android application developer are:
1. Do aim for single apk
2. Do use the compatibility library
3. Do customize visual design completely, if not following the Halo theme
4. Do support both Portrait and landscape
5. Do extract dimensions for phones and tablets using  values/ dimens.xml and values-large/dimens.xml
6. Do use theme/style to reduce redundancy
7. Do marry OS with your brand identity using drawable-hdpi and drawable-large-mdpi-v11
8. Don't assume API level > 11 == tablet
9. Don't assume xlarge == tablet, 7' tablet is large
10. Don't use small font sizes
11. Always remember tablets fulfill very different needs, it is not a BIG Phone
