<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="home.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<b>Details about product</b>
<table>
<tr>
<c:url value="/resources/images/${product.id}.png" var="imageUrl"></c:url>
<td><img src="${imageUrl}" height="50" width="50">
</td>
<tr>
<td>Product Name:</td><td>${product.productName}</td>
</tr>

<tr>
<td>Price:</td><td>${product.price}</td>
</tr>

<tr>
<td>Description:</td><td>${product.description}</td>
</tr>

<tr>
<td>Quantity:</td><td>${product.quantity}</td>
</tr>
</table>
<c:url value="/getallproducts" var="url3">
<a href="${url3}">Back to Product List</a>
</c:url>

</body>
</html>