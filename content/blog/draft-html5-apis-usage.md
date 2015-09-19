title=HTMl5 APIs Usage
date=2015-01-08
tags=web
slug=html5-apis-usage
summary=HTMl5 APIs Usage
category=Web Development
author=Senthilkumar Gopal
type=post
status=draft
~~~~~~

HTML5 Device Access and other APIs

### Fullscreen API
The awesome Fullscreen API allows developers to programmatically launch the browser into fullscreen mode, pending user approval:

```java
// Find the right method, call on correct element
function launchFullScreen(element) {
	if(element.requestFullScreen) {
		element.requestFullScreen();
	} else if(element.mozRequestFullScreen) {
		element.mozRequestFullScreen();
	} else if(element.webkitRequestFullScreen) {
		element.webkitRequestFullScreen();
	}
}

// Launch fullscreen for browsers that support it!
launchFullScreen(document.documentElement); // the whole page
launchFullScreen(document.getElementById("videoElement")); // any individual element
```
	
Any element can be pushed to fullscreen, and there's even a CSS pseudo-class to allow some control over the screen while in fullscreen mode. This API is especially useful for JavaScript game development; especially first person shooters like BananaBread!

### Page Visibility API
The Page Visibility API provides developers an event to listen in on, telling developers when the user focuses on a page's tab, and also when the user moves to another tab or window:

	// Adapted slightly from Sam Dutton
	// Set name of hidden property and visibility change event
	// since some browsers only offer vendor-prefixed support
	var hidden, state, visibilityChange;
	if (typeof document.hidden !== "undefined") {
		hidden = "hidden";
		visibilityChange = "visibilitychange";
		state = "visibilityState";
	} else if (typeof document.mozHidden !== "undefined") {
		hidden = "mozHidden";
		visibilityChange = "mozvisibilitychange";
		state = "mozVisibilityState";
	} else if (typeof document.msHidden !== "undefined") {
		hidden = "msHidden";
		visibilityChange = "msvisibilitychange";
		state = "msVisibilityState";
	} else if (typeof document.webkitHidden !== "undefined") {
		hidden = "webkitHidden";
		visibilityChange = "webkitvisibilitychange";
		state = "webkitVisibilityState";
	}
	
	// Add a listener that constantly changes the title
	document.addEventListener(visibilityChange, function(e) {
		// Start or stop processing depending on state
	}, false);

When used properly, a developer can avoid expensive tasks (like AJAX polling or animating) when the tab isn't in focus.

### getUserMedia API
The getUserMedia API is incredibly interesting; this API provides access to device media, like your MacBook's camera! Using this API, the `<video>` tag, and canvas, you can take beautiful photos within your browser!

	// Put event listeners into place
	window.addEventListener("DOMContentLoaded", function() {
		// Grab elements, create settings, etc.
		var canvas = document.getElementById("canvas"),
		context = canvas.getContext("2d"),
		video = document.getElementById("video"),
		videoObj = { "video": true },
		errBack = function(error) {
			console.log("Video capture error: ", error.code);
		};
	
		// Put video listeners into place
		if(navigator.getUserMedia) { // Standard
			navigator.getUserMedia(videoObj, function(stream) {
			video.src = stream;
			video.play();
			}, errBack);
		} else if(navigator.webkitGetUserMedia) { // WebKit-prefixed
			navigator.webkitGetUserMedia(videoObj, function(stream){
			video.src = window.webkitURL.createObjectURL(stream);
			video.play();
			}, errBack);
		}
	}, false);
	
Look forward to using this API quite a bit in the future -- interactivity within the browser will be the norm a year from now!

### Battery API
The Battery API is obviously a mobile-targeted API providing insight into the device's battery level and status

	// Get the battery!
	var battery = navigator.battery || navigator.webkitBattery || navigator.mozBattery;
	// A few useful battery properties
	console.warn("Battery charging: ", battery.charging); // true
	console.warn("Battery level: ", battery.level); // 0.58
	console.warn("Battery discharging time: ", battery.dischargingTime);
	// Add a few event listeners
	battery.addEventListener("chargingchange", function(e) {
		console.warn("Battery charge change: ", battery.charging);
	}, false);

Knowing battery API and status can signal to the web application not to use battery-intensive processes and the like. Not a groundbreaking API but surely a helpful one.

### Link Prefetching
Link prefetching allows developers to silently preload site contents to project a more fluid, seamless web experience

	<!-- full page -->
	<link rel="prefetch" href="http://davidwalsh.name/css-enhancements-user-experience" />
	
	<!-- just an image -->
	<link rel="prefetch" href="http://davidwalsh.name/wp-content/themes/walshbook3/images/sprite.png" />

### Element.classList
The classList API provides the basic CSS controls our JavaScript libraries have been giving us for years

	// Add a class to an element
	myElement.classList.add("newClass");
	// Remove a class to an element
	myElement.classList.remove("existingClass");
	// Check for existence
	myElement.classList.contains("oneClass");
	// Toggle a class
	myElement.classList.toggle("anotherClass");
	
The epitome of a great API addition: simple and intelligent. 

### ContextMenu API
The new ContextMenu API is excellent: instead of overriding the browser context menu, the new ContextMenu API allows you to simply add items to the browser's context menu

	<section contextmenu="mymenu">
		<menu type="context" id="mymenu">
			<menuitem label="Refresh Post" onclick="window.location.reload();" icon="/images/refresh-icon.png"></menuitem>
			<menu label="Share on..." icon="/images/share_icon.gif">
			<menuitem label="Twitter" icon="/images/twitter_icon.gif" onclick="goTo('//twitter.com/intent/tweet?text=' + document.title + ': ' + window.location.href);"></menuitem>
			<menuitem label="Facebook" icon="/images/facebook_icon16x16.gif" onclick="goTo('//facebook.com/sharer/sharer.php?u=' + window.location.href);"></menuitem>
		</menu>
	</section>
	
Note that it's best to create your menu markup with JavaScript since JS is required to make item actions work, and you wouldn't want the HTML in the page if JS is turned off.

### Element.dataset
The dataset API allows developers to get and set data- attribute values

	/* Assuming element:
	<div id="myDiv" data-name="myDiv" data-id="myId" data-my-custom-key="This is the value"></div>
	*/
	// Get the element
	var element = document.getElementById("myDiv");
	// Get the id
	var id = element.dataset.id;
	// Retrieves "data-my-custom-key"
	var customKey = element.dataset.myCustomKey;
	// Sets the value to something else
	element.dataset.myCustomKey = "Some other value";
	// Element becomes:
	// <div id="myDiv" data-name="myDiv" data-id="myId" data-my-custom-key="Some other value"></div>
	
Not much more to say; just like classList, simple and effective.

### window.postMessage API
The postMessage API, which has even been supported in IE8 for years, allows for message sending between windows and IFRAME elements

	// From window or frame on domain 1, send a message to the iframe which hosts another domain
	var iframeWindow = document.getElementById("iframe").contentWindow;
	iframeWindow.postMessage("Hello from the first window!");
	// From inside the iframe on different host, receive message
	window.addEventListener("message", function(event) {
		// Make sure we trust the sending domain
		if(event.origin == "http://davidwalsh.name") {
			// Log out the message
			console.log(event.data);
			// Send a message back
			event.source.postMessage("Hello back!");
		}
	]);
	
Messages may only be strings, but you could always use JSON.stringify and JSON.parse for more meaningful data!

### autofocus Attribute
The autofocus attribute ensures that a given BUTTON, INPUT, or TEXTAREA element is focused on when the page is ready

	<input autofocus="autofocus" />
	<button autofocus="autofocus">Hi!</button>
	<textarea autofocus="autofocus"></textarea>

Admittedly the autofocus attribute is disorienting for the visually impaired, but on simple search pages, it's the perfect addition.
Browser support for each API differs, so use feature detection before using each API. Take a few moments to read the detailed posts on each feature above -- you'll learn a lot and hopefully get a chance to tinker with each API!



















