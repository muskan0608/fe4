<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>Homepage</title>
</head>
<body>
 <nav class="navbar nav-upper" style="background-color:White; margin-top:0; margin-bottom:0;">
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
<li class="navbar-brand" href="#">
<img src="C:\Users\LENOVO\Desktop\name.png" href="aboutus" height="55px" width="75px"   style="margin-top:-20px;">
</li>
<li class="active">
<a href=""><span class="glyphicon glyphicon-home" style="color:black;"></span><font color="black"> Home</font></a>
</li>
<span class="sr-only">You are in Homepage
</span>

<li>
<a href="aboutus"><font color="black">AboutUs</font></a>
</li>
<span class="sr-only">You are in AboutUs page
</span>


<li>
<a href="#"><font color="HotPink"><u>Offers</u></font></a>
</li>
<span class="sr-only">offers available
</span>


</ul>

<form class="navbar-form pull-left">


                    <input type="text" class="form-control" placeholder="Search" style="width: 200px;">
                    <button style="width: 29px;height: 29px"type="submit" class="btn-btn-default"><span class="glyphicon glyphicon-search" style="color:black;"></span></button>
                    </form>
<ul class="nav navbar-nav navbar-right">             
    <li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user" style="color:black;"></span><font color="black">My account</font><strong class="caret" style="color:black;"></strong></a>
   <ul class="dropdown-menu">
   <li>
     <a href="#"><span class="glyphicon glyphicon-refresh" style="color:black;"></span><font color="black">Update Profile</font></a>
     </li>
     
     <li>
     <a href="#"><span class="glyphicon glyphicon-inbox" style="color:black;"></span><font color="black"> Registration</font></a>
     </li>
     
     <li>
     <a href="#"><span class="glyphicon glyphicon-log-in" style="color:black;"></span><font color="black"> Login</font></a>
     </li>
   
     
     </li>
     </ul>
     </li>
     </ul>
     

</div>
</nav>
<nav class="navbar navbar navbar-static-top navbar-lower" style="background-color:MistyRose; margin-bottom:0px;" >
<div class="container-fluid">
<ul class="nav navbar-nav" style="clear:left;">

<li class="#">
<a href="#"></a>
</li>
<li class="#">
<a href="#"></a>
</li>

<li class="#">
<a href="#"></a>
</li>
<li class="#">
<a href="getallproducts"><font color="black">All Products</font></a>
</li>


<li class="#">
<a href="#"></a>
</li>

<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color="black">Brands</font><strong class="caret" style="color:black;"></strong></a>
   <ul class="dropdown-menu">
   <li>
     <a href="#"><font color="black">Lakme</font></a>
     </li>
     
     <li>
     <a href="#"><font color="black">Lotus</font></a>
     </li>
     
     <li>
     <a href="#"><font color="black">Nykaa</font></a>
     </li>
   <li class="divider">
     
     </li>
     
     
     <li class="dropdown-header">
     Organic Products
     </li>
     
     <li>
     <a href="#"><font color="black">Pitanjali</font></a>
     </li>   
   </ul>
</li>

<li class="#">
<a href="#"></a>
</li>

<li class="#">
<a href="#"> <font color="black"> Face  </font></a>
</li>
<span class="sr-only">face products
</span>

<li class="#">
<a href="#"></a>
</li>

<li>
<a href="#"> <font color="black"> Eyes </font> </a>
</li>
<span class="sr-only"> eyes products
</span>

<li class="#">
<a href="#"></a>
</li>

<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#"><font color="black">Skin</font><strong class="caret" style="color:black;"></strong></a>
   <ul class="dropdown-menu">
   <li>
     <a href="#">Lakme</a>
     </li>
     
     <li>
     <a href="#">Lotus</a>
     </li>
     
     <li>
     <a href="#">Nykaa</a>
     </li>
   </ul>
</li>

<li class="#">
<a href="#"></a>
</li>


<li>
<a href="#"> <font color="black"> Hair  </font></a>
</li>
<span class="sr-only">hair products
</span>


<li class="#">
<a href="#"></a>
</li>

<li>
<a href="#"> <font color="black"> Herbal </font> </a>
</li>
<span class="sr-only"> herbal products
</span>

<li class="#">
<a href="#"></a>
</li>

<li>
<a href="#"> <font color="black"> Fragrance </font> </a>
</li>
<span class="sr-only"> fragrance
</span>
</ul>
              
               
       </nav> 


</body>
</html>
