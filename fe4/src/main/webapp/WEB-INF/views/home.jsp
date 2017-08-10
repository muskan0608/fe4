
<html>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1" >
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<link rel="stylesheet"String type="text/css"String href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css"String/>

<script type="text/javascript"String src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"String></script>


 <script type="text/javascript"String src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"String></script>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <%@ page isELIgnored="false" %>
<title>Homepage</title>
</head>
<body>
 <nav class="navbar nav-upper" style="background-color:White; margin-top:0; margin-bottom:0;height:60px">
  <div class="container-fluid">
 
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapsed" data-target="#collapse-example" aria expanded="false">

<span class="sr-only">Toggle Navigation</span>

<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>

<div class="collapse navbar-collapse" id="collapse-example">

<ul class="nav navbar-nav" style="clear:left;">
<li class="navbar-brand" href="">
<img src="resources/images/name.PNG" href="aboutus" height="60px" width="120px"   style="margin-top:-20px">
</li>
<li class="active">
<a href=""><span class="glyphicon glyphicon-home" style="color:black;"></span><font color="black" size="4"> Home</font></a>
</li>
<span class="sr-only">You are in Homepage
</span>

<li>
<a href="aboutus"><font color="black" size="4">AboutUs</font></a>
</li>
<span class="sr-only">You are in AboutUs page
</span>


<li>
<a href=""><font color="HotPink" size="4"><u>Offers</u></font></a>
</li>
<span class="sr-only">offers available
</span>


</ul>


              
<ul class="nav navbar-nav navbar-right">             
    <c:if test="${pageContext.request.userPrincipal.name==null }">
     <li>
     <a href="registrationform"><span class="glyphicon glyphicon-user" style="color:black;"></span><font color="black" size="4"> Register</font></a>
     </li>
     
     <li>
     <a href="login"><span class="glyphicon glyphicon-log-in" style="color:black;"></span><font color="black" size="4"> Login</font></a>
     </li>
   </c:if>
     
     
      
   <c:url value="/j_spring_security_logout" var="logoutUrl"></c:url>
		    <c:if test="${pageContext.request.userPrincipal.name!=null }">
		  <li>  <a href="${logoutUrl }"><span class="glyphicon glyphicon-log-out" style="color:black;"></span><font color="black" size="4"> Logout</font></a>
		  </li>
		    </c:if>
		    
     
     </ul>
     </li>
     </ul>
     

</div>
</nav>
<nav class="navbar navbar navbar-static-top navbar-lower" style="background-color:MistyRose; margin-bottom:0px;" >
<div class="container-fluid">
<ul class="nav navbar-nav" style="clear:left;">


<li class="#">
<a href="getallproducts"><font color="black" size="3"><div style="padding-left:200px;padding-right:25px"> All Products</div></font></a>
</li>

<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#"><div style="padding-left:25px;padding-right:25px"><font color="black" size="3">Face</font><strong class="caret" style="color:black;"></strong></div></a>
   <ul class="dropdown-menu">
   <li>
     <a href="searchbyCategory1"><font color="black">Concealer</font></a>
     </li>
     
     <li>
     <a href="searchbyCategory2"><font color="black">Compact</font></a>
     </li>
     
     <li>
     <a href="searchbyCategory3"><font color="black">BB & CC Cream</font></a>
     </li>
   <li class="divider">
     
     </li>
     
     
     <li class="dropdown-header">
     Lips
     </li>
     
     <li>
     <a href="searchbyCategory4"><font color="black">Lipstick</font></a>
     </li> 
     
     <li>
     <a href="searchbyCategory5"><font color="black">Lip Gloss</font></a>
     </li>   
   </ul>
</li>


<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#"><div style="padding-left:25px;padding-right:25px"><font color="black" size="3">Eyes</font><strong class="caret" style="color:black;"></strong></div></a>
   <ul class="dropdown-menu">
   <li>
     <a href="searchbyCategory6"><font color="black">Kajal</font></a>
     </li>
     
     <li>
     <a href="searchbyCategory7"><font color="black">Eye Liner</font></a>
     </li>
     
     <li>
     <a href="searchbyCategory8"><font color="black">Mascara</font></a>
     </li>

<li>
     <a href="searchbyCategory9"><font color="black">Eye Shadow</font></a>
     </li>

</ul>
</li>


<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#"><div style="padding-left:25px;padding-right:25px"><font color="black" size="3">Skin</font><strong class="caret" style="color:black;"></strong></div></a>
   <ul class="dropdown-menu">
   <li>
     <a href="searchbyCategory10"><font color="black">Facewash</font></a>
     </li>
     
     <li>
     <a href="searchbyCategory11"><font color="black">Moisturizer</font></a>
     </li>
     
     <li>
     <a href="searchbyCategory12"><font color="black">Sunscreen</font></a>
     </li>
     
      <li>
     <a href="searchbyCategory13"><font color="black">Deodorants/Perfumes</font></a>
     </li>
     
</ul>
</li>



<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#"><div style="padding-left:25px;padding-right:25px"><font color="black" size="3">Hair</font><strong class="caret" style="color:black;"></strong></div></a>
   <ul class="dropdown-menu">
   <li>
     <a href="searchbyCategory14">Shampoo</a>
     </li>
     
     <li>
     <a href="searchbyCategory15">Hair oil</a>
     </li>
     
     <li>
     <a href="searchbyCategory16">Conditioner</a>
     </li>
   </ul>
</li>


   
   
   <li class="dropdown" style="margin-left:560px">
<a class="dropdown-toggle" data-toggle="dropdown" href="#" style="padding-left:25px;padding-right:25px"><font color="black" size="3"></font>
<c:if test="${pageContext.request.userPrincipal.name!=null }">
			<font color="black" size="3">Welcome ${pageContext.request.userPrincipal.name }</font></c:if>
				 <security:authorize access="hasRole('ROLE_ADMIN')"><strong class="caret" style="color:black;"></strong></security:authorize>
					
   <ul class="dropdown-menu">
   <security:authorize access="hasRole('ROLE_ADMIN')">
   <li>
     <a href="getproductform">Manage Product</a>
		    
     </li>
     
     </security:authorize>
   </ul>
   </a>
   </li>
   </ul>



</div>
              
               
       </nav> 


</body>
</html>
