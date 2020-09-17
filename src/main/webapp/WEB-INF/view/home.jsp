<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html >
<html>
<head>
<title>Nuclear-IT| Home</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous" />

</head>
<body>
	<!-- create navigation bar ( header) -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<div>
					<a class="navbar-brand" href="">Nuclear Innovative Technologies</a>
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">About us</a></li>
						<li><a href="#">Contact Us</a></li>
					</ul>

				</div>

			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/register"><span
							class="glyphicon glyphicon-user"></span> Register</a></li>
					<li><a href="/login"><span
							class="glyphicon glyphicon-user"></span> Login </a></li>
					<li><a href="/show-employees"><span
							class="glyphicon glyphicon-log-out"></span> All Employees</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<br />
	<br />
	<br />

	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Welcome to Tecno-tab</h1>
			<h3>Spring Boot Videos</h3>
		</div>
	</div>

	<div class="container text-centered">
		<div class="alert alert-success">
			<h4>Session 1: Spring Boot Tutorial</h4>
		</div>
		<iframe width="400" height="200"
			src="https://www.youtube.com/embed/m0Xf6Bf6KFU" frameborder="0"
			allow="autoplay; encrypted-media" allowfullscreen></iframe>

		<p>This is 1st Session of the tutorial.....</p>
		<div class="alert alert-success">
			<h4>Session 1: Spring Boot Tutorial</h4>
		</div>
		<iframe width="400" height="200"
			src="https://www.youtube.com/embed/m0Xf6Bf6KFU" frameborder="0"
			allow="autoplay; encrypted-media" allowfullscreen></iframe>

		<p>This is 1st Session of the tutorial.....</p>
		<div class="alert alert-success">
			<h4>Session 1: Spring Boot Tutorial</h4>
		</div>
		<iframe width="400" height="200"
			src="https://www.youtube.com/embed/m0Xf6Bf6KFU" frameborder="0"
			allow="autoplay; encrypted-media" allowfullscreen></iframe>

		<p>This is 1st Session of the tutorial.....</p>
		<div class="alert alert-success">
			<h4>Session 1: Spring Boot Tutorial</h4>
		</div>
		<iframe width="400" height="200"
			src="https://www.youtube.com/embed/m0Xf6Bf6KFU" frameborder="0"
			allow="autoplay; encrypted-media" allowfullscreen></iframe>

		<p>This is 1st Session of the tutorial.....</p>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>