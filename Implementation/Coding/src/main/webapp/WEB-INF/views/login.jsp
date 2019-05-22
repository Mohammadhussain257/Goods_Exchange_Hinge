<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>

	<!-- Default form login -->
	<form class="text-center border border-light p-5 heavy-rain-gradient">

		<p class="h4 mb-4">Sign in</p>

		<!-- Username -->
		<input type="text" id="defaultLoginFormEmail"
			class="form-control mb-4" placeholder="username">

		<!-- Password -->
		<input type="password" id="defaultLoginFormPassword"
			class="form-control mb-4" placeholder="Password">

		<div class="d-flex justify-content-around">
			<div>
				<!-- Remember me -->
				<div class="custom-control custom-checkbox">
					<input type="checkbox" class="custom-control-input"
						id="defaultLoginFormRemember"> <label
						class="custom-control-label" for="defaultLoginFormRemember">Remember
						me</label>
				</div>
			</div>
			<div>
				<!-- Forgot password -->
				<a href="#">Forgot password?</a>
			</div>
		</div>

		<!-- Sign in button -->
		<button class="btn btn-info btn-block my-4" type="submit">Sign
			in</button>
	</form>
</body>
</html>