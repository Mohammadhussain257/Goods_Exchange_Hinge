<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>dashboard</title>

</head>
<body>
	<!-- Header -->
	<%@ include file="../shared/header.jsp"%>
	<!-- Header -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3">
				<%@ include file="./sidebar.jsp"%>
			</div>
			<div class="col-sm-9">
				<h5
					class="text-center mt-2 font-weight-bold text-secondary text-uppercase">Dashboard
					Info</h5>
				<hr class="text-info mt-4" />
				<!--Grid row-->
				<div class="row mt-4">

					<!--Grid column-->
					<div class="col-md-6 mb-4">
						<!-- Card -->
						<div class="card gradient-card">
							<div class="card-image">
								<!-- Content -->
								<div class="text-white d-flex h-100 mask blue-gradient-rgba">
									<div class="first-content align-self-center p-3">
										<h3 class="card-title">Product Exchange</h3>
										<p class="lead mb-0">Total Number of Goods Added</p>
									</div>
									<div
										class="second-content align-self-center mx-auto text-center">
										<p class="text-info">Total product:</p>
										<i class="fas fa fa-asterisk fa-3x light-blue-text"><span>${totalExchangeProduct}</span></i>
									</div>
								</div>
							</div>
							<!-- Content -->
						</div>
						<!-- Card -->
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-md-6 mb-4">

						<!-- Card -->
						<div class="card gradient-card">
							<div class="card-image">

								<!-- Content -->
								<div class="text-white d-flex h-100 mask purple-gradient-rgba">
									<div class="first-content align-self-center p-3">
										<h3 class="card-title">Product Request</h3>
										<p class="lead mb-0">Total Number of Goods Added</p>
									</div>
									<div
										class="second-content align-self-center mx-auto text-center">
										<p class="text-secondary">Total Product</p>
										<i class="fas fa fa-asterisk fa-3x text-secondary"><span>${totalRequestProduct}</span></i>
									</div>
								</div>
							</div>
						</div>
						<!-- Card -->

					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-md-6 mb-4">

						<!-- Card -->
						<div class="card gradient-card">

							<div class="card-image">
								<!-- Content -->
								<div class="text-white d-flex h-100 mask peach-gradient-rgba">
									<div class="first-content align-self-center p-3">
										<h3 class="card-title">User</h3>
										<p class="lead mb-0">Total Number of User</p>
									</div>
									<div
										class="second-content align-self-center mx-auto text-center">
										<p class="deep-orange-text">Total User</p>
										<i class="fas fa fa-asterisk fa-3x deep-orange-text"><span>${totalUser}</span></i>
									</div>
								</div>
							</div>
						</div>
						<!-- Card -->
					</div>
					<!--Grid column-->

					<!--Grid column-->
					<div class="col-md-6 mb-4">
						<!-- Card -->
						<div class="card gradient-card">

							<div class="card-image">
								<!-- Content -->
								<div class="text-white d-flex h-100 mask aqua-gradient-rgba">
									<div class="first-content align-self-center p-3">
										<h3 class="card-title">Frequently Ask Question</h3>
										<p class="lead mb-0">Total FAQ Asked</p>
									</div>
									<div
										class="second-content align-self-center mx-auto text-center">
										<p class="text-default">Total FAQ</p>
										<i class="fas fa fa-asterisk fa-3x text-default"><samp>${totalFaq}</samp></i>
									</div>
								</div>
							</div>

						</div>
						<!-- Card -->
					</div>
					<!--Grid column-->
					<div class="col-md-6 mb-4">
						<!-- Card -->
						<div class="card gradient-card">

							<div class="card-image">
								<!-- Content -->
								<div class="text-white d-flex h-100 mask deep-blue-gradient">
									<div class="first-content align-self-center p-3">
										<h3 class="card-title">Product Category</h3>
										<p class="lead mb-0">Total Number of Category</p>
									</div>
									<div
										class="second-content align-self-center mx-auto text-center">
										<p class="blue-text">Total Cetegory</p>
										<i class="fas fa fa-asterisk fa-3x blue-text"><samp>${totalCategory}</samp></i>
									</div>
								</div>
							</div>

						</div>
						<!-- Card -->
					</div>
				</div>
				<!--Grid row-->
			</div>
		</div>
		<!--Main layout-->
		<!-- Footer page included -->
	</div>
	<%@ include file="../shared/footer.jsp"%>

</body>
</html>