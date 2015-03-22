<!DOCTYPE html>
<html lang="en">

<#include "header.ftl">
	<body>
    <div id="wrap">

			<div class="container">
				<#include "menu.ftl">

				<#list posts as post>
			  		<#if (post.status == "published")>
			  			<a href="${post.uri}"><h2><#escape x as x?xml>${post.title}</#escape></h2></a>
			  			<p class="post_date">${post.date?string("dd MMMM yyyy")}</p>
			  			<p>${post.body}</p>
			  			<hr />
			  		</#if>
			  		<#if post_index = 2><#break></#if>
			  	</#list>

			</div>
			<div id="push"></div>
		</div>

		<#include "footer.ftl">

	</body>
</html>
