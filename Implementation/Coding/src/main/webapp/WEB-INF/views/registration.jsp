<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration</title>
</head>
<body>

	<!-- Default form register -->
	<form class="text-center border border-light p-5 frozen-dreams-gradient">

		<p class="h4 mb-4">Sign up</p>

		<div class="form-row mb-4">
			<div class="col">
				<!-- First name -->
				<input type="text" id="defaultRegisterFormFirstName"
					class="form-control" placeholder="First name">
			</div>
			<div class="col">
				<!-- Last name -->
				<input type="text" id="defaultRegisterFormLastName"
					class="form-control" placeholder="Last name">
			</div>
		</div>

		<!-- E-mail -->
		<input type="email" id="defaultRegisterFormEmail"
			class="form-control mb-4" placeholder="E-mail"> <input
			type="text" id="defaultRegisterFormEmail" class="form-control mb-4"
			placeholder="Address"> <input type="text"
			id="defaultRegisterFormEmail" class="form-control mb-4"
			placeholder="username">
		<!-- Password -->
		<input type="password" id="defaultRegisterFormPassword"
			class="form-control" placeholder="Password"
			aria-describedby="defaultRegisterFormPasswordHelpBlock"> <small
			id="defaultRegisterFormPasswordHelpBlock"
			class="form-text text-muted mb-4"> At least 8 characters and
			1 digit </small>

		<!-- Confirm Password -->
		<input type="password" id="defaultRegisterFormPassword"
			class="form-control" placeholder="Confirm Password"
			aria-describedby="defaultRegisterFormPasswordHelpBlock"> <small
			id="defaultRegisterFormPasswordHelpBlock"
			class="form-text text-muted mb-4"> </small>

		<!-- Phone number -->
		<input type="text" id="defaultRegisterPhonePassword"
			class="form-control" placeholder="Phone number"
			aria-describedby="defaultRegisterFormPhoneHelpBlock"> <small
			id="defaultRegisterFormPhoneHelpBlock"
			class="form-text text-muted mb-4"> </small>

		<!-- Register button -->
		<button class="btn btn-info my-4 btn-block" type="submit">Register</button>
		<hr>
	</form>
</body>
</html>