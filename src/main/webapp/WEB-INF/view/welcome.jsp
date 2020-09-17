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
						<li ><a href="/register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
						<li ><a href="/login"><span class="glyphicon glyphicon-user"></span> Login </a></li>
						<li ><a href="/showEmployees"><span class="glyphicon glyphicon-log-out"></span> All Employees</a></li>	
					</ul>			
			</div>
		</div>
	</nav>

	<br/>
	<br/>
	<br/>

	<c:choose>
		<c:when test="${mode=='MODE_HOME' }">
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to Nuclear Innovative technologies</h1>
					<h3>Real-time Spring boot projects training </h3>
				</div>
			</div>

		</c:when>

		<c:when test="${mode=='MODE_REGISTER' }">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/saveEmployee">
					<input type="hidden" name="id" id ="id" value="${employee.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username" id="username"
								value="${employee.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Full Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="fullname" id="fullname"
								value="${employee.fullname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Salary</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="salary" id="salary"
								value="${employee.salary }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3"> Mobile </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="mobile" id="mobile"
								value="${employee.mobile }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3"> Email </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="email" id="email"
								value="${employee.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password" id="password"
								value="${employee.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='ALL_EMPLOYEES' }">
			<div class="container text-center" id="tasksDiv">
				<h3>Employee List</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
								<th>Full Name</th>
								<th>Salary</th>
								<th>Mobile</th>
								<th>Email</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="employee" items="${employees}">
								<tr>
									<td>${employee.id}</td>
									<td>${employee.username}</td>
									<td>${employee.fullname}</td>
									<td>${employee.salary}</td>
									<td>${employee.mobile}</td>
									<td>${employee.email}</td>
									<td><a href="/deleteEmployee?id=${employee.id }"><span
											class="glyphicon glyphicon-trash"> </span> Delete</a></td>
									<td><a href="/editEmployee?id=${employee.id }"><span
											class="glyphicon glyphicon-pencil"> </span> Edit</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_UPDATE' }">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/saveEmployee">
					<input type="hidden" name="id" id ="id" value="${employee.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username" id="username"
								value="${employee.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Full Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="fullname" id="fullname"
								value="${employee.fullname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Salary</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="salary" id="salary"
								value="${employee.salary }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Mobile </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="mobile" id="mobile"
								value="${employee.mobile }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email </label>
						<div class="col-md-3">
							<input type="text" class="form-control" name="email" id="email"
								value="${employee.email }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password" id="password"
								value="${employee.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_LOGIN' }">
			<div class="container text-center">
				<h3>Employee Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/loginEmployee">
					<c:if test="${not empty error }">
						<div class= "alert alert-danger">
							<c:out value="${error }"></c:out>
							</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${employee.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${employee.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
					</form>
					</div>
					</c:when>
	</c:choose>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
</body>
</html>