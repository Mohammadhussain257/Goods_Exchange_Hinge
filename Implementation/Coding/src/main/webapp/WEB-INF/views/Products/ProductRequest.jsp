<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class=" light-green lighten-5">
	<%@ include file="../shared/header.jsp"%>
	<div class="container-fluid">
		<h5 class="text-center font-weight-bold text-info">Manage Your
			Product</h5>
		<div class="row">
			<div class="col-md-6">
				<!-- form  -->
				<form:form
					action="save_request_product?${_csrf.parameterName}=${_csrf.token}&userId=${user.userId}"
					method="post" enctype="multipart/form-data"
					class="text-center border border-light p-5  indigo lighten-5"
					modelAttribute="productRequest">

					<p class="h4 mb-4 text-secondary">Request Product To Get One</p>

					<!-- Product Name -->
					<form:errors path="productName" cssClass="text-warning" />
					<form:input type="text" class="form-control mb-4"
						path="productName" placeholder="Product Name" />

					<!-- Product Value -->
					<form:errors path="productValue" cssClass="text-warning" />
					<form:input type="number" class="form-control mb-4"
						path="productValue" placeholder="Product Value" />

					<!-- Category -->
					<label>Product Category</label>
					<form:errors path="category" cssClass="text-warning" />
					<select name="" required
						class="browser-default custom-select mb-4 category">
						<option value="" disabled selected>Choose Category</option>
						<c:forEach items="${categoryList}" var="catList">
							<option value="${catList.id}">${catList.categoryName}</option>
						</c:forEach>
					</select>

					<!-- Date -->
					<form:errors path="date" cssClass="text-warning" />
					<form:input type="date" path="date" class="form-control mb-4"
						placeholder="Product Value" />

					<!-- product description -->
					<div class="form-group">
						<form:errors path="description" cssClass="text-warning" />
						<form:textarea path="description" class="form-control rounded-0"
							id="exampleFormControlTextarea2" rows="3"
							placeholder="Product Description"></form:textarea>
					</div>

					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
						</div>
						<div class="custom-file">
							<input type="file" name="image" class="custom-file-input"
								required id="inputGroupFile01"
								aria-describedby="inputGroupFileAddon01"> <label
								class="custom-file-label" for="inputGroupFile01">Product
								Cover</label>
						</div>
					</div>
					<!-- Send button -->
					<button class="btn btn-info btn-block mt-4" type="submit">UPLOAD</button>
				</form:form>
				<!--  form  -->

			</div>
			<div class="col-md-6">
				<h6 class="text-center font-weight-bold text-info">Request
					Product Details</h6>
				<c:if test="${not empty deletemgs}">
					<div class="alert alert-success" role="alert">${deletemgs}</div>
				</c:if>
				<div class="table-responsive">
					<c:if test="${not empty productRequestList}">
						<table id="dtBasicExample" class="table table-striped ">
							<thead>
								<tr>
									<th>S.N</th>
									<th>Product Name</th>
									<th>Product Value</th>
									<th>Date</th>
									<th>Description</th>
									<th>ImageURL</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${productRequestList}" var="prl">
									<tr>
										<td><c:out value="${prl.productReqId}" /></td>
										<td><c:out value="${prl.productName}" /></td>
										<td><c:out value="${prl.productValue}" /></td>
										<td><c:out value="${prl.date}" /></td>
										<td><c:out value="${prl.description}" /></td>
										<td><c:out value="${prl.imageUrl}" /></td>
										<td><span class="text-danger"><a
												class="text-danger" data-toggle="tooltip"
												data-placement="right" title="Delete"
												href="delete_request_exchange?productReqId=${prl.productReqId}"><i
													class="fas fa-trash fa-2x"></i></a></span> <span><a
												data-toggle="tooltip" data-placement="right" title="Edit"
												class="text-primary"
												href="edit_request_product?productReqId=${prl.productReqId}"><i
													class="fas fa-edit fa-2x"></i></a></span></td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<th>S.N</th>
									<th>Product Name</th>
									<th>Product Value</th>
									<th>Date</th>
									<th>Description</th>
									<th>ImageURL</th>
									<th>Action</th>
								</tr>
							</tfoot>
						</table>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../shared/footer.jsp"%>
</div>
<!-- <script>
	$(document).ready(function() {
		$("select.category").change(function() {
			var selectedCategoryid = $(this).children("option:selected").val();
			alert("You have selected the country - " + selectedCategoryid);
		});
	});
</script> -->