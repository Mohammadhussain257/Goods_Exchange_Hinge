<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../shared/header.jsp"%>
<div>
	<h4 class="text-center font-weight-bold text-primary">Product
		Details</h4>
</div>

<div class="container">
	<div class="row">

		<c:if test="${not empty spel}">
			<div class="col-md-2"></div>
			<div class="col-md-10">
				<div class="view overlay rounded z-depth-1 mb-4">
					<img class="img-fluid"
						src="product_request_images?productReqId=${spel.productExcId}"
						alt="Product Image" />
				</div>
				<!-- Excerpt -->
				<p class="font-weight-bold dark-grey-text">Added On
					:${spel.date}</p>
				<div class="d-flex justify-content-between">
					<div class="col-11 text-truncate pl-0 mb-3">
						<p class="font-weight-bold dark-grey-text">Product Name:
							${spel.productName}</p>
						<c:choose>
							<c:when test="${spel.productValue eq 0}">
								<p class="font-weight-bold dark-grey-text mt-4">Exchange can
									done through negotiation.</p>
							</c:when>
							<c:otherwise>
								<p class="font-weight-bold dark-grey-text mt-4">Value:
									&#8360 ${spel.productValue}</p>
							</c:otherwise>
						</c:choose>
						<p
							class="font-weight-bold dark-grey-text text-justify text-break mt-4">Product
							Exchange Open for: ${spel.exchangeFor}</p>
						<p
							class="font-weight-bold dark-grey-text text-justify text-break mt-4">Description:
							${spel.description}</p>
					</div>
				</div>
			</div>
		</c:if>
	</div>
</div>
<%@ include file="../shared/footer.jsp"%>