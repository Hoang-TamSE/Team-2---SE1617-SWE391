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
						<li class="active">Author</li>
					</ol>
				</div>

				<xsl:apply-templates select="root/author" />

			</body>
		</html>
	</xsl:template>

	<xsl:include href="nav_template.xsl" />

	<xsl:template match="author">

		<div id="content" class="container">
			<div class="page-header">
				<h1>
					<xsl:value-of select="name" />
				</h1>
			</div>
			<p class="author-dateofbirth">
				<strong>Date of Birth: </strong>
				<xsl:value-of select="dob" />
			</p>
			<hr />
			<div class="author-text">
				<p>
					<xsl:value-of select="biography" />
				</p>
			</div>
		</div><!-- #content -->
	</xsl:template>

</xsl:stylesheet>