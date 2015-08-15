<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">


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

				<xsl:apply-templates select="root" />
				<div id="breadcrumbs" class="container">
					<ol class="breadcrumb">
						<li>
							<a href="HomeServlet">Home</a>
						</li>
						<li class="active">Article</li>
					</ol>
				</div>
				<xsl:apply-templates select="root/article" />

			</body>
		</html>
	</xsl:template>

	<xsl:include href="nav_template.xsl" />

	<xsl:template match="article">

		<div id="content" class="container">
			<div class="page-header">
				<h1>
					<xsl:value-of select="title" />
				</h1>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<h6 class="metadata">
						<span class="date">
							<xsl:value-of select="publishedDate" />
						</span>
						|
						<a href="AuthorServlet?email={authorEmail}">
							<xsl:value-of select="author" />
						</a>
						|
						<span class="category">
							<xsl:value-of select="category" />
						</span>
					</h6>
				</div>
			</div>
			<hr />
			<div class="article-text">
				<p>
					<xsl:value-of select="text" />
				</p>
			</div>
		</div><!-- #content -->
	</xsl:template>

</xsl:stylesheet>