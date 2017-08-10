<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="home.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/images/bgdark.jpg ">
<br>
<br>
<div class="panel panel-danger"
			style="border: 2px solid; margin-left: 100px; margin-right: 100px">
			<div class="panel-heading" align="center">
				<u><h2>DETAILS ABOUT THE PRODUCT</h2></u>
			</div>

<div class="row" id="features">
<div class="col-sm-6 feature">


<c:url value="/resources/images/${product.id}.png" var="imageUrl"></c:url>
<img src="${imageUrl}" height="300" width="400" hspace="50">
</div>

<div class="col-sm-6 feature">
<table>
<br>
<br>
<tr>
<td><font size=4><b>Product Name:</b></font></td><td><font size=4>${product.productName}</font></td>
</tr>

<tr>
<td><font size=4><b>Price:</b></font></td><td><font size=4>${product.price}</font></td>
</tr>

<tr>
<td><font size=4><b>Description:</b></font></td><td><font size=4>${product.description}</font></td>
</tr>

<tr>
<td><font size=4><b>Quantity:</b></font></td><td><font size=4>${product.quantity}</font></td>
</tr>
</table>
<br>

<c:if  test="${product.quantity==0 }">
<font size=4>Out Of Stock</font>
</c:if>

<c:if test="${product.quantity!=0 }">
<c:url value="/cart/addtocart/${product.id }" var="url"></c:url>
<form action="${url }">
<font size=4>Enter Units</font><input  type="text" name="units"><br>
<br>
<button type="submit" 
 style="background:none;border:none;padding:0" class="btn btn-default btn-lg">
<span class="glyphicon glyphicon-shopping-cart"></span></button>
</form>
</c:if>
<br>
<c:url value="getallproducts" var="url1"></c:url>
<a href="${url1 }"><font size=4>Back to product list</font></a><br>

</div>
</div>
</div>

</body>
</html>
<%@include file="footer.jsp" %>