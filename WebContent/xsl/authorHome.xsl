<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/root">
		
		
<html>
<head>	
<title>News</title>
<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> -->

<!-- Bootstrap + theme -->
<link rel="stylesheet"
	href="https://bootswatch.com/paper/bootstrap.min.css"></link>
<link rel="stylesheet" href="css/styles.css"></link>
</head>
<body>
	<nav class="navbar navbar-default navbar-static-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="HomeServlet">News</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-collapse">
<!-- 			<ul class="nav navbar-nav"> -->
<!-- 				<li class="active"><a href="home.jsp">Home</a></li> -->
<!-- 			</ul> -->
			<xsl:if test="loggedIn != '' ">
					<div align="right">
					
					<a href="AddArticleServlet">
					<button class="btn btn-primary">Create Article</button></a>
					
					<a href="LogoutServlet">
					<button class="btn btn-primary">Logout</button></a>
					
					You are logged in as 
					<a href="authorHome.jsp"><xsl:value-of select="loggedIn" /></a>
					
					</div>
			</xsl:if>
		</div>
	</div>
	</nav>
	<div id="breadcrumbs" class="container">
		<ol class="breadcrumb">
			<li><a href="HomeServlet">Home</a></li>
			<li class="active">Author</li>
		</ol>
	</div>	
	<div align="Center">
		<h1><xsl:value-of select="loggedInName"/>'s Profile</h1>
	</div>
	
	<div id="content" class="container">		
				
	<div id="articles" class="row">
	<xsl:for-each select="articles/article" >			
	<div class="article col-md-6">
		<h3>
			<xsl:value-of select="title"/>
		</h3>
		<p class="metadata small">
			<span class="date"><xsl:value-of select="publishedDate"/></span> | 
			 <a href="AuthorServlet?email={authorEmail}"><xsl:value-of select="author"/></a> | 
			 <span class="category"><xsl:value-of select="category"/></span>
		</p>
		<p><xsl:value-of select="shortText"/></p>
		<a href="ArticleServlet?id={@id}">read more</a> |
		<a href="DeleteArticleServlet?id={@id}">delete</a>
		
		<hr />
	</div>
	</xsl:for-each>
</div>
</div>
</body>
	</html>
	</xsl:template>	
		

</xsl:stylesheet>