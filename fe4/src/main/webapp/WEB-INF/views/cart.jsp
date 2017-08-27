<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="home.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br>
	<div>
		<div>
		<div class="panel" style="border: 1px fade; margin-left: 100px; margin-right: 100px">
			<c:url value="/cart/clearcart/${cart.id}" var="clear"></c:url>
			<a href="${clear}" class="btn btn-danger pull-left"> <span
				class="glyphicon glyphicon-remove-sign"></span> Clear Cart

			</a>

<!--<c:url value="/thankyou" var="thankyou"></c:url>
			<a href="${thankyou}" class="btn btn-success pull-right"> <span
				class="glyphicon glyphicon-shopping-cart"></span> Place Order

			</a>-->
  	<c:url value="cartshippingaddressform${cart.id}" var="clear2"></c:url>
			<a href="${clear2}" class="btn btn-success pull-right"> <span
				class="glyphicon glyphicon-shopping-cart"></span> CheckOut

			</a>


			<p class="text-center"><div class="clearfix" align="center">
				<h2>Cart</h2>
			</div></p>

			<div class="container">
				<table class="table table-hover">
					<thead>
						<tr class="danger">
							<th><h4>Name</h4></th>
							<th><h4>Quantity</h4></th>
							<th><h4>Total Price</h4></th>
							<th><h4>Remove</h4></th>

						</tr>
					</thead>

					<tbody>
						<c:set var="grandTotal" value="0"></c:set>

						<c:forEach items="${cart.cartItems}" var="cartItem">
							<tr>
								<td><h5><strong>${cartItem.product.productName}</strong></h5></td>
								<td><h5><strong>${cartItem.quantity}</strong></h5></td>
								<td><h5><strong>${cartItem.totalPrice}</strong></h5></td>
								<c:url value="/cart/removecartitem/${cartItem.cartItemId}"
									var="remove"></c:url>
								<td><a href="${remove}"
									class="label label-danger pull-left"> <c:set
											var="grandTotal" value="${cartItem.totalPrice + grandTotal}"></c:set>
										<span class="glyphicon glyphicon-remove"></span>Remove
								</a></td>

							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div style="color:hotpink"><h4><strong>Total price: ${grandTotal}</strong></h4></div>
			</div>
			</div>
		</div>
	</div>
</body>
</html>