<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="home.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:url value="/admin/product/editproduct" var="url">
</c:url>


<form:form action="${url}" modelAttribute="productObj" enctype="multipart/form-data">
<div class="form-group">
<form:hidden path="id"/>
</div>
<div class="form-group">
<form:label class="control-label" path="productName">Enter Product Name</form:label>
<form:input path="productName" class="form-control"/>
<form:errors path="productName" cssStyle="color:red"></form:errors>
</div>
<br>
<div class="form-group">
Enter Price<form:input path="price"/>
<form:errors path="price" cssStyle="color:red"></form:errors>
</div>
<br>
<div class="form-group">
Enter Quantity<form:input path="quantity"/>
<form:errors path="quantity" cssStyle="color:red"></form:errors>
</div>
<br>
<div class="form-group">
Enter Description<form:input path="description"/>
<form:errors path="description" cssStyle="color:red"></form:errors>
</div>
<br>
<div class="form-group">
Select Category
<c:forEach items="${categories}" var="c">
<form:radiobutton path="category.id" value="${c.id}"/>${c.categoryName}
</c:forEach>
</div>

<div class="form-group">

edit the image
<input type="file" name="image"/>


</div>
<input type="submit" value="Edit Product"/>

</form:form>



</body>
</html>