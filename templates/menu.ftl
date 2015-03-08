<!-- Fixed navbar -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>">Senthilkumar Gopal</a>
    </div>
    <div class="navbar-collapse collapse">
      <ul class="nav navbar-nav">
        <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>archive.html">Posts</a></li>
        <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/pages/projects.html">Projects</a></li>
        <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>${config.feed_file}">Subscribe</a></li>
        <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/pages/reviews.html">Reviews</a></li>
        <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>/pages/resume.html">Resume</a></li>
        <li><a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>pages/about.html">About Me</a></li>

        <li><a href="">Github</a></li>
        <li><a href="">Twitter</a></li>
        <li><a href="">LinkedIn</a></li>

      </ul>
    </div><!--/.nav-collapse -->
  </div>
</div>
