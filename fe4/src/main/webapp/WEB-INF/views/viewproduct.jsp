<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="home.jsp" />
<b>Details about product</b>
<table>
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
<c:url value="/all/products/getallproducts" val="url1">
<a href="${url1}">Back to Product List</a>
</c:url>
</body>
</html>