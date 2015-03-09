<!DOCTYPE html>
<html lang="en">

<#include "header.ftl">
	<body>
		<div id="wrap">

			<div class="container">
				<#include "menu.ftl">

				<div class="header">
					<h1>Archive</h1>
				</div>

				<ul>
					<#list published_posts as post>
						<li>
							<span class="arch-date">${post.date?string("dd MMM yyyy")}</span> -
							<a href="${post.uri}"><#escape x as x?xml>${post.title}</#escape></a>
						</li>
					</#list>
				</ul>

				<hr />

				<p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>

			</div>
			<div id="push"></div>
		</div>

		<#include "footer.ftl">

</body>
</html>