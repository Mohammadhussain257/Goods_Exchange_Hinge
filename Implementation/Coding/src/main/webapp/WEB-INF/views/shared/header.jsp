<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- import security tags -->
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>header</title>
<link href="resources/fonts/css/fontawesome-all.min.css"
	rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--Bootstrap -->
<link href="resources/bootstrap/css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="resources/bootstrap/css/style.css" rel="stylesheet">
<!-- Bootstrap data table -->
<link href="resources/bootstrap/css/addons/datatables.min.css"
	rel="stylesheet">
</head>
<body>
	<!--Navbar -->
	<nav class="mb-1 navbar navbar-expand-lg navbar-dark unique-color">
		<a class="navbar-brand" href="get_home"><i
			class="fab fa-accessible-icon fa-3x"></i>Goods Exchange Hinge</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent-333"
			aria-controls="navbarSupportedContent-333" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent-333">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="get_home">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<!--  allow access to anonymous user start-->

				<li class="nav-item"><a class="nav-link" href="exchange">EXCHANGE</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">SALE</a></li>
				<li class="nav-item"><a class="nav-link" href="request">REQUEST</a></li>
				<security:authorize access="hasAuthority('USER')">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">MANAGE
							PRODUCT </a>
						<div class="dropdown-menu dropdown-default"
							aria-labelledby="navbarDropdownMenuLink-333">
							<a href="ProductExchange?userId=${userModel.userId}"
								class="dropdown-item">PRODUCT EXCHANGE</a> <a
								href="ProductRequest?userId=${userModel.userId}"
								class="dropdown-item">PRODUCT REQUEST</a>
						</div></li>
				</security:authorize>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">COMMUNITY
				</a>
					<div class="dropdown-menu dropdown-default"
						aria-labelledby="navbarDropdownMenuLink-333">
						<a class="dropdown-item" href="forum">FORUM</a> <a
							class="dropdown-item" href="help">HELP</a>
					</div></li>
				<!--  allow access to anonymous user end-->

				<!-- Give the authority only to the administrator -->
				<security:authorize access="hasAuthority('ADMIN')">
					<li class="nav-item"><a class="nav-link" href="getDashboard">DASHBOARD</a>
					</li>
				</security:authorize>
			</ul>
			<ul class="navbar-nav ml-auto nav-flex-icons">
				<!-- only authenticated user can access -->
				<security:authorize access="isAuthenticated()">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<img src="show_profile_pic?userId=${userModel.userId}"
							class="rounded-circle z-depth-0" alt="avatar image" height="35">
					</a>
						<div class="dropdown-menu dropdown-menu-right dropdown-default"
							aria-labelledby="navbarDropdownMenuLink-333">
							<a class="dropdown-item text-center" href="#">${userModel.username}</a>
							<a class="dropdown-item text-center"
								href="getProfile?userId=${userModel.userId}">Profile</a> <a
								class="dropdown-item text-center"
								href="editForm?userId=${userModel.userId}">Setting</a> <a
								class="dropdown-item text-center" href="logout-user">Logout</a>
						</div></li>
				</security:authorize>
			</ul>
		</div>
	</nav>

	<script type="text/javascript"
		src="resources/bootstrap/js/jquery-3.4.0.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript"
		src="resources/bootstrap/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="resources/bootstrap/js/bootstrap.min.js"></script>
	<!--core JavaScript -->
	<script type="text/javascript" src="resources/bootstrap/js/mdb.min.js"></script>
	<!--Data table JavaScript -->
	<script type="text/javascript"
		src="resources/bootstrap/js/addons/datatables.min.js"></script>
	<script type="text/javascript" src="resources/bootstrap/js/custome.js"></script>
	<script>
		$(document).ready(function() {
			$('#dtBasicExample').DataTable();
			$('.dataTables_length').addClass('bs-select');
		});

		$('.alert').alert()
		$(".alert").alert('close')
	</script>
</body>
</html>