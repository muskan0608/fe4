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

<title>Homepage</title>
</head>
<body>
 <nav role="main" style="background-color: #C6A970  class="navbar navbar-default" >
  <div class="container">
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
<img src="C:\Users\LENOVO\Desktop\name.png" height="60px" width="60px"   style="margin-top:-20px;">
</li>
<li class="active">
<a href="home.html"><span class="glyphicon glyphicon-home"></span> Home</a>
</li>
<span class="sr-only">You are in Homepage
</span>

<li>
<a href="aboutus.html">AboutUs</a>
</li>
<span class="sr-only">You are in AboutUs page
</span>

<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Brands<strong class="caret"></strong></a>
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
   <li class="divider">
     
     </li>
     
     
     <li class="dropdown-header">
     Organic Products
     </li>
     
     <li>
     <a href="#">Pitanjali</a>
     </li>
     
      
     <li>
     <a href="#">Envirotas</a>
     </li>
   </ul>
</li>




<li>
<a href="#">Offers</a>
</li>
<span class="sr-only">offers available
</span>

</ul>

<form class="navbar-form pull-left">


                    <input type="text" class="form-control" placeholder="Search" style="width: 200px;">
                    <button style="width: 29px;height: 29px"type="submit" class="btn-btn-default"><span class="glyphicon glyphicon-search"></span></button>
                    </form>
<ul class="nav navbar-nav navbar-right">             
    <li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> My account<strong class="caret"></strong></a>
   <ul class="dropdown-menu">
   <li>
     <a href="#"><span class="glyphicon glyphicon-refresh"></span>Update Profile</a>
     </li>
     
     <li>
     <a href="#"><span class="glyphicon glyphicon-inbox"></span> Registration</a>
     </li>
     
     <li>
     <a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a>
     </li>
   
     
     </li>
     </ul>
     </li>
     </ul>
     

</div>
</nav>
<nav class="navbar navbar-default nav2" role="navigation" style="margin-top:0;">

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
<a href="#"></a>
</li>


<li class="#">
<a href="#">  Face  </a>
</li>
<span class="sr-only">face products
</span>

<li class="#">
<a href="#"></a>
</li>

<li>
<a href="#">  Eyes  </a>
</li>
<span class="sr-only"> eyes products
</span>

<li class="#">
<a href="#"></a>
</li>

<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Skin<strong class="caret"></strong></a>
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
<a href="#">  Hair  </a>
</li>
<span class="sr-only">hair products
</span>


<li class="#">
<a href="#"></a>
</li>

<li>
<a href="#">  Herbal  </a>
</li>
<span class="sr-only"> herbal products
</span>

<li class="#">
<a href="#"></a>
</li>

<li>
<a href="#">  Fragrance  </a>
</li>
<span class="sr-only"> fragrance
</span>
</ul>
              
               
       </nav> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

</body>
</html>
