<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- include header page -->
<%@ include file="../shared/header.jsp"%>
<div class="deep-blue-gradient">
	<div class="container">
		<!-- Grid row -->
		<div class="row">
			<!-- Grid column -->
			<div class="col-sm col-xl col-md col-lg text-center">
				<div class="avatar mx-auto col-lg-4 col-md-12 mb-4 mt-2">
					<img style="width: 50%; height: 50%"
						src="https://mdbootstrap.com/img/Photos/Others/placeholder-avatar.jpg"
						class="rounded-circle img-fluid" alt="Responsive image">
				</div>
				<div class="mt-4">
					<form action="uploadProfileimage?${_csrf.parameterName}=${_csrf.token}&userId=${user.userId}" method="post"
						enctype="multipart/form-data">
						<div class="d-flex justify-content-center">
							<div class="input-group col-lg-6 col-md-12">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroupFileAddon01">Change
										Profile Picture</span>
								</div>
								<div class="custom-file">

									<input type="file" name="image" class="custom-file-input"
										id="inputGroupFile01" aria-describedby="inputGroupFileAddon01"
										required></input> <label class="custom-file-label"
										for="inputGroupFile01">Choose Your Avatar</label>
								</div>
							</div>
						</div>
						<button type="submit"
							class="btn btn-rounded btn blue-gradient mt-4">
							<span>UPLOAD</span>
						</button>
					</form>
				</div>
				<hr class="danger-color-dark md" />
			</div>

			<!-- Grid column -->
		</div>
		<!-- Grid row -->
		<!-- Section: Contact v.2 -->
		<section class="my-5">

			<!-- Section heading -->
			<h2 class="h1-responsive font-weight-bold text-center my-5">Profile
				Info</h2>

			<!-- Grid row -->
			<div class="row">

				<!-- Grid column -->
				<div class="col-md-9 mb-md-0 mb-5">
					<c:if test="${not empty user}">
						<form>

							<!-- Grid row -->
							<div class="row">

								<!-- Grid column -->
								<div class="col-md-6">
									<p class="uppercase font-weight-bold">First Name</p>
									<div class="md-form mb-0">
										<input type="text" readonly class="form-control"
											value="${user.firstName}"></input>
									</div>
								</div>
								<!-- Grid column -->

								<!-- Grid column -->
								<div class="col-md-6">
									<p class="uppercase font-weight-bold">Last Name</p>
									<div class="md-form mb-0">
										<input type="text" readonly class="form-control"
											value="${user.lastName}"></input>
									</div>
								</div>
								<!-- Grid column -->

							</div>
							<!-- Grid row -->

							<!-- Grid row -->
							<div class="row">

								<!-- Grid column -->
								<div class="col-md-6">
									<p class="uppercase font-weight-bold">Gender</p>
									<div class="md-form mb-0">
										<input type="text" readonly class="form-control"
											value="${user.gender}"></input>
									</div>
								</div>
								<!-- Grid column -->

								<!-- Grid column -->
								<div class="col-md-6">
									<p class="uppercase font-weight-bold">Date of Birth</p>
									<div class="md-form mb-0">
										<input type="text" readonly class="form-control"
											value="${user.dob}"></input>
									</div>
								</div>
								<!-- Grid column -->

							</div>
							<!-- Grid row -->

							<!-- Grid row -->
							<div class="row">

								<!-- Grid column -->
								<div class="col-md-12">
									<p class="uppercase font-weight-bold">Username</p>
									<div class="md-form mb-0">
										<input type="text" readonly class="form-control"
											value="${user.username}"></input>
									</div>
								</div>
								<!-- Grid column -->
							</div>
							<!-- Grid row -->
						</form>
					</c:if>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-3 text-center">
					<ul class="list-unstyled mb-0">
						<li><i class="fas fa-map-marker-alt fa-2x blue-text"></i>
							<p>${user.address}</p></li>
						<li><i class="fas fa-phone fa-2x mt-4 blue-text"></i>
							<p>${user.phoneNumber}</p></li>
						<li><i class="fas fa-envelope fa-2x mt-4 blue-text"></i>
							<p class="mb-0">${user.email}</p></li>
					</ul>
				</div>
				<!-- Grid column -->

			</div>
			<!-- Grid row -->

		</section>
		<!-- Section: Contact v.2 -->
	</div>
	<!-- include footer page -->
	<%@ include file="../shared/footer.jsp"%>
</div>
