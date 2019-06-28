<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body class="indigo lighten-4">
	<!-- include header page -->
	<%@ include file="./shared/header.jsp"%>
	<hr class="mt-4" />
	<!--  form login -->
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-lg-8 col-xl-8 mt-4">
				<div class="row">
					<div class="col-sm-6 col-lg-6 col-xl-6"></div>
					<div class="col-sm-6 col-lg-6 col-xl-6  mt-4">
						<c:if test="${not empty message}">
							<div class="alert alert-danger" role="alert">${message}</div>
						</c:if>
						<c:if test="${not empty logout}">
							<div class="alert alert-success" role="alert">${logout}</div>
						</c:if>
						<c:if test="${not empty emailnotfoundmsg}">
							<div class="alert alert-warning" role="alert">${emailnotfoundmsg}</div>
						</c:if>
						<c:if test="${not empty emailsendsuccessmsg}">
						<div class="alert alert-success" role="alert">${emailsendsuccessmsg}</div>
						</c:if>
						<form action="login" method="POST"
							class="text-center border border-light p-5 heavy-rain-gradient">

							<p class="h4 mb-4">Sign in</p>

							<!-- Username -->
							<input type="text" id="defaultLoginFormEmail" name="username"
								class="form-control mb-4" placeholder="username" required>

							<!-- Password -->
							<input type="password" id="defaultLoginFormPassword"
								name="password" class="form-control mb-4" placeholder="Password"
								required>

							<div class="d-flex justify-content-around">
								<div>
									<!-- Remember me -->
									<!-- <div class="custom-control custom-checkbox">
										<input type="checkbox" class="custom-control-input"
											id="defaultLoginFormRemember"> <label
											class="custom-control-label" for="defaultLoginFormRemember">Remember
											me</label>
									</div> -->
								</div>
								<div>
									<!-- Forgot password -->
									<a href="#" data-toggle="modal" data-target="#modalLoginForm">Forgot
										password?</a>
								</div>
							</div>
							<!-- Sign in button -->
							<button class="btn btn-info btn-block my-4" type="submit">Sign
								in</button>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
						<!--form login -->
					</div>
					<form action="forgot_password" method="post">
						<div class="modal fade winter-neva-gradient" id="modalLoginForm"
							tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header text-center">
										<h4 class="modal-title w-100 font-weight-bold">Reset
											Password</h4>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body mx-3">
										<div class="md-form mb-5">
											<i class="fas fa-envelope prefix grey-text"></i> <input
												type="email" class="form-control" required name="email">
											<label>Your email</label>
										</div>
									</div>
									<div class="modal-footer d-flex justify-content-center">
										<button class="btn btn-default" type="submit">SEND</button>
									</div>
									<input type="hidden" name="${_csrf.parameterName}"
										value="${_csrf.token}" />
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- include footer page -->
	<%@ include file="./shared/footer.jsp"%>
</body>
</html>