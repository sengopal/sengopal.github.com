Title: Google Developer Fest 2011 - My Scribblings
Date: 2011-10-23 15:00
Tags: conference, nontech
Slug: google-dev-fest-part-1
Summary: Notes about the happenings in Google developer fest 2011 Part 1
Category: Ramblings
Author: Senthil Gopal

###Keynote
After a feisty travel from Chennai to Bangalore, i reached the Lalit Ashok without  any incidents. The Google folks used the QR code from our confirmation mails to record  our attendance - Cool! Then we had a huge queue for getting our name tags which are  pre-generated and unfortunately was clubbed together in alphabetical order. A little  fiasco ensued, but alls well that ends well, I got my name tag and found a great seat  right in front of the lectern.

Due to the above mentioned fiascos, the keynote started a little late and was given  by Rajdeep and the main theme of the day is about Android 3.x. Then we had Boris  explaining us with a cool presentation made of HTML5 in appspot about Bleeding edge  HTML5  which deals with the Sound API, PrePageRender etc.,


###Itenary
The intenary is available [here](http://www.slideshare.net/senthil777/google-dev-fest-2011-itenary "itenary in slideshare")

###Android market place
Then we had Tony explaining us about the growth of Android market which is 49%  global based on device activations which amounts to nearly 50k activations per day. This year displays about 3x increase in US and 14x increase in Rest of the World. The app  Installations per device shows Honeycomb as the top leader which encourages development  in Tablets.


Some salient but little known facts about the Android market that it has Checkout  Merchants in 29 countries, access to download error reports. This is given without any  stringent review process. In terms of application licensing, it can be modeled to  ensure that only licensed users can utilize the application. The android market gives  full control on how our app enforces its licensing policies.


Some things to watch out for while developing an android market application is that  our application  code is obfuscated, no reuse of any sample code, License  Validation Library is changed and most importantly to offload license response  validation to a trust server. This methodology works only if the application is  designed to have the content on the server which is picked up from the web and pushed  into the android phone.


There are also provisions for In-App billing, to sell digital content [No  physical content as there will be a TOS conflict]. In case of payment related  functionalities some of the gotchas are that the API Level should be 4+, release  signing key should be used for development, some Google Checkout API's are disabled  [Cancel and Refund] which need to be done from the merchant console. Also, the Google  Checkout API callback URL will not work and    Order notifications need  to be confirmed once they arrive, since the android market consumes the checkout.


Some of the features that are available for an application developer are Carrier  Billing, Monthly sales reporting, Detailed transaction records, App Purchases and  in-App payments. The developers can also access application statistics such as Active  Installation Trend, Distribution by Android Version and   Distribution by  device.


Some of the recent features that have been enabled for the application developers  are Multiple APK support, App being available as ONE product listing,  User  Ratings, aggregated comments and billing. The marketplace also filters the unsupported  devices, show all supported devices for published or draft apps. The marketplace also  has been revamped to display New Localized listings which has sections for Top and New  applications falling under categories like Free, Paid, Grossing, Trending. They are  also displaying recommendations such as - who viewed this also viewed and who installed  this also installed. The application developers can also earn badges which can boost  their growth in the android market such as Top Developer, Editor's choice.  There  are also talks about large application support with 500MB app package and 2GB of  archives. Some professional tips to market the application better are to update users  with the new version information and recent changes,  update listing details with  information about the L10N translations, provide good graphics for the application,  create a short video, set filters in app manifest about details of non - compatible  devices, update the description about needed permissions and most importantly price the  application correctly after comparing similar apps and monitor user comments and error  reports.


###Android ADK and fragment Accessory overview

Fragments are reusable UI, app functionality components within an Activity which has  its Own lifecycle, back stack and its lifecycle is affected by the host Activity's  lifecycle. It is considered as the investment for the future and used for easier  reusability and supporting multiple devices. A fragment can be attached to a ViewGroup in the Activity view through `<fragment>` by XML or programmatically. In a   Fragment Lifecycle the activity state is tightly similar to fragment callback. Similar to a view, a fragment can declared in XML for UI Components and used programmatically for backend purposes.

#####How to add a fragment by programmatically
1. FragmentManager
    * findById - to find the ones available from XML
    * findByTag - to find the ones created by the Program as they don't have  an ID
2. FragmentTransaction
    * add/replace/remove/show/hide fragments as an atomic unit
3. Manages the fragment backstack
    * A transaction is needed to define the rollback for the BACK button - stacked approach  for rollback
4. Fragment Vs <include/>
    * `<include>` has no functionality reuse, but another <include/> can be used within it, But fragments cannot be nested in layouts.
5. Fragment Vs Activity
    * UI is mandatory in Activity while a fragment cannot be standalone and all Intents  interact with Activity only. Communications is possible between fragment-to-fragment by  means of Implementing an interface and through fragment manager which makes it  difficult to reuse. Its always better to perform a Fragment - Activity - Fragment  Communication where using interfaces.,  Frag 1 with interA, Frag 2 with interB and  Activity can implement both the interfaces.

###Open Accessory and ADK
The talk opened with USB Basics which describes about the Host which controls the  entire bus, tracks all the devices, initiates communications and provides power. The  Devices communicate with host through the endpoint and describe its capabilities to the  host during enumeration. Then the discussion went on to describe the various  descriptors such as:


#####USB descriptors
Device Descriptors which maps to UsbDevice of the API and provides the VendorId,  Prod ID, Device Calls, sub class and Protocol IDs, Manufacturer, Prod and serial no.  Strings.


#####Configuration Descriptor
which provides the Configuration Number, List of  interfaces, Max power usage and maps to UsbDevice of the API. Android devices have only  one configuration descriptor.

#####Interface Descriptor
provides details about specific function implemented on the device  which also includes the Android interfaces, USB mass storage and Maps to USBInterface  API.

#####Endpoint Descriptor
describes about the channels used for sending/receiving data,  Address, Type, Direction, Max Packet Size and maps to the UsbEndpoint of the API.


###What is an Open Accessory
A simple USB host Device that can communicate to an Android Device which can supply  500 mA @5V, follows the simple "Android Accessory Protocol" and has bi-directional  communication. The ADK - Accessory Development Kit which is based on Arduino Mega 2560  is used to provide this functionality. The Handshake between the two devices are  performed in this order. Send "Get Protocol" and Send Manufacturer, model, description  to identify the accessory to the Android device and Send "Start" Command. Then the  Android Device should re-enumerate in accessory mode and launch an app . The device is  in Accessory mode if the Vendor ID is 0x18D1 and Prd ID is 0x2D00 or 0x2D01. After a  handshake the USB manager tries to match accessory to compatible applications and asks  the user consent. The  Android 3.1+ APIs [com.android.hardware.hub.*] can  act in both Host and Accessory mode. A cool Gyroscope demo was performed to describe  how to control a servo motor. The demokit.pde gives the value of the gyroscope and the  same degree is given into the servo motor which stabilizes the gyroscope and this is  based on a Closed loop FB system.

###Cloud Technology
Alfred Fuller gave a wonderful talk on Cloud Technology and how we can develop on  the Cloud and the various tools and services available such as SDKs, Memcache, mail,  XMPP, Task Queue, Images, Blobstore etc., Some of the new technologies on the horizon  for cloud development are:


**Google Storage** which offers storage for files of any format, any amount, any time  with great APIs to access them. The use cases for this technology are unbounded such as  serving static content, backup, sharing,  App Engine, android, computation  storage, BigQuery, Prediction API with the sharing done either in private, public or  shared modes. The benefits are inherently known such as High performance, scalability, strong security and privacy.


**Google Storage** offers REST API for accessing the files and access controls for Google Accounts. The means of authentication are either key based or entity based where  the files can be authenticate downloads, shared with individuals, group shared with  Google groups and also access controls for buckets and objects. Some of the other tools  that are provided are GSutil, GS manager, Google BigQuery and Prediction API and the pricing stays free for 5GB this year end.


**The Prediction API** provides results based on "learned" patterns. It finds relevant  features in the sample data during training and later uses these features during  prediction. The usability of this API can be in endless number of applications such as  usage in eBay to display "items you would like". Using the API involves uploading the  data[CSV files], Train[using POST to the REST API (async)] and  getting the predictions which can give multiple possibilities as well


The capabilities of this API ranges from handling numeric or unstructured text with  hundreds of discrete categories. Some of the recent features are multi-category  prediction, continuous output, mixed inputs. Google Prediction API also displays a  gallery of pre-trained prediction models and the ability to add new training data on  the fly.


**Big Query** offers the ability to perform large data adhoc analysis with SQL like  language. The usage varies with a variety of use cases such as spam, web dashboard  etc., This has the ability to process  billions of rows in seconds using SQL like  queries. The activities involve uploading the  data, importing into  BigQuery[even from spreadsheets] and querying the BigQuery using the SQL like  syntax along with a slew of SQL functions via REST such as tables/tablename or  query/q=.


The security and privacy aspects are controlled using client login, OAuth, HTTPS  Support. The last part of this talk discussed about the App Engine IDENTITY API which  seeks to cryptographically secure authentication. The API exposes operations such as  app_identity.sign_blob and app_identity.get_public_certificate.  The interactions goes like App A call the Identity  API to sign blob, then sends the string blob along with signature to App B. App A  publishes all public certificates and App B pulls the public certificates to recover  the signed Blob. Google uses the same type of API for Application sharing between Google Docs, Google Calendar.
