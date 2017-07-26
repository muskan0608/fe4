
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>



<body>
<jsp:include page="home.jsp" />
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
      <img height="1200px" width="2000px" class="first slide" src="C:\Users\LENOVO\Desktop\carousel2.jpg" alt="first slide">  
    </div>

    <div class="item">
      <img class="second slide" src="C:\Users\LENOVO\Desktop\carousel3.jpg" alt="second slide">
    </div>

    <div class="item">
      <img class="thirs slide" src="C:\Users\LENOVO\Desktop\carousel4.jpg" alt="third slide">
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


</body>
</html>