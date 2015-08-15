<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/register">

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
						</div>
					</div>
				</nav>
				<div id="breadcrumbs" class="container">
					<ol class="breadcrumb">
						<li>
							<a href="HomeServlet">Home</a>
						</li>
						<li class="active">Register</li>
					</ol>
				</div>
				<div id="content" class="container">

					<div class="page-header">
						<h1>Register</h1>
					</div>
					<form class="form row" method="post">
						<div class="col-sm-6">
							<div class="form-group">
								<xsl:if test="emailError != '' ">
									<div id="login-alert" class="alert alert-danger alert-dismissible"
										role="alert">
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
										</button>
										<xsl:value-of select="emailError" />
									</div>
								</xsl:if>
								<label for="email" class="control-label">Email</label>
								<input type="email" value="{email}" class="form-control"
									id="input-email" name="email"></input>
							</div>
							<div class="form-group">
								<xsl:if test="passwordError != '' ">
									<div id="login-alert" class="alert alert-danger alert-dismissible"
										role="alert">
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
										</button>
										<xsl:value-of select="passwordError" />
									</div>
								</xsl:if>
								<label for="password" class="control-label">Password</label>
								<input type="password" class="form-control" id="input-password"
									name="password"></input>
							</div>
							<div class="form-group">
								<xsl:if test="nameError != '' ">
									<div id="login-alert" class="alert alert-danger alert-dismissible"
										role="alert">
										<button type="button" class="close" data-dismiss="alert"
											aria-label="Close">
										</button>
										<xsl:value-of select="nameError" />
									</div>
								</xsl:if>
								<label for="name" class="control-label">Name</label>
								<input type="text" class="form-control" value="{name}" id="input-name"
									name="name"></input>
							</div>
							<div class="form-group">
								<button type="submit" class="btn btn-primary">Register</button>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label for="dateofbirth" class="control-label">Date of Birth</label>
								<input type="date" class="form-control" value="{dOB}"
									id="input-dateofbirth" name="dOB"></input>
							</div>
							<div class="form-group">
								<label for="biography" class="control-label">Biography</label>
								<textarea class="form-control" value="{biography}" id="input-biography"
									name="biography" rows="6"></textarea>
							</div>
						</div>
					</form>
				</div>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="loggedIn" />
	<xsl:template match="loggedInName" />
</xsl:stylesheet>