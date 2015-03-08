<!DOCTYPE html>
<html lang="en">
	<%include "header.gsp"%>
	<body onload="prettyPrint()">
		<div id="wrap">
			<%include "menu.gsp"%>

			<div class="container">
				<div class="page-header">
					<h1>Blog Archive</h1>
				</div>

				<%def last_month=null;%>
				<%published_posts.each {post ->%>
					<%if (last_month) {%>
						<%if (post.date.format("MMMM yyyy") != last_month) {%>
							</ul>
							<h4>${post.date.format("MMMM yyyy")}</h4>
							<ul>
						<%}%>
					<% } else { %>
						<h4>${post.date.format("MMMM yyyy")}</h4>
						<ul>
					<% }%>

						<li>${post.date.format("dd")} - <a href="${post.uri}">${post.title}</a></li>
						<%last_month = post.date.format("MMMM yyyy")%>

				<%}%>
				</ul>

	  </div>

		<%include "footer.gsp"%>

<!-- Placed at the end of the document so the pages load faster -->
<script src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>js/jquery-1.11.1.min.js"></script>
<script src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>js/bootstrap.min.js"></script>
<script src="<%if (content.rootpath) {%>${content.rootpath}<% } else { %><% }%>js/prettify.js"></script>

</body>
</html>
