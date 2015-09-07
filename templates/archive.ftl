<!DOCTYPE html>
<html lang="en">

<#include "header.ftl">
	<body>
		<div id="wrap">

			<div class="container">
				<#include "menu.ftl">

				<div class="header">
					<h2>Archive</h2>
				</div>

				<ul class="archive">
					<#list published_posts as post>
						<li>
							<span class="arch-date">${post.date?string("dd MMM yyyy")}</span> -
							<a href="${post.uri}"><#escape x as x?xml>${post.title}</#escape></a>
						</li>
					</#list>
				</ul>
				<hr />
			</div>
			<div id="push"></div>
		</div>

		<#include "footer.ftl">

</body>
</html>
