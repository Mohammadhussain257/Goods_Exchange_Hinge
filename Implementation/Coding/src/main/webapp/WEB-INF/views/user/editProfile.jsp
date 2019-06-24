<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>edit profile</title>
</head>
<body class="purple lighten-4">
	<!-- include header page -->
	<%@ include file="../shared/header.jsp"%>

	<hr />
	<div class="container">
		<!-- Section: Contact v.3 -->
		<section class="contact-section my-5">
			<!-- Form with header -->
			<div class="card heavy-rain-gradient">
				<!-- Grid row -->
				<div class="row">
					<!-- Grid column -->
					<div class="col-lg-8">
						<div class="card-body form">
							<!-- Header -->
							<h3 class="mt-4 text-center text-secondary">
								<i class="far fa-edit"></i>Profile Info
							</h3>
							<form:form action="update_user" method="POST"
								modelAttribute="user"
								class="text-center border border-light p-5 frozen-dreams-gradient">
								<!-- Grid row -->
								<div class="row">
									<form:input type="hidden" class="form-control" path="userId"></form:input>
									<!-- Grid column -->
									<div class="col-md-6">
										<div class="md-form mb-0">
											<!-- First name -->
											<p class="font-weight-bold text-uppercase float-left">First
												Name</p>
											<form:input type="text" class="form-control" path="firstName"></form:input>
										</div>
									</div>
									<!-- Grid column -->

									<!-- Grid column -->
									<div class="col-md-6">
										<div class="md-form mb-0">
											<!-- Last name -->
											<p class="font-weight-bold text-uppercase float-left">Last
												Name</p>
											<form:input type="text" class="form-control" path="lastName"></form:input>

										</div>
									</div>
									<!-- Grid column -->

								</div>
								<!-- Grid row -->

								<!-- Grid row -->
								<div class="row">

									<!-- Grid column -->
									<div class="col-md-6">
										<div class="md-form mb-0">
											<!-- Date of birth-->
											<p class="font-weight-bold text-uppercase float-left">Date
												Of Birth</p>
											<form:input type="date" class="form-control mb-4" path="dob"></form:input>

										</div>
									</div>
									<!-- Grid column -->

									<!-- Grid column -->
									<div class="col-md-6">

										<!-- gender-->
										<p class="font-weight-bold text-uppercase">Gender</p>
										<form:radiobuttons class="" path="gender"
											items="${genderList}" />


									</div>
									<!-- Grid column -->

									<!-- Grid column -->
									<div class="col-md-6">
										<div class="md-form mb-0">
											<!-- Phone number -->
											<p class="font-weight-bold text-uppercase float-left">Contact
												No.</p>
											<form:input type="text" class="form-control"
												path="phoneNumber"></form:input>

										</div>
									</div>
									<!-- Grid column -->

									<!-- Grid column -->
									<div class="col-md-6">
										<div class="md-form mb-0">
											<!-- username -->
											<p class="font-weight-bold text-uppercase float-left">Username</p>
											<form:input type="text" class="form-control" path="username"></form:input>

										</div>
									</div>
									<!-- Grid column -->

									<!-- Grid column -->
									<div class="col-md-6">
										<div class="md-form mb-0">
											<!-- Phone number -->
											<p class="font-weight-bold text-uppercase float-left">Address</p>
											<form:input type="text" class="form-control" path="address"></form:input>

										</div>
									</div>

									<!-- Grid column -->
									<div class="col-md-6">
										<div class="md-form mb-0">
											<!-- Phone number -->
											<p class="font-weight-bold text-uppercase float-left">Email</p>
											<form:input type="text" class="form-control" path="email"></form:input>

										</div>
									</div>
								</div>
								<!-- Update button -->
								<form:button class="btn btn-info my-4 btn-block" type="submit">Update</form:button>
							</form:form>
							<!-- Grid row -->


						</div>

					</div>
					<!-- Grid column -->

					<!-- Grid column -->
					<div class="col-lg-4">
						<div class="card-body contact text-center h-100 mt-4">
							<c:if test="${not empty passwordChange}">
								<div class="alert alert-success" role="alert">${passwordChange}</div>
							</c:if>
							<c:if test="${not empty errormsg}">
								<div class="alert alert-danger" role="alert">${errormsg}</div>
							</c:if>
							<h5 class="mt-4 text-center text-secondary mt-4">
								<i class="far fa-edit"></i>Change password
							</h5>
							<!-- Form Model -->
							<form:form action="change_password?userId=${userModel.userId}"
								method="post" modelAttribute="user">
								<div class="modal fade" id="modalRegisterForm" tabindex="-1"
									role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
									<div class="modal-dialog" role="document">
										<div class="modal-content">
											<div class="modal-header text-center deep-purple lighten-4">
												<h4 class="modal-title w-100 font-weight-bold">Change
													Your Password</h4>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body mx-3">
												<div class="md-form mb-5">
													<input type="password" id="orangeForm-name"
														class="form-control validate" name="oldPassword" /> <label
														data-error="wrong" data-success="right"
														for="orangeForm-name">Old Password</label>
												</div>
												<div class="md-form mb-5">
													<input type="password" id="orangeForm-email"
														class="form-control validate" name="newPassword" /> <label
														data-error="wrong" data-success="right"
														for="orangeForm-email">New Password</label>
												</div>
											</div>
											<div class="modal-footer d-flex justify-content-center">
												<button class="btn btn-warning">Change</button>
											</div>
											<input type="hidden" name="${_csrf.parameterName}"
												value="${_csrf.token}" />
										</div>
									</div>
								</div>
							</form:form>
							<div class="text-center">
								<a href="" class="btn btn-primary btn-rounded mb-4"
									data-toggle="modal" data-target="#modalRegisterForm">Change
									Your Password</a>
							</div>

							<!-- Form Model -->
							<hr class="hr-light my-4 mt-4">
							<h5 class="my-4 pb-2 text-secondary">Contact Info</h5>

							<ul class="text-lg-left list-unstyled ml-4">
								<li>
									<p>
										<i class="fas fa-map-marker-alt pr-2"></i>${userModel.address}
									</p>
								</li>
								<li>
									<p>
										<i class="fas fa-phone pr-2"></i>+ ${userModel.phoneNumber}
									</p>
								</li>
								<li>
									<p>
										<i class="fas fa-envelope pr-2"></i>${userModel.email}
									</p>
								</li>
							</ul>
							<hr class="hr-light my-4">

						</div>

					</div>
					<!-- Grid column -->

				</div>
				<!-- Grid row -->

			</div>
			<!-- Form with header -->

		</section>
	</div>
	<!-- Section: Contact v.3 -->

	<!-- include footer page -->
	<%@ include file="../shared/footer.jsp"%>
</body>
</html>