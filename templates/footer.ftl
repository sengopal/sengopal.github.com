<div id="footer">
    <p class="muted credit">&copy; 2014 | Senthilkumar Gopal. The opinions expressed here are my own and do not  reflect the opinions of my employer. The source code for this site is publicly available at <a href="https://github.com/sengopal/sengopal.github.com">github</a></p>
</div>

<!-- Le javascript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/jquery-1.11.1.min.js"></script>
<script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/bootstrap.min.js"></script>
<script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/highlight.min.js"></script>

<script type="text/javascript">
	  $(function() {
	    hljs.tabReplace = '  '; //4 spaces
	    hljs.initHighlighting();
	  });
</script>
