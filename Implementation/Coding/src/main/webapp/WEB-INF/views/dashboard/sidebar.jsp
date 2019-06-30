<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sidebar</title>
</head>
<body class=" indigo lighten-5">
	<!-- Side bar -->
	<div class="sidebar-fixed">

		<a class="logo-wrapper waves-effect"><img class="img-fluid"
			style="width: 40%; height: 40%;" alt="website logo"
			src="resources/image/logo.png"></a>
		<div class="list-group list-group-flush  indigo lighten-5">
			<a href="getDashboard" class="list-group-item active waves-effect">
				<i class="fas fa-chart-pie mr-3"></i>DASHBOARD
			</a> <a href="category"
				class="light-green lighten-5 list-group-item list-group-item-action waves-effect">
				<i class="fas fa-align-center"></i>CATEGORY
			</a>
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a href="#"
					class="text-reset light-green lighten-5 list-group-item list-group-item-actionwaves-effect nav-link dropdown-toggle"
					id="navbarDropdownMenuLink-333" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> <i
						class="fas fa-shopping-cart"></i>PRODUCTS
				</a>
					<div class="dropdown-menu dropdown-default"
						aria-labelledby="navbarDropdownMenuLink-333">
						<a href="dashboard_product_exchange" class="dropdown-item">PRODUCT
							EXCHANGE</a> <a href="dashboard_product_request"
							class="dropdown-item">PRODUCT REQUEST</a>
					</div></li>
			</ul>
			<!-- <a href="#"
				class="light-green lighten-5 list-group-item list-group-item-action waves-effect">
				<i class="fas fa-user mr-3"></i>ACTIVE USER
			</a> --> <a href="user_list"
				class="light-green lighten-5 list-group-item list-group-item-action waves-effect">
				<i class="fas fa-table mr-3"></i>USER DETAILS
			</a> <a href="getFaq"
				class="light-green lighten-5 list-group-item list-group-item-action waves-effect">
				<i class="fas fa-money-bill-alt mr-3"></i>FAQ
			</a>
		</div>
	</div>
	<!-- Side bar -->
</body>
</html>