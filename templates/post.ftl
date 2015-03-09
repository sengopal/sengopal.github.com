<!DOCTYPE html>
<html lang="en">

<#include "header.ftl">
	<body onload="prettyPrint()">
    <div id="wrap">

			<div class="container">
				<#include "menu.ftl">
				<div class="page-header">
					<h1><#escape x as x?xml>${content.title}</#escape></h1>
				</div>

				<p><em>${content.date?string("dd MMMM yyyy")}</em></p>

				<p>${content.body}</p>

				<hr />

				<p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>

			</div>
			<div id="push"></div>
		</div>

		<#include "footer.ftl">

	</body>
</html>
