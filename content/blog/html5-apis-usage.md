title=HTML5 APIs Usage
date=2015-01-08
tags=web
slug=html5-apis-usage
summary=Recently came across a few HTML5 apis which attempt to bring native capabilities to the Web. We have all started using Hangouts on web, but the following is a list of other capabilities that are available as part of HTML5.
category=Web Development
author=Senthilkumar Gopal
type=post
status=published
~~~~~~

Recently came across a few HTML5 apis which attempt to bring native capabilities to the Web. We have all started using Hangouts on web, but the following is a list of other capabilities that are available as part of HTML5. These APIs are available as part of modern browsers and as a good developer, it is always recommended to perform feature detection before using each API.

### Fullscreen API
The awesome Fullscreen API allows developers to programmatically launch the browser into fullscreen mode. All video sites use this by default now.

```javascript
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

Any element can be pushed to fullscreen, and there's even a CSS pseudo-class `:fullscreen' to allow some control over the screen while in fullscreen mode.

### Page Visibility API
The Page Visibility API provides developers an event to listen in on, telling developers when the user focuses on a page's tab, and also when the user moves to another tab or window:

```javascript
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
```

This can be used to a great extent to save bandwidth, especially on mobile web browsing to save bandwidth when the tab is not focused.

### getUserMedia API
The getUserMedia API is incredibly interesting; this API provides access to device media, like your camera. Using this API, the `<video>` tag, and canvas, you can take beautiful photos from within your web browser. This opens capabilities on all devices to be used by your web applications.

```javascript
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
```

### Battery API
The Battery API is obviously a mobile-targeted API providing insight into the device's battery level and status.

```javascript
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
```

Knowing battery API and status can signal to the web application not to use battery-intensive processes.

### Link Prefetching
Link prefetching allows developers to silently preload site contents to project a more fluid, seamless web experience

```html
	<!-- full page -->
	<link rel="prefetch" href="http://davidwalsh.name/css-enhancements-user-experience" />
	<!-- just an image -->
	<link rel="prefetch" href="http://davidwalsh.name/wp-content/themes/walshbook3/images/sprite.png" />
```

### Element.classList
This is one of the most sought APIs by JS developers for simplifying plugin and other JS development.

```javascript
	// Add a class to an element
	myElement.classList.add("newClass");
	// Remove a class to an element
	myElement.classList.remove("existingClass");
	// Check for existence
	myElement.classList.contains("oneClass");
	// Toggle a class
	myElement.classList.toggle("anotherClass");
```

### ContextMenu API
The new ContextMenu API opens the web pages context menu and instead of overriding the browser context menu, the new ContextMenu API allows the developers to simply add items to the browser's context menu.

```html
	<section contextmenu="mymenu">
		<menu type="context" id="mymenu">
			<menuitem label="Refresh Post" onclick="window.location.reload();" icon="/images/refresh-icon.png"></menuitem>
			<menu label="Share on..." icon="/images/share_icon.gif">
			<menuitem label="Twitter" icon="/images/twitter_icon.gif" onclick="goTo('//twitter.com/intent/tweet?text=' + document.title + ': ' + window.location.href);"></menuitem>
			<menuitem label="Facebook" icon="/images/facebook_icon16x16.gif" onclick="goTo('//facebook.com/sharer/sharer.php?u=' + window.location.href);"></menuitem>
		</menu>
	</section>
```

### Element.dataset
The dataset API allows developers to get and set data- attribute values

```html
	/* Assuming the html has the following element
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
```

### window.postMessage API
For web applications, whic acts as gateway and providers, this is a most sought after API. The postMessage API allows for messaging between windows and IFRAME elements.

```javascript
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
```

Though the sessages can be strings only. JSON.stringify and JSON.parse can be used for more extensive messaging structure.

### autofocus Attribute
The autofocus attribute ensures that a given BUTTON, INPUT, or TEXTAREA element is focused on when the page is ready

```html
	<input autofocus="autofocus" />
	<button autofocus="autofocus">Hi!</button>
	<textarea autofocus="autofocus"></textarea>
```















