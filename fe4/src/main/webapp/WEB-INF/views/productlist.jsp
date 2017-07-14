<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="home.jsp" />
<b>List of products</b>
<div class="container">
<table class="table table-striped">
<thead>
<tr><th>Product Name</th>
    <th>Price</th>
    <th>Product Description</th>
    <th>Action</th>
 </tr>
 </thead>
 
 <tbody>
 <c:forEach items="${product}" var="p">
 
<c:url value="/all/product/viewproduct/${p.id}" var="viewUrl">
</c:url>

<c:url value="/admin/product/deleteproduct/${p.id}" var="deleteUrl">
</c:url>
 
 <c:url value="/admin/product/geteditform/${p.id}" var="editUrl">
</c:url>
 
 <tr>
 <td><a href="${viewUrl}"></a>${p.productName}</td>
 <td>${p.price}</td>
 <td>${p.description}</td>
 <td>
 <a href="${viewUrl}"><span class="glyphicon glyphicon-info-sign"></span></a>
 <a href="${deleteUrl}"><span class="glyphicon glyphicon-trash"></span></a>
 <a href="${editUrl}"><span class="glyphicon glyphicon-pencil"></span></a>
 </td>
 </tr>
 </c:forEach>
 </tbody> 
    
</table>

</div>
</body>
</html>