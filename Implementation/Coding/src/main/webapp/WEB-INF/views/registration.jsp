<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration</title>
</head>
<body class="purple lighten-4">
	<!-- include header page -->
	<%@ include file="./shared/header.jsp"%>

	<hr />
	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<div class="row">
					<div class="col-md-4"></div>
					<div class="col-md-8">
						<!-- form register -->
						<form:form action="save_user" method="POST" modelAttribute="user"
							class="text-center border border-light p-5 frozen-dreams-gradient">

							<p class="h4 mb-4">Sign up</p>

							<div class="form-row mb-4">
								<div class="col">
									<!-- First name -->
									<form:errors path="firstName"
										class="form-control text-danger"></form:errors>
									<form:input type="text" id="defaultRegisterFormFirstName"
										class="form-control" placeholder="First name" path="firstName"></form:input>
								</div>
								<div class="col">
									<!-- Last name -->
									<form:errors path="lastName"
										class="form-control text-danger"></form:errors>
									<form:input type="text" id="defaultRegisterFormLastName"
										class="form-control" placeholder="Last name" path="lastName"></form:input>
								</div>
							</div>
							<!-- Date of birth-->
							<form:errors path="dob"
										class="form-control text-danger"></form:errors>
							<small id="defaultRegisterFormdob"
							
								class="form-text text-muted mb-4">Choose your birth date</small>
							<form:input type="date" id="defaultRegisterFormdob"
								class="form-control mb-4" path="dob"></form:input>
							<!-- gneder-->
							<small id="defaultRegisterFormgender"
								class="form-text text-muted mb-4">Choose your gender</small>
							<form:radiobuttons id="defaultRegisterFormgender" class="mb-4"
								path="gender" items="${genderList}" />

							<!-- E-mail -->
							<form:errors path="email"
										class="form-control text-danger"></form:errors>
							<form:input type="email" id="defaultRegisterFormEmail"
								class="form-control mb-4" placeholder="E-mail" path="email"></form:input>
							<!-- address -->
							<form:errors path="address"
										class="form-control text-danger"></form:errors>
							<form:input type="text" id="defaultRegisterFormaddress"
								class="form-control mb-4" placeholder="Address" path="address"></form:input>
							<!-- username -->
							<form:errors path="username"
										class="form-control text-danger"></form:errors>
							<form:input type="text" id="defaultRegisterFormusername"
								class="form-control mb-4" placeholder="username" path="username"></form:input>
							<!-- Password -->
							<form:errors path="password"
										class="form-control text-danger"></form:errors>
							<form:input type="password" id="defaultRegisterFormPassword"
								class="form-control" placeholder="Password" path="password"
								aria-describedby="defaultRegisterFormPasswordHelpBlock"></form:input>
							<small id="defaultRegisterFormPasswordHelpBlock"
								class="form-text text-muted mb-4"> At least 8 characters
								and 1 digit </small>

							<!-- Confirm Password -->
							<form:input type="password"
								id="defaultRegisterFormConfirmPassword" class="form-control"
								placeholder="Confirm Password" path=""
								aria-describedby="defaultRegisterFormPasswordHelpBlock"></form:input>
							<small id="defaultRegisterFormPasswordHelpBlock"
								class="form-text text-muted mb-4"> </small>

							<!-- Phone number -->
							<form:input type="text" id="defaultRegisterPhonePassword"
								class="form-control" placeholder="Phone number"
								path="phoneNumber"
								aria-describedby="defaultRegisterFormPhoneHelpBlock"></form:input>
							<small id="defaultRegisterFormPhoneHelpBlock"
								class="form-text text-muted mb-4"> </small>

							<!-- Register button -->
							<form:button class="btn btn-info my-4 btn-block" type="submit">Register</form:button>
							<hr>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-md-4"></div>
		</div>
	</div>
	<!-- include footer page -->
	<%@ include file="./shared/footer.jsp"%>
</body>
</html>