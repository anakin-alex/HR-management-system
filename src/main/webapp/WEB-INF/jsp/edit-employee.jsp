<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../layout/taglib.jsp" %>

<h3>Изменение данных сотрудника: <c:out value="${employee.firstName}" /> <c:out value="${employee.lastName}" /></h3>
<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
			<th>Имя</th>
			<th>Фамилия</th>
			<th>Зарплата</th>
			<th>Дата рождения</th>
			<th>Отдел</th>
			<th>В штате</th>			
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>
				<c:out value="${employee.firstName}" /> 
			</td>
			<td>
				<c:out value="${employee.lastName}" />
			</td>
			<td>
				<c:out value="${employee.salary}" />
			</td>
			<td>
				<c:out value="${employee.birthdate}" />
			</td>
			<td>
				<c:out value="${employee.division}" />
			</td>
			<td>
				<c:out value="${employee.active}" />
			</td>			
		</tr>
	</tbody>
</table>

<form:form commandName="employee" cssClass="form-horizontal registrationForm">
	
	<c:if test="${param.success eq true}">
		<div class="alert alert-success">Registration successful!</div>
	 </c:if>
	
	<div class="form-group">
		<label for="firstName" class="col-sm-2 control-label">Имя:</label>
		<div class="col-sm-10">
			<form:input path="firstName" cssClass="form-control" />
			<form:errors path="firstName" />
		</div>
	</div>
	<div class="form-group">
		<label for="lastName" class="col-sm-2 control-label">Фамилия:</label>
		<div class="col-sm-10">
			<form:input path="lastName" cssClass="form-control" />
			<form:errors path="lastName" />
		</div>
	</div>
	<div class="form-group">
		<label for="salary" class="col-sm-2 control-label">Зарплата:</label>
		<div class="col-sm-10">
			<form:input path="salary" cssClass="form-control" />
			<form:errors path="salary" />
		</div>
	</div>
	<div class="form-group">
		<label for="birthdate" class="col-sm-2 control-label">Дата рождения</label>
		<div class="col-sm-10">
			<form:input path="birthdate" cssClass="form-control" />
			<form:errors path="birthdate" />
		</div>
	</div>
	<div class="form-group">
		<label for="division" class="col-sm-2 control-label">Отдел:</label>
		<div class="col-sm-10">
			<form:input path="division" cssClass="form-control" />
			<form:errors path="division" />
		</div>
	</div>
	<div class="form-group">
		<label for="active" class="col-sm-2 control-label">В штате:</label>
		<div class="col-sm-10">
			<form:input path="active" cssClass="form-control" />
			<form:errors path="active" />
		</div>
	</div>
	
		<div class="form-group">
			<div class="col-sm-2">
				<input type="submit" value="Save" class="btn btn-lg btn-primary">
			</div>
		</div>
</form:form>
