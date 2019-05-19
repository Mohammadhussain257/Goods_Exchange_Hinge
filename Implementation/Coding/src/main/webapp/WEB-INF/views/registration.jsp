<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>registration</title>
</head>
<body>
	<form>
		<div class="form-group">
			<label for="formGroupExampleInput">Full Name</label> <input
				type="text" class="form-control" id="formGroupExampleInput"
				placeholder="Full Name">
		</div>
		<div class="form-group">
			<label for="formGroupExampleInput2">Gender</label>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="exampleRadios"
					id="exampleRadios1" value="option1" checked> <label
					class="form-check-label" for="exampleRadios1">Male</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="exampleRadios"
					id="exampleRadios1" value="option2" checked> <label
					class="form-check-label" for="exampleRadios2">Female</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="exampleRadios"
					id="exampleRadios1" value="option3" checked> <label
					class="form-check-label" for="exampleRadios3">Other</label>
			</div>
		</div>
		<div class="form-group">
			<label for="formGroupExampleInput">Date of Birth</label> <input
				type="date" class="form-control" id="formGroupExampleInput">
		</div>
		<div class="form-group">
			<label for="formGroupExampleInput">Contact No.</label> <input
				type="text" class="form-control" id="formGroupExampleInput"
				placeholder="12-345-67-89">
		</div>
		<div class="form-group">
			<label for="formGroupExampleInput">Username</label> <input
				type="text" class="form-control" id="formGroupExampleInput"
				placeholder="eg: sam">
		</div>
		<div class="form-group">
			<label for="formGroupExampleInput">Password</label> <input
				type="password" class="form-control" id="formGroupExampleInput"
				placeholder="**********">
		</div>
		<div class="form-group">
			<label for="formGroupExampleInput">Confirm Password</label> <input
				type="password" class="form-control" id="formGroupExampleInput"
				placeholder="**********">
		</div>
		<div class="form-group">
			<label for="formGroupExampleInput">Address</label> <input type="text"
				class="form-control" id="formGroupExampleInput"
				placeholder="address"> <input type="text"
				class="form-control" id="formGroupExampleInput"
				placeholder="City eg: Kathmandu"> <input type="text"
				class="form-control" id="formGroupExampleInput"
				placeholder="Street No. eg: 123"> <input type="text"
				class="form-control" id="formGroupExampleInput"
				placeholder="Area Code eg: 01"> <input type="text"
				class="form-control" id="formGroupExampleInput"
				placeholder="House No eg: 21">
		</div>
		<button type="button" class="btn btn-outline-primary">Register</button>
	</form>
</body>
</html>