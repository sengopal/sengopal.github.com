title=Some Java 7 features
date=2011-07-11
tags=java, snippets
slug=some-java-7-features
summary=Code snippets about the Java 7 features
category=Java
author=Senthilkumar Gopal
type=post
status=published
~~~~~~

###Switch Case for Strings

```java
    switch(someString) {
        case "Bubba":
            return bubbaStringResult;
        case "Sue":
            return sueStringResult;
        default:
            return new BrokenSwitchException("Odd String!");
    }
```

###Simple IO Handling – Just a try and catch

```java
    try (FileOutputStream fos = new FileOutputStream(file)) {
        // perform some op using the stated resources
    } catch (AnyExceptionThrownByThatOp aetbto) {
        // handle the exception byfm
    } // Nothing to do. The FileOutputStream will be autoclosed.
```

###Multiple Exceptions in a single catch

```java
    try {
        // perform some op that can throw various exceptions,
        // where some subset of them should be handles "thisway"
    } catch (FirstSimilarException | SecondSimilarException e) {
        // deal with it thisway(e), whatever it is
    } catch (Exception ex) {
        // deal with it thatway(ex)
    }
```

###Underscore in digits to facilitate easier readability

```java
    long creditCard = 5440_4440_3330_0005L;
    long phoneNumber = 213_555_1212L;
```

###Binary Literals are also supported

```java
    int x = 0b1010110;
```
