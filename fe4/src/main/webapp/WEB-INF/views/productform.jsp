
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="home.jsp"%>
<html>
<head>

<title>Insert title here</title>
</head>
<body>

	<form:form action="saveproduct" method="post" modelAttribute="product" enctype="multipart/form-data">
		<div class="form-group">
			<form:hidden path="id" />
		</div>
		<div class="form-group">
			Enter Product Name
			<form:input path="productName"/>
			<form:errors path="productName" cssStyle="color:red"></form:errors>
		</div>
		<br>
		<div class="form-group">
			Enter Price
			<form:input path="price"/>
			<form:errors path="price" cssStyle="color:red"></form:errors>
		</div>
		<br>
		<div class="form-group">
			Enter Quantity
			<form:input path="quantity"/>
			<form:errors path="quantity" cssStyle="color:red"></form:errors>
		</div>
		<br>
		<div class="form-group">
			Enter Description
			<form:input path="description"/>
			<form:errors path="description" cssStyle="color:red"></form:errors>
		</div>
		<br>
		<div class="form-group">
			Select Category
			<c:forEach items="${categories}" var="c">
				<form:radiobutton path="category.id" value="${c.id}" />
${c.categoryName}
</c:forEach>
		</div>
		<div class="form-group">
			Upload an image <input type="file" name="image" />

		</div>
		<input type="submit" value="Add Product" />

	</form:form>

</body>
</html>