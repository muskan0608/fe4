<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="home.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br>
<div>
<div>
<c:url value="/cart/clearcart/${cart.id}" var="clear"></c:url>
<a href="${clear}" class="btn btn-danger pull-left">
<span class="glyphicon glyphicon-remove-sign"></span>
Clear Cart

</a>

<c:url value="cartorder/${cart.id}" var="clear2"></c:url>
<a href="${clear2}" class="btn btn-success pull-right">
<span class="glyphicon glyphicon-shopping-cart"></span>
CheckOut

</a>


<p class="text-center"><strong>Cart</strong></p>

<div class="container">
<table class="table table-hover">
<thead>
<tr class="danger">
<th>Name</th>
<th>Quantity</th>
    <th>Total Price</th>
    <th>Remove</th>
  
 </tr>
 </thead>
 
 <tbody>
 <c:set var="grandTotal" value="0"></c:set>
 
 <c:forEach items="${cart.cartItems}" var="cartItem">
 <tr>
 <td>${cartItem.product.productName}</td>
 <td>${cartItem.quantity}</td>
 <td>${cartItem.totalPrice}</td>
 <c:url value="/cart/removecartitem/${cartItem.cartItemId}" var="remove"></c:url>
 <td><a href="${remove}" class="label label-danger pull-left">
 <c:set var="grandTotal" value="${cartItem.totalPrice + grandTotal}"></c:set>
 <span class="glyphicon glyphicon-remove"></span>Remove
 </a></td>
 
 </tr> 
 </c:forEach>
 </tbody> 
</table>
Total price: ${grandTotal}
</div></div></div>
</body>
</html>