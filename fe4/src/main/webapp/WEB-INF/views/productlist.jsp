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
<p class="text-center" style="font-size:25px"><strong>List of products</strong></p>

<div class="container-fluid">
<table class="table table-hover table-striped">
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
<c:url value="viewproduct${p.id}" var="viewUrl">
</c:url>

<c:url value="/admin/product/deleteproduct/${p.id}" var="deleteUrl">
</c:url>
 
 <c:url value="adminproductgeteditform${p.id}" var="editUrl">
</c:url>
 
 <tr>
 <td  style="height:100px"><img src="${imageUrl}" height="200" width="300"></td>
 <td><a href="${viewUrl}"></a><h3><u>${p.productName}</u></h3></td>
 <td><br> <h4>${p.category.categoryName} </h4></td>
 <td><br><h4>${p.price}</h4></td>
 <td><br><h4>${p.description}</h4></td>
 <td>
 <br>
 
 <a href="${viewUrl}"><span class="glyphicon glyphicon-info-sign" style="color:green;font-size:0.6cm"></span></a>
 <security:authorize access="hasRole('ROLE_ADMIN')">
 <br>
 <br>
 <a href="${deleteUrl}"><span class="glyphicon glyphicon-trash" style="color:red;font-size:0.6cm"></span></a>
 <br>
 <br>
 <a href="${editUrl}"><span class="glyphicon glyphicon-pencil" style="font-size:0.6cm"></span></a>
 </security:authorize>
 
 
 </td>
 </tr>
 </c:forEach>
 </tbody> 
    
</table>

</div>
</body>
</html>
