<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Section: Magazine v.1 -->
<section class="magazine-section my-5">
	<div class="row">
		<div class="col-md-6">
			<!-- Grid column -->
			<div class="col-md-3">

				<!--Image-->
				<div class="view overlay rounded z-depth-1 mb-4">
					<img class="img-fluid"
						src="https://mdbootstrap.com/img/Photos/Others/photo8.jpg"
						alt="Sample image"> <a> </a>
				</div>

			</div>
			<!-- Grid column -->

			<!-- Grid column -->
			<div class="col-md-9">
				<!-- Excerpt -->
				<p class="font-weight-bold dark-grey-text">Added On : 19/08/2018</p>
				<div class="d-flex justify-content-between">
					<div class="col-11 text-truncate pl-0 mb-3">
						<a href="#!" class="dark-grey-text">Product Name</a>
						<p class="dark-grey-text">Value: $1000-$2000</p>
						<p class="dark-grey-text">Added by: User Name</p>
					</div>
					<c:choose>
						<c:when test="${userModel.username eq null}">
							<a href="#" data-toggle="modal" data-target="#modalSocial">See
								More<i class="fas fa-angle-double-right"></i>
							</a>
							<!--Modal: modalSocial-->
							<div class="modal fade" id="modalSocial" tabindex="-1"
								role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								<div class="modal-dialog cascading-modal" role="document">


									<!--Header-->
									<div class="modal-header light-blue darken-3 white-text">
										<h4 class="title">
											<i class="fas fa-users"></i> Please login to continue
										</h4>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>


								</div>
							</div>
							<!--Modal: modalSocial-->
						</c:when>
						<c:otherwise>
							<a href="homePagetProductDetails">See More<i class="fas fa-angle-double-right"></i></a>
						</c:otherwise>
					</c:choose>
				</div>

			</div>
			<!-- Grid column -->
		</div>
		<div class="col-md-6">
			<!-- Grid column -->
			<div class="col-md-3">
				<!--Image-->
				<div class="view overlay rounded z-depth-1 mb-4">
					<img class="img-fluid"
						src="https://mdbootstrap.com/img/Photos/Others/photo8.jpg"
						alt="Sample image"> <a> </a>
				</div>

			</div>
			<!-- Grid column -->

			<!-- Grid column -->
			<div class="col-md-9">
				<!-- Excerpt -->
				<p class="font-weight-bold dark-grey-text">Added On : 19/08/2018</p>
				<div class="d-flex justify-content-between">
					<div class="col-11 text-truncate pl-0 mb-3">
						<a href="#!" class="dark-grey-text">Product Name</a>
						<p class="dark-grey-text">Value: $1000-$2000</p>
						<p class="dark-grey-text">Added by: User Name</p>
					</div>
					<a href="#">See More<i class="fas fa-angle-double-right"></i></a>
				</div>

			</div>
			<!-- Grid column -->
		</div>
	</div>
	<!-- Grid row -->
</section>
<!-- Section: Magazine v.1 -->


<script>
	$(function() {
		$("#dialog").dialog({
			autoOpen : false,
			show : {
				effect : "blind",
				duration : 1000
			},
			hide : {
				effect : "explode",
				duration : 1000
			}
		});

		$("#opener").click(function() {
			$("#dialog").dialog("open");
		});
	});
</script>