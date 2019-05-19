<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>
	<form>
		<div class="form-group">
			<p class="text-center">LOGIN</p>
			<label for="exampleInputEmail1">USERNAME</label> <input type="email"
				class="form-control" id="exampleInputEmail1"
				aria-describedby="emailHelp" placeholder="username"> <small
				id="emailHelp" class="form-text text-muted">We'll never
				share your data with anyone else.</small>
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1">PASSWORD</label> <input
				type="password" class="form-control" id="exampleInputPassword1"
				placeholder="Password">
		</div>
		<div class="form-group form-check">
			<input type="checkbox" class="form-check-input" id="exampleCheck1">
			<label class="form-check-label" for="exampleCheck1">Remember
				me</label>
		</div>
		<button type="button" class="btn btn-outline-success">Login</button>
		<a>Forgot your login details?</a>
	</form>
</body>
</html>