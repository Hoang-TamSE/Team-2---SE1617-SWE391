<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output indent="yes" />
	<xsl:template match="root">

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
					<xsl:choose>

						<xsl:when test="loggedIn != '' ">
							<div align="right">

								You are logged in as
								<a href="authorHome.jsp">
									<xsl:value-of select="loggedIn" />
								</a>

								<a href="LogoutServlet">
									<button class="btn btn-primary">Logout</button>
								</a>

							</div>
						</xsl:when>
						<xsl:otherwise>
							<form action="LoginServlet" class="navbar-form navbar-right"
								method="post">
								<div class="form-group">

									<xsl:if test="loginError != '' ">
										<div id="login-alert" class="alert alert-danger alert-dismissible"
											role="alert">
											<button type="button" class="close" data-dismiss="alert"
												aria-label="Close">
											</button>
											Wrong email or password.
										</div>
									</xsl:if>

									<input type="text" class="form-control" placeholder="email"
										name="email"></input>
									<input type="password" class="form-control" placeholder="password"
										name="password"></input>
								</div>
								<button type="submit" class="btn btn-primary">log in</button>
								<a href="RegisterServlet" class="btn btn-default">register</a>
								<input type="hidden" name="namePage" value="4" />
							</form>
						</xsl:otherwise>
					</xsl:choose>
				</div>
			</div>
		</nav>


	</xsl:template>


</xsl:stylesheet>