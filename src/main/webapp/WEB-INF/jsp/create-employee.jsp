<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../layout/taglib.jsp" %>

 <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="../js/datepicker-ru.js"></script>

<h3>Создание новой записи сотрудника.</h3>

<form:form commandName="employee-form" cssClass="form-horizontal registrationForm">
	
	<c:if test="${param.success eq true}">
		<div class="alert alert-success">Новая запись занесена в базу данных</div>
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
	<div>
		<div class="form-group">
		<label for="divisionName" class="col-sm-2 control-label">Отдел:</label>
		<div class="col-sm-10">
		<form:select path="divisionName" cssClass="form-control">
  			<c:forEach items="${divisions}" var="division_var">
  			<option><c:out value="${division_var.name}" /></option>
  			</c:forEach>
		</form:select>
		</div>
		</div>
	</div>
	<div class="form-group">
		<label for="birthdate" class="col-sm-2 control-label">Дата рождения</label>
		<div class="col-sm-10">
			<input type="text" name="birthdate" id="birthdate" placeholder="От 18-ти до 70-ти лет" class="form-control"/>
			
<script>
$(function() {
$( "#birthdate" ).datepicker({
	closeText: 'Закрыть',
	prevText: '&#x3C;Пред',
	nextText: 'След&#x3E;',
	currentText: 'Сегодня',
	monthNames: ['Январь','Февраль','Март','Апрель','Май','Июнь',
	'Июль','Август','Сентябрь','Октябрь','Ноябрь','Декабрь'],
	monthNamesShort: ['Янв','Фев','Мар','Апр','Май','Июн',
	'Июл','Авг','Сен','Окт','Ноя','Дек'],
	dayNames: ['воскресенье','понедельник','вторник','среда','четверг','пятница','суббота'],
	dayNamesShort: ['вск','пнд','втр','срд','чтв','птн','сбт'],
	dayNamesMin: ['Вс','Пн','Вт','Ср','Чт','Пт','Сб'],
	weekHeader: 'Нед',
	dateFormat: 'dd.mm.yy',
	firstDay: 1,
	isRTL: false,
	showMonthAfterYear: false,
	yearSuffix: '',
	minDate: "-70Y",
	maxDate: "-18Y",
	changeMonth: true,
	changeYear: true
});
});
</script>
			
<!--	    <script type="text/javascript">
	    var $birthdate = $('input[name="birthdate"]');
	    $birthdate.minical({
	        date_format: function(date) {
	          return [date.getDate(), date.getMonth() + 1, date.getFullYear()].join(".");
	        }
	    });
	    </script> -->
		</div>
	</div>
<!--			<form:input path="birthdate" cssClass="form-control" />
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
		<label for="active" class="col-sm-2 control-label">В штате (true/false):</label>
		<div class="col-sm-10">
			<form:input path="active" cssClass="form-control" />
			<form:errors path="active" />
		</div>
	</div>  -->
	
		<div class="form-group">
			<div class="col-sm-2">
				<input type="submit" value="Save" class="btn btn-lg btn-primary">
			</div>
		</div>
</form:form>