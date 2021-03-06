<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
		
</head>

<body>

<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx"%>

<tilesx:useAttribute name="current"/>

	<div class="container">

		<!-- Static navbar -->
		<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span> <span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<spring:url value = "/"/>">Рога и копыта</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">					
						
						<security:authorize access="! isAuthenticated()">							
							<li class="${current == 'index' ? 'active' : ''}"><a href="<spring:url value = "/"/>">Главная</a></li>
							<li class="${current == 'login' ? 'active' : ''}"><a href="<spring:url value = "/login.html"/>">Вход</a></li>
							<li class="${current == 'info' ? 'active' : ''}"><a href="<spring:url value = "/info.html"/>">Информация</a></li>
						</security:authorize>
						<security:authorize access="isAuthenticated()">
							<li class="${current == 'index' ? 'active' : ''}"><a href="<spring:url value = "/"/>">Сотрудники</a></li>
							</security:authorize>
						<security:authorize access="hasRole('ROLE_EDITOR')">							
							<li class="${current == 'create-employee' ? 'active' : ''}"><a href="<spring:url value = "/create-employee.html"/>">Новый сотрудник</a></li>
							<li class="${current == 'divisions' ? 'active' : ''}"><a href="<spring:url value = "/divisions.html"/>">Отделы</a></li>
							<li class="${current == 'create-division' ? 'active' : ''}"><a href="<spring:url value = "/create-division.html"/>">Новый отдел</a></li>			
						</security:authorize>						
						<security:authorize access="isAuthenticated()">							
							<li><a href="<spring:url value = "/logout"/>">Выход</a></li>							
						</security:authorize>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!--/.container-fluid -->
		</nav>



		<tiles:insertAttribute name="body" />

		<br> <br>
			
			<tiles:insertAttribute name="footer" />			

	</div>

</body>
</html>