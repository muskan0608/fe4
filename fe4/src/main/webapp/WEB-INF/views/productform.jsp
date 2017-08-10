
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
<body background="resources/images/bgdark.jpg">

<br>
<br>
<div class="panel panel-danger"
			style="border: 2px solid; margin-left: 500px; margin-right: 500px">
			<div class="panel-heading" align="center">
				<u><h2>ADD Product</h2></u>
			</div>



			<div class="panel-body">
	<form:form action="saveproduct" method="post" modelAttribute="product" enctype="multipart/form-data">
		<div class="clearfix" align="center">
		<div class="form-group">
		
			<form:hidden path="id" />
		</div>
		<div class="form-group">
			<form:label class="control-label" path="productName"><h4>Enter Product Name</h4></form:label>
			<form:input path="productName" class="form-control"/>
			<form:errors path="productName" cssStyle="color:red"></form:errors>
		</div>
		<br>
		<div class="form-group">
			<form:label class="control-label" path="price"><h4>Enter Price</h4></form:label>
			<form:input path="price" class="form-control"/>
			<form:errors path="price" cssStyle="color:red"></form:errors>
		</div>
		<br>
		<div class="form-group">
			<form:label class="control-label" path="quantity"><h4>Enter Quantity</h4></form:label>
			<form:input path="quantity" class="form-control"/>
			<form:errors path="quantity" cssStyle="color:red"></form:errors>
		</div>
		<br>
		<div class="form-group">
			<form:label class="control-label" path="description"><h4>Enter Description</h4></form:label>
			<form:input path="description" class="form-control"/>
			<form:errors path="description" cssStyle="color:red"></form:errors>
		</div>
		</div>
		<br>
		<!--  <div class="form-group">
			<h4>Select Category</h4>
			<c:forEach items="${categories}" var="c">
				<form:radiobutton path="category.id" value="${c.id}" />
${c.categoryName}
</c:forEach>
		</div>-->
		
		<div class="form-group">

						<b> Select Category</b>

						<form:select path="category.id" class="form-control" style="width:94%">

							<c:forEach items="${categories}" var="c">

								<form:option value="${c.id}">

								${c.categoryName}  

                                 
</form:option>
							</c:forEach>
												</form:select>
					</div>
		
			
						
		<div class="clearfix" align="center">
		<div class="form-group">
			<h4>Upload an image</h4> <input type="file" name="image" />

		</div>
	
		<input type="submit" value="Add Product" style="color: black; background-color: pink; border: 2px solid #336600; padding: 3px; height: 40px; width: 120px"/>
</div>
	</form:form>
</div></div>
</body>
</html>