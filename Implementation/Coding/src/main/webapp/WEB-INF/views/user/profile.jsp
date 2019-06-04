<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- include header page -->
<%@ include file="../shared/header.jsp"%>

<div class="container">

	<div>

		<!-- Grid row -->
		<div class="row">
			<!-- Grid column -->
			<div class="col-sm col-xl col-md col-lg text-center">

				<img src="https://mdbootstrap.com/img/Photos/Avatars/img(31).jpg"
					class="img-fluid z-depth-1 rounded-circle" alt="Responsive image">

				<hr class="danger-color-dark md" />
			</div>

			<!-- Grid column -->
		</div>
		<!-- Grid row -->
		<div class="row">
			<div class="col-sm col-md col-lg col-xl">
				<P>Profile Description</P>
				<p>${userModel.firstName}</p>
				<p>${userModel.lastName}</p>
				<p>${userModel.email}</p>
				<p>${userModel.address}</p>
				<p>${userModel.username}</p>
				<p>${userModel.phoneNumber}</p>
			</div>
		</div>
	</div>
</div>

<!-- include footer page -->
<%@ include file="../shared/footer.jsp"%>