<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>News</title>
<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" -->
<!-- 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> -->

<!-- Bootstrap + theme -->
<link rel="stylesheet"
	href="https://bootswatch.com/paper/bootstrap.min.css">
<link rel="stylesheet" href="css/styles.css">
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
			<a class="navbar-brand" href="home.jsp">News</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<form action="home.jsp" class="navbar-form navbar-right">
				<button type="submit" class="btn btn-primary">log out</button>
			</form>
<!-- 			<ul class="nav navbar-nav"> -->
<!-- 				<li><a href="home.jsp">Home</a></li> -->
<!-- 			</ul> -->
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="addArticle.jsp">Post Article</a></li>
				<li><a href="author.jsp">Christian Neurohr</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div id="breadcrumbs" class="container">
		<ol class="breadcrumb">
			<li><a href="home.jsp">Home</a></li>
			<li class="active">Register</li>
		</ol>
	</div>
	<div id="content" class="container">