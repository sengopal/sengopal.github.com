---
layout: post
title: Some Java 7 features
tags:
- java
status: publish
type: post
published: true
meta:
  jabber_published: '1310380631'
  _wpas_done_twitter: '1'
---
<ul>   </ul><ul>     <li>       <h4>Switch Case for Strings</h4>     </li>   </ul>   <pre> switch(someString) {
        case &quot;Bubba&quot;: return bubbaStringResult;
        case &quot;Sue&quot;: return sueStringResult;
        default: return new BrokenSwitchException(&quot;Odd String!&quot;);
    }</pre>

<h4>&#160;</h4>

<ul>
  <li>
    <h4>Simple IO Handling – Just a try and catch</h4>
  </li>
</ul>

<pre> try (FileOutputStream fos = new FileOutputStream(file)) {
        // perform some op using the stated resources
    } catch (AnyExceptionThrownByThatOp aetbto) {
        // handle the exception byfm
    } // Nothing to do. The FileOutputStream will be autoclosed.</pre>

<p>&#160;</p>

<ul>
  <li>
    <h4>Multiple Exceptions in a single catch</h4>
  </li>
</ul>

<pre>  try {
        // perform some op that can throw various exceptions,
        // where some subset of them should be handles &quot;thisway&quot;
    } catch (FirstSimilarException | SecondSimilarException e) {
        // deal with it thisway(e), whatever it is
    } catch (Exception ex) {
        // deal with it thatway(ex)
    }</pre>

<p>&#160;</p>

<ul>
  <li>
    <h4>Underscore in digits to facilitate easier readability</h4>
  </li>
</ul>

<pre>  long creditCard = 5440_4440_3330_0005L;
    long phoneNumber = 213_555_1212L;</pre>

<p>&#160;</p>

<ul>
  <li>
    <h4>Binary Literals are also supported</h4>
  </li>
</ul>

<pre>    int x = 0b1010110;</pre>

<p>&#160;</p>

<p>Original article found <a href="http://www.intermediatejava.com/2011/07/you-can-get-with-this-or-you-can-get-with-that/">here</a></p>
