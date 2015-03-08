<div id="footer">
  <div class="container">
    <p class="muted credit">&copy; 2014 | The opinions expressed here are my own and do not necessarily reflect the opinions of my employer. The source code for this site is publicly available at <a href="https://github.com/sengopal/sengopal.github.com">github</a>.</p>
  </div>
</div>

<!-- Placed at the end of the document so the pages load faster -->
<script src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>js/jquery-1.11.1.min.js"></script>
<script src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>js/bootstrap.min.js"></script>
<script src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>js/highlight.min.js"></script>

<script>
		$(function() {
			hljs.tabReplace = "  ";
			hljs.initHighlighting();
		});
 </script>
