<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="home.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<br>
<div class="panel panel-danger"
			style="border: 2px solid; margin-left: 500px; margin-right: 500px">
			<div class="panel-heading" align="center">
				<u><h2>Shipping Address</h2></u>
			</div>



			<div class="panel-body">
<c:url value="/cartorder${cartid}" var="url"></c:url>
<form:form action="${url }" modelAttribute="shippingAddress" >
<form:hidden path="id"/>


<div class="form-group">
<form:label class="control-label" path="streetname"><h4>Enter Streetname</h4></form:label>
<form:input path="streetname" class="form-control"/>
<form:errors path="streetname" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label class="control-label" path="apartmentnumber"><h4>Enter apartmentnumber</h4></form:label>
<form:input path="apartmentnumber" class="form-control"/>
<form:errors path="apartmentnumber" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label class="control-label" path="city"><h4>Enter City</h4></form:label>
<form:input path="city" class="form-control"/>
<form:errors path="city" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label class="control-label" path="state"><h4>Enter State</h4></form:label>
<form:input path="state" class="form-control"/>
<form:errors path="state" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label class="control-label" path="country"><h4>Enter Country</h4></form:label>
<form:input path="country" class="form-control"/>
<form:errors path="country" cssStyle="color:red"></form:errors>
</div>

<div class="form-group">
<form:label class="control-label" path="zipcode"><h4>Enter Zipcode</h4></form:label>
<form:input path="zipcode" class="form-control"/>
<form:errors path="zipcode" cssStyle="color:red"></form:errors>
</div>
<div class="form-group">
<input type="submit" value="Next">
</div>
</div>
</div>

</form:form>
</body>
</html>