title=Simple eBay Search using Backbone
date=2012-05-20
tags=javascript, backbone
slug=simple-ebay-search-using-backbone
summary=Setting up eBay Search using Backbone
category=Javascript
author=Senthilkumar Gopal
type=post
status=draft
~~~~~~

After going through some of the tutorials available, backbone seems to be a good bet for a client intensive application. So as a weekend project trying to build a working application using the eBay FindingAPI.

The use cases are simple enough:

1. search for an item
2. save the item in your list
3. See a live timer of each item counting down

Technologies used

1. Twitter bootstrap - to build a quick UI
2. Backbone.js - for interaction and the main purpose of this excercise
3. mustache.js - For easier templating

Project code can be found [here](https://github.com/sengopal/ebay-search "ebay-search")

Some of the tasks completed are:
* Defining the model
* Every Item result will display

1. Item Title
2. Price
3. Time to finish
4. Shipping type

Item can be added to or removed from my watch list - To be made a drag and drop later.
