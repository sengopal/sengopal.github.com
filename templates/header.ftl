<head>
  <meta charset="utf-8"/>
  <title><#if (content.title)??><#escape x as x?xml>${content.title}</#escape><#else>Senthilkumar Gopal</#if></title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Thoughts, Code, ramblings and notes">
  <meta name="author" content="Senthilkumar Gopal">
  <meta name="keywords" content="Senthilkumar, gopal, blog, java">
  <meta name="generator" content="blog posts using github and jbake">

  <!-- Le styles -->
  <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/base.css" rel="stylesheet">
  <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/highlight.min.css" rel="stylesheet">
  <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/screen.css" rel="stylesheet">
  <link href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>css/font-awesome.min.css" rel="stylesheet">

  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
    <script src="<#if (content.rootpath)??>${content.rootpath}<#else></#if>js/html5shiv.min.js"></script>
  <![endif]-->

  <!-- Fav and touch icons -->
  <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">-->
  <link rel="shortcut icon" href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>favicon.ico">
</head>
