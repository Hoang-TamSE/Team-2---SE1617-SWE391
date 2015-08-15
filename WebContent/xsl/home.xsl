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
					</ol>
				</div>

				<div id="content" class="container">

					<div id="articles" class="row">
						<xsl:for-each select="root/articles/article">

							<div class="article col-md-6">
								<h3>
									<xsl:value-of select="title" />
								</h3>
								<p class="metadata small">
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
								</p>
								<p>
									<xsl:value-of select="shortText" />
								</p>
								<a href="ArticleServlet?id={@id}">read more</a>
								<hr />
							</div>
						</xsl:for-each>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:include href="nav_template.xsl"/>
</xsl:stylesheet>