<!DOCTYPE html>
<html lang="en">

<#include "header.ftl">
	<body>
    <div id="wrap">
		<div class="container">
			<#include "menu.ftl">

			<#list posts as post>
		  		<#if (post.status == "published")>
		  			<h2 class="list-title">
              <#if (post.external?? == true)>
                <a href="${post.link}" target="_blank">
                  <#escape x as x?xml>${post.title}</#escape>
                </a>
              <#else>
                <a href="${post.uri}">
                  <#escape x as x?xml>${post.title}</#escape>
                </a>
              </#if>
            </h2>
		  			<em>${post.date?string("dd MMMM yyyy")}</em>
		  			<p class="summary">${post.summary}</p>
			  		<#if post_index = 6>
			  			<#break>
			  		</#if>
		  		</#if>
		  	</#list>
			<div id="push">
				<p>Older articles can be found in the
					<a href="<#if (content.rootpath)??>${content.rootpath}<#else></#if>archive.html">Archives</a>
				</p>
			</div>
			<div id="push"></div>
		</div>
	</div>
	<#include "footer.ftl">
	</body>
</html>
