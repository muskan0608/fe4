
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body background="resources/images/bgdark.jpg ">



	<jsp:include page="home.jsp"></jsp:include>


	<c:url value="/savecustomer" var="url">
	</c:url>
	<form:form action="${url}" modelAttribute="customer" method="post">

		<br>
		<br>
		<div class="panel panel-danger"
			style="border: 2px solid; margin-left: 100px; margin-right: 100px">
			<div class="panel-heading" align="center">
				<u><h2>REGISTER HERE!</h2></u>
			</div>
			
			
			
			<div class="panel-body">

				<div class="row" id="features">
				
				
					<div class="col-sm-3 feature">
					
					<h3><u>User Details</u></h3>
					<br>
						<div class="form-group">
							<form:label path="firstname">Enter Firstname</form:label>
							<form:input path="firstname" id="firstname" class="form-control"
								 />
							<form:errors path="firstname" cssStyle="color:red"></form:errors>
						</div>

						<div class="form-group">
							<form:label path="lastname">Enter Lastname</form:label>
							<form:input path="lastname" id="lastname" class="form-control"
								  />
							<form:errors path="lastname" cssStyle="color:red"></form:errors>
						</div>


						<div class="form-group">
							<form:label path="email">Enter Email</form:label>
							<form:input path="email" id="email" class="form-control"
								/>
							<form:errors path="email" cssStyle="color:red"></form:errors>
						</div>

						<div class="form-group">
							<form:label path="phone">Enter Phone no</form:label>
							<form:input path="phone" id="phone" class="form-control"
								/>
							<form:errors path="phone" cssStyle="color:red"></form:errors>
						</div>


						<div class="form-group">

							<form:label path="user.username">Enter User Name</form:label>

							<form:input path="user.username" id="username"
								class="form-control"/>

							<form:errors path="user.username" cssStyle="color:red"></form:errors>

						</div>

						<div class="form-group">

							<form:label path="user.password">Enter Password</form:label>

							<form:input path="user.password" type="password" id="password"
								class="form-control" />
<br>
							<form:errors path="user.password" cssStyle="color:red"></form:errors>

						</div>
					</div>
					
					<div class="col-sm-1 feature"></div>
					
					<div class="col-sm-3 feature">
					
					<h3><u>Billing Address</u></h3>
					<br>
					<div class="form-group">

					<form:label path="billingAddress.apartmentnumber">Enter Apartment Number</form:label>

					<form:input path="billingAddress.apartmentnumber"
						id="billingAddress.apartmentnumber" class="form-control"
						/>

					<form:errors path="billingAddress.apartmentnumber"
						cssStyle="color:red"></form:errors>

				</div>


				<div class="form-group">

					<form:label path="billingAddress.streetname">Enter Street Name</form:label>

					<form:input path="billingAddress.streetname"
						id="billingAddress.streetname" class="form-control"
						/>

					<form:errors path="billingAddress.streetname" cssStyle="color:red"></form:errors>

				</div>

				<div class="form-group">

					<form:label path="billingAddress.city">Enter City</form:label>

					<form:input path="billingAddress.city" id="billingAddress.city"
						class="form-control" />

					<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>

				</div>




				<div class="form-group">

					<form:label path="billingAddress.state">Enter State</form:label>

					<form:input path="billingAddress.state" id="billingAddress.state"
						class="form-control" />

					<form:errors path="billingAddress.state" cssStyle="color:red"></form:errors>

				</div>




				<div class="form-group">

					<form:label path="billingAddress.country">Enter Country</form:label>

					<form:input path="billingAddress.country"
						id="billingAddress.country" class="form-control"
						/>

					<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>

				</div>




				<div class="form-group">

					<form:label path="billingAddress.zipcode">Enter Zipcode</form:label>

					<form:input path="billingAddress.zipcode"
						id="billingAddress.zipcode" class="form-control"
						/>

					<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>

				</div>
					
					
					
				</div>
				
				<div class="col-sm-1 feature"></div>
				<div class="col-sm-3 feature">
				<h3><u>Shipping Address</u></h3>
				<br>
				<div class="form-group">

					<form:label path="shippingAddress.apartmentnumber">Enter Apartment Number</form:label>

					<form:input path="shippingAddress.apartmentnumber"
						id="shippingAddress.apartmentnumber" class="form-control"
						/>

					<form:errors path="shippingAddress.apartmentnumber"
						cssStyle="color:red"></form:errors>

				</div>

				<div class="form-group">

					<form:label path="shippingAddress.streetname">Enter Streetname</form:label>

					<form:input path="shippingAddress.streetname"
						id="shippingAddress.streetname" class="form-control"
						/>

					<form:errors path="shippingAddress.streetname" cssStyle="color:red"></form:errors>

				</div>


				<div class="form-group">

					<form:label path="shippingAddress.city">Enter City</form:label>

					<form:input path="shippingAddress.city" id="shippingAddress.city"
						class="form-control" />

					<form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors>

				</div>




				<div class="form-group">

					<form:label path="shippingAddress.state">Enter State</form:label>

					<form:input path="shippingAddress.state" id="shippingAddress.state"
						class="form-control" />

					<form:errors path="shippingAddress.state" cssStyle="color:red"></form:errors>

				</div>




				<div class="form-group">

					<form:label path="shippingAddress.country">Enter Country</form:label>

					<form:input path="shippingAddress.country"
						id="shippingAddress.country" class="form-control"
						/>

					<form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors>

				</div>




				<div class="form-group">

					<form:label path="shippingAddress.zipcode">Enter Zipcode</form:label>

					<form:input path="shippingAddress.zipcode"
						id="shippingAddress.zipcode" class="form-control"
						/>

					<form:errors path="shippingAddress.zipcode" cssStyle="color:red"></form:errors>

				</div>
				
				
				
				
				
				</div>
				<div class="col-sm-1 feature"></div>
			</div>
		</div>

		</div>
<div class="panel-footer">
		<div align="center"><font size="4">
			<input type="checkbox" checked="checked"> Remember me</font>
			<p><font size="4">
				By creating an account you agree to our <a href="#">Terms &
					Privacy</a>.
			</font></p>

		</div>
		<div class="clearfix" align="center">

			<input type="submit" value="Register"
				style="color: black; background-color: pink; border: 2px solid #336600; padding: 3px;height:45px;width:80px">
				

			<button type="button" class="cancelbtn"
				style="color: black; background-color: pink; border: 2px solid #336600; padding: 3px;height:45px;width:80px">Cancel</button>
		</div>
		</div>
	</form:form>

</body>
</html>

