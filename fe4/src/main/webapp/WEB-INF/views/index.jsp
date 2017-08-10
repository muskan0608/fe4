
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>



<body>
<jsp:include page="home.jsp" />

<div class="container">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img class="first slide" src="resources/images/carousel2.jpg" alt="first slide">  
    </div>

    <div class="item">
      <img class="second slide" src="resources/images/carousel3.jpg" alt="second slide">
    </div>

    <div class="item">
      <img class="thirs slide" src="resources/images/carousel4.jpg" alt="third slide">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="row" id="features">
<div class="col-sm-6 feature">
<div class="panel">
<img src="resources/images/index1.png" height="500px" width="500px" align="middle">
<br>
<p align="center"><h4><a href="getallproducts"><font color="pink">Face Products</font></a></h4></p>
</div>
</div>

<div class="col-sm-6 feature">
<div class="panel">
<img src="resources/images/eye.jpg" height="500px" width="500px" align="middle">
<br>
<p align="center"><h4><a href="getallproducts"><font color="pink">Eye Products</font></a></h4></p>
</div>
</div>
</div>

<div class="row" id="features">
<div class="col-sm-6 feature">
<div class="panel">
<img src="resources/images/hair.jpg" height="500px" width="500px" align="middle">
<br>
<p align="center"><h4><a href="getallproducts"><font color="pink">Hair Products</font></a></h4></p>
</div>
</div>

<div class="col-sm-6 feature">
<div class="panel">
<img src="resources/images/skin.jpg" height="500px" width="500px" align="middle">
<br>
<p align="center"><h4><a href="getallproducts"><font color="pink">Skin Products</font></a></h4></p>
</div>
</div>
</div></div>
</body>
</html>
<%@include file="footer.jsp" %>