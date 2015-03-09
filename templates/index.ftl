<!DOCTYPE html>
<html lang="en">

<#include "header.ftl">
	<body>
    <div id="wrap">

			<div class="container">
				<#include "menu.ftl">

				<#list posts as post>
			  		<#if (post.status == "published")>
			  			<a href="${post.uri}"><h1><#escape x as x?xml>${post.title}</#escape></h1></a>
			  			<p>${post.date?string("dd MMMM yyyy")}</p>
			  			<p>${post.summary}</p>
			  		</#if>
			  	</#list>

				<hr />

				<p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>

			</div>
			<div id="push"></div>
		</div>

		<#include "footer.ftl">

	</body>
</html>
