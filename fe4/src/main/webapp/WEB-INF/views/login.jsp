<!DOCTYPE html>
<%@include file="home.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="resources/images/bgdark.jpg">
	<c:url value="/j_spring_security_check" var="loginurl"></c:url>
	<form action="${loginurl} " method="post">
		<br> <br>
		<div class="panel panel-danger"
			style="border: 2px solid; margin-left: 500px; margin-right: 500px">
			<div class="panel-heading" align="center">
				<u><h2>LOGIN</h2></u>
			</div>



			<div class="panel-body">
				<div class="form-group">
					<div class="clearfix" align="center">
						<h3>Enter username</h3>
						<input type="text" name="j_username" pattern=".{6,}" title="Six or more characters"/> <br>
						<h3>Enter password</h3>
						<input type="password" name="j_password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/><br> <br> <input
							type=submit value="log in"
							style="color: black; background-color: pink; border: 2px solid #336600; padding: 3px; height: 40px; width: 120px" />
					</div>

				</div>
				<hr>
				<div class="clearfix" align="center">
					<h4>If not registered, <a href="registrationform">Sign Up here!</a></h4>
				</div>
			</div>
		</div>
	</form>
</body>
</html>
<%@include file="footer.jsp" %>