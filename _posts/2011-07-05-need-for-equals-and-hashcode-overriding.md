---
layout: post
title: Need for equals and hashCode overriding
tags:
- java
status: publish
type: post
published: true
meta:
  jabber_published: '1309877389'
  _wpas_done_twitter: '1'
---
<p>Original article found <a href="http://vanillajava.blogspot.com/2011/06/bugs-dont-use-co-variant-equals-and.html">here</a></p>  <h4>Overview</h4> When it comes to comparing objects it is tempting to write in class A; equals(A) or compareTo(A). However these methods may not be called the way you expect if they don't overridden the default equals(Object) or compareTo(Object)  <h4>Don't implement equals(Class)</h4> From Area  <pre>public boolean equals(Area area) {
}</pre>
The problem is that many methods expect to call equals(Object) and won't call this method.

<pre>Area a = new Area();
Object o = a;
Area a2 = (Area) a.clone();
System.out.println(&quot;a.equals(o) is &quot;+a.equals(o));
System.out.println(&quot;a2.equals(o) is &quot;+a2.equals(o));
System.out.println(&quot;a2.equals(a) is &quot;+a2.equals(a));

List areas = new ArrayList();
areas.add(a);
System.out.println(&quot;areas.contains(a) is &quot;+areas.contains(a));
System.out.println(&quot;areas.contains(a2) is &quot;+areas.contains(a2));</pre>
prints

<pre>a.equals(o) is true
a2.equals(o) is false
a2.equals(a) is true
areas.contains(a) is true
areas.contains(a2) is false</pre>

<h4>Don't use compareTo for other purposes</h4>

<p>In most cases, compareTo is used for Comparable, however it is confusing when this method is used differently.
  <br />from SnmpIndex</p>

<pre style="width:702px;height:87px;">// @return the value 0 if the two OID vectors have the same elements, another value otherwise
public int compateTo(SnmpIndex index) {</pre>

<p>This method has more in common with an equals method as it doesn't define a greater than or less than relationship.
  <br />The class already has an equals() method do I would suggest removing this method or making it comply with the Comparable standard. It doesn't appear to be used anywhere in the JDK so it is possible its not used anywhere as the class is not Comparable.</p>

<h4>Conclusion</h4>
Always implement equals(Object) and compareTo(Object) or compareTo(C) if using generics. Otherwise, it may not be clear when your method is called.
