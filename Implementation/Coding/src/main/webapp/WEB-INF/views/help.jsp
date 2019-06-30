<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="light-green lighten-5">
	<!-- include header page -->
	<%@ include file="./shared/header.jsp"%>
	<div class="container">
		<h5 class="font-weight-bold mt-4 text-center">HELP</h5>
		<hr class="mt-4 secondary-color">
		<p class="text-justify font-weight-normal text-center">
			If you have any problems or questions, try to find an answer in the
			community forum page.<br /> Also, this Articles section contains
			general information about how our site works. <br />If you still
			need support don't hesitate to contact us.
		</p>
		<hr class="mt-4 secondary-color">
	</div>

	<!--Accordion wrapper-->
	<div class="container accordion md-accordion accordion-1"
		id="accordionEx23" role="tablist">
		<c:if test="${not empty faqList}">
			<c:forEach items="${faqList}" var="faq">
				<div class="card">
					<div class="card-header blue lighten-3 z-depth-1" role="tab"
						id="heading96">
						<h5 class="text-uppercase mb-0 py-1">
							<a class="white-text font-weight-bold text-uppercase"
								data-toggle="collapse" href="#collapse96" aria-expanded="true"
								aria-controls="collapse96"> ${faq.title}</a>
						</h5>
					</div>
					<div id="collapse96" class="collapse show" role="tabpanel"
						aria-labelledby="heading96" data-parent="#accordionEx23">
						<div class="card-body">
							<div class="row my-4">
								<div class="col-md-8">
									${faq.content}
									<blockquote class="blockquote bq-primary">
										<p class="bq-title">Note:</p>
										<p>${faq.note}</p>
									</blockquote>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>
	<div class="container mt-3 pt-2">
		<div class="row mt-3 pt-2">
			<div class="col-sm">
				<h6 class="text-secondary font-weight-bold">Register, Login and View Produc Details</h6>
				<div class="view z-depth-1">
					<a href="resources/image/help/how_can_i_exchange.png"><img
						src="resources/image/help/how_can_i_exchange.png" alt=""
						class="img-fluid"></a>
				</div>
			</div>
			<div class="col-sm">
			<h6 class="text-secondary font-weight-bold">Manage Your Profile</h6>
				<div class="view z-depth-1">
					<a href="resources/image/help/how_can_i_mange_profile.png"><img
						src="resources/image/help/how_can_i_mange_profile.png" alt=""
						class="img-fluid"></a>
				</div>
			</div>
			<div class="col-sm-4">
			<h6 class="text-secondary font-weight-bold">Upload and Manage Products</h6>
				<div class="view z-depth-1">
					<a href="resources/image/help/how_can_i_upload.png"><img
						src="resources/image/help/how_can_i_upload.png" alt=""
						class="img-fluid"></a>
				</div>
			</div>
		</div>
	</div>
	<!--Accordion wrapper-->
	<!-- include footer page -->
	<%@ include file="./shared/footer.jsp"%>
</div>
