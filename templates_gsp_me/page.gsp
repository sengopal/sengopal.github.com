<!DOCTYPE html>
<html lang="en">
	<%include "header.gsp"%>
	<body onload="prettyPrint()">
		<div id="wrap">
			<%include "menu.gsp"%>

			<div class="container">
				<div class="page-header">
					<h1>${content.title}</h1>
				</div>

				<p><em>${content.date.format("dd MMMM yyyy")}</em></p>

				<p>${content.body}</p>

				<hr />
			</div>
			<div id="push"></div>
	  </div>

		<%include "footer.gsp"%>

</body>
</html>
