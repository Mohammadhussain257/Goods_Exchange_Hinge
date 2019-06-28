<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Section: Magazine v.1 -->
<%@ include file="../shared/header.jsp"%>

<!--  include search form -->
<%@ include file="../common/search.jsp"%>
<div class="container">
	<div class="col-md-12 light-green lighten-5">
		<h4 class="text-center font-weight-bold text-primary">Search
			Result</h4>
		<!-- Grid column -->
		<c:if test="${not empty searchProductExchangeList}">
			<c:forEach items="${searchProductExchangeList}" var="spel">
				<div class="col-md-3">
					<!--Image-->
					<div class="view overlay rounded z-depth-1 mb-4">
						<img class="img-fluid"
							src="product_exhange_images?productExcId=${spel.productExcId}"
							alt="Product Image"> <a> </a>
					</div>
				</div>
				<!-- Grid column -->

				<!-- Grid column -->
				<div class="col-md-9">
					<!-- Excerpt -->
					<p class="font-weight-bold dark-grey-text">Added On
						:${spel.date}</p>
					<div class="d-flex justify-content-between">
						<div class="col-11 text-truncate pl-0 mb-3">
							<a href="#!" class="dark-grey-text">Product Name:
								${spel.productName}</a>
							<p class="dark-grey-text">Value: &#8360 ${spel.productValue}</p>
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
								<a
									href="getProductExchangetDetail?productExcId=${spel.productExcId}">See
									More<i class="fas fa-angle-double-right"></i>
								</a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</c:forEach>
		</c:if>
		<!-- Grid column -->
	</div>
</div>
<!-- Grid row -->

<!-- include footer page -->
<%@ include file="../shared/footer.jsp"%>
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