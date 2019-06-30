<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../shared/header.jsp"%>
<div class=" indigo lighten-4">
	<div>
		<h4 class="text-center font-weight-bold text-primary">Product
			Details</h4>
	</div>

	<div class="container">
		<div class="row">

			<c:if test="${not empty sprl}">
				<div class="col-md-2"></div>
				<div class="col-md-10">
					<div class="view overlay rounded mb-4">
						<img class="img-fluid w-75 p-3"
							src="product_request_images?productReqId=${sprl.productReqId}"
							alt="Product Image" />
					</div>
					<!-- Excerpt -->
					<p class="font-weight-bold dark-grey-text">
						Added On :<span class="brown-text">${sprl.date}</span>
					</p>
					<div class="d-flex justify-content-between">
						<div class="col-11 text-truncate pl-0 mb-3">
							<p class="font-weight-bold dark-grey-text">
								Product Name: <span class="brown-text">${sprl.productName}</span>
							</p>
							<c:choose>
								<c:when test="${sprl.productValue eq 0 }">
									<p class="font-weight-bold dark-grey-text mt-4">
										Product Value: <span class="brown-text">Free or Can be
											negotiable</span>
									</p>
								</c:when>
								<c:otherwise>
									<p class="font-weight-bold dark-grey-text mt-4">
										Value: <span class="brown-text">&#8360
											${sprl.productValue}</span>
									</p>
								</c:otherwise>
							</c:choose>
							<p
								class="font-weight-bold dark-grey-text text-justify text-break mt-4">
								Description: <span class="brown-text">${sprl.description}</span>
							</p>
						</div>
					</div>
				</div>
				<div>
					<h4 class="text-secondary">Contact Detail</h4>
					<%-- <p class="font-weight-bold dark-grey-text text-break mt-4">
						Username:<span class="text-primary"> ${sprl.user.username}</span>
					</p>
					<p class="font-weight-bold dark-grey-text text-break mt-4">
						Email: <span class="text-primary">${sprl.user.email}</span>
					</p>
					<p class="font-weight-bold dark-grey-text text-break mt-4">
						User Address: <span class="text-primary">${sprl.user.address}</span>
					<p class="font-weight-bold dark-grey-text text-break mt-4">
						Contact Number: <span class="text-primary">${sprl.user.phoneNumber}</span>
					</p> --%>
				</div>
			</c:if>
		</div>
	</div>
	<%@ include file="../shared/footer.jsp"%>
</div>
