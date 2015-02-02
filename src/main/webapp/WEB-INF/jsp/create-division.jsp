<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../layout/taglib.jsp" %>

<h3>Создание нового отдела.</h3>

<form:form commandName="create-division" cssClass="form-horizontal registrationForm">
	
	<c:if test="${param.success eq true}">
		<div class="alert alert-success">Новый отдел занесен в базу данных</div>
	 </c:if>
	
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">Название отдела</label>
		<div class="col-sm-10">
			<form:input path="name" cssClass="form-control" />
			<form:errors path="name" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-2">
			<input type="submit" value="Save" class="btn btn-lg btn-primary">
		</div>
	</div>
</form:form>