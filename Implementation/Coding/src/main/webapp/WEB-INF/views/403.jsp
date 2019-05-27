<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Access Denied</title>
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
<body class="night-fade-gradient">
	<br />
	<hr class="mt-4" />
	<div class="container mt-4">
		<div class="row">
			<div class="col-sm mt-4">
				<!-- Jumbotron -->
				<div class="jumbotron text-center winter-neva-gradient mx-2 mb-5">

					<!-- Title -->
					<h2 class="card-title text-danger">${title}</h2>

					<!-- Subtitle -->
					<p class="my-4 h6 text-warning">${errorTitle}</p>

					<!-- Grid row -->
					<div class="row d-flex justify-content-center">

						<!-- Grid column -->
						<div class="col-xl-7 pb-2">

							<p class="card-text">${errorDescription}</p>

						</div>
						<!-- Grid column -->

					</div>
					<!-- Grid row -->

					<hr class="my-4 rgba-white-light">

					<div class="pt-2">
						<a href="get_home"><button type="button" class="btn btn-info">
								Go! HOME</button></a>
					</div>

				</div>
				<!-- Jumbotron -->
			</div>
		</div>
	</div>
	<br />
	<br />
	<hr class="mt-4" />

	<!-- include footer page -->
	<%@ include file="./shared/footer.jsp"%>




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
</body>
</html>