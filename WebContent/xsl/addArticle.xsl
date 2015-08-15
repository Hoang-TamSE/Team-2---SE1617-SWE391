<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/root">

		<html>
			<head>
				<title>News</title>
				<!-- Latest compiled and minified CSS -->
				<!-- <link rel="stylesheet" -->
				<!-- href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> -->

				<!-- Bootstrap + theme -->
				<link rel="stylesheet" href="https://bootswatch.com/paper/bootstrap.min.css"></link>
				<link rel="stylesheet" href="css/styles.css"></link>
			</head>
			<body>
				<nav class="navbar navbar-default navbar-static-top">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse" data-target="#navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="HomeServlet">News</a>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="navbar-collapse">
							<!-- <ul class="nav navbar-nav"> -->
							<!-- <li class="active"><a href="home.jsp">Home</a></li> -->
							<!-- </ul> -->
							<xsl:if test="loggedIn != '' ">
								<div align="right">

									<a href="AddArticleServlet">
										<button class="btn btn-primary">Create Article</button>
									</a>

									<a href="LogoutServlet">
										<button class="btn btn-primary">Logout</button>
									</a>

									You are logged in as
									<a href="authorHome.jsp">
										<xsl:value-of select="loggedIn" />
									</a>

								</div>
							</xsl:if>
						</div>
					</div>
				</nav>
				<div id="breadcrumbs" class="container">
					<ol class="breadcrumb">
						<li>
							<a href="HomeServlet">Home</a>
						</li>
						<li>
							<a href="authorHome.jsp">Profile</a>
						</li>
						<li class="active">Post article</li>
					</ol>
				</div>
				<div id="content" class="container">





					<div class="page-header">
						<h1>Post Article</h1>
					</div>
					<form class="form row" action="AddArticleServlet" method="post">
						<div class="col-sm-8">
							<div class="form-group">
								<label for="title" class="control-label">Title</label>
								<input type="text" class="form-control" id="input-title"
									name="title"></input>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="form-group">
								<label for="category" class="control-label">Category</label>
								<input type="text" class="form-control" id="input-category"
									name="category"></input>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="shortext" class="control-label">Summary</label>
								<textarea class="form-control" id="input-text" name="shortText"
									rows="5"></textarea>
							</div>
						</div>
						<div class="col-sm-12">
							<div class="form-group">
								<label for="text" class="control-label">Text</label>
								<div class="checkbox">
									<label>
										<input type="checkbox" name="generateText" />
										Fill with dummy text
									</label>
								</div>
								<textarea class="form-control" id="input-text" name="text"
									rows="10"></textarea>
								<div class="checkbox">
									<label>
										<input type="checkbox" name="publicallyVisible" checked="checked" />
										Make publically visible
									</label>
								</div>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary">Post</button>
							</div>
						</div>
					</form>


				</div><!-- #content -->
				<!-- jQuery -->
				<script
					src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

				<!-- Latest compiled and minified JavaScript -->
				<script
					src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="loggedIn" />
	<xsl:template match="loggedInName" />
</xsl:stylesheet>