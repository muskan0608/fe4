<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="home.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script>
$(document).ready(function() {
	var searchCondition= '${searchCondition}';
	$('.table').DataTable({
		"lengthMenu" :[[ 3, 5, 7,-1],[ 3, 5, 7,"All"]],
	 "oSearch":{
		 "sSearch": searchCondition
	 }
	})
	
});
</script>
</head>
<body>

<br>
<p class="text-center"><strong>List of products</strong></p>

<div class="container">
<table class="table table-hover">
<thead>
<tr class="danger">
<th>Image</th>
<th>Product Name</th>
    <th>Category</th>
    <th>Price</th>
    <th>Product Description</th>
    <th>Action</th>
 </tr>
 </thead>
 
 <tbody>
 <c:forEach items="${product}" var="p">
 <c:url value="/resources/images/${p.id}.png" var="imageUrl">
 </c:url>
<c:url value="/all/product/viewproduct/${p.id}" var="viewUrl">
</c:url>

<c:url value="/admin/product/deleteproduct/${p.id}" var="deleteUrl">
</c:url>
 
 <c:url value="/admin/product/geteditform/${p.id}" var="editUrl">
</c:url>
 
 <tr>
 <td><img src="${imageUrl}" height="50" width="50"></td>
 <td><a href="${viewUrl}"></a>${p.productName}</td>
 <td> ${p.category.categoryName} </td>
 <td>${p.price}</td>
 <td>${p.description}</td>
 <td>
 <a href="${viewUrl}"><span class="glyphicon glyphicon-info-sign" style="color:green"></span></a>
 <a href="${deleteUrl}"><span class="glyphicon glyphicon-trash" style="color:red"></span></a>
 <a href="${editUrl}"><span class="glyphicon glyphicon-pencil"></span></a>
 </td>
 </tr>
 </c:forEach>
 </tbody> 
    
</table>

</div>
</body>
</html>