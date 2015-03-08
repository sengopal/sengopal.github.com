<!DOCTYPE html>
<html lang="en">
	<%include "header.gsp"%>
	<body onload="prettyPrint()">
		<div id="wrap">
			<%include "menu.gsp"%>

			<div class="container">
				<div class="page-header">
					<h1>Senthilkumar Gopal</h1>
				</div>

				<% published_posts.each { post ->%>
					<a href="${post.uri}"><h1>${post.title}</h1></a>
					<p>${post.date.format("dd MMMM yyyy")}</p>
					<p>${post.body}</p>
			  <% } %>

				<hr />
			</div>
			<div id="push"></div>
	  </div>

		<%include "footer.gsp"%>

</body>
</html>
