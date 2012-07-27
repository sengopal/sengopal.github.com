#Markdown Cheatsheet in markdown


##Phrase Emphasis

*italic*   **bold**
_italic_   __bold__

##Links

* Inline:

[example](http://www.google.com/ "Google")

``` [example](http://www.google.com/ "Google") ```

* Reference-style labels (titles are optional):

An [example][id]. 

``` [example][id] ```
```   [id]: http://example.com/  "Title"  ```

##Images

* Inline (titles are optional):

![alt text](http://www.searchenginepeople.com/wp-content/uploads/2011/12/markdown-icon.png "Title")

``` ![alt text](http://www.searchenginepeople.com/wp-content/uploads/2011/12/markdown-icon.png "Title") ```

* Reference-style:

![alt text][id] 

[id]: http://www.searchenginepeople.com/wp-content/uploads/2011/12/markdown-icon.png "Title"

``` ![alt text][id]  ```

```    [id]: http://www.searchenginepeople.com/wp-content/uploads/2011/12/markdown-icon.png "Title"  ```

##Headers

* Setext-style:

###Header 1
#####Header 2

``` ###Header 1 ```


``` ##Header 2  ```

##Lists

Ordered, without paragraphs:

1.  Foo
2.  Bar

Unordered, with paragraphs:

*   A list item.

    With multiple paragraphs.

*   Bar

You can nest them:

*   Abacus
    * ass
*   Bastard
    1.  bitch
    2.  bupkis
        * BELITTLER
    3. burper
*   Cunning

##Blockquotes

> Email-style angle brackets
> are used for blockquotes.
> > And, they can be nested.
> >
> * You can quote a list.
> * Etc.

##Code Spans

`<code>` spans are delimited by backticks.

You can include literal backticks
like `` `this` ``.

##Preformatted Code Blocks

Indent every line of a code block by at least 4 spaces or 1 tab, and use a colon at the end of the preceding paragraph.

This is a normal paragraph:

    This is a preformatted
    code block.

Preceded by a space, the colon disappears :

    This is a preformatted
    code block.

##Horizontal Rules

Three or more dashes or asterisks:

---

* * *

- - - -

##Manual Line Breaks

End a line with two or more spaces

Roses are red,  
Violets are blue.

