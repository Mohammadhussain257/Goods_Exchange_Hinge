<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!-- include header page -->
<%@ include file="../shared/header.jsp"%>
<div class="container row">
	<div class="col-md-3"></div>
	<div class="col-md-6">
		<c:if test="${not empty update}">
			<div class="alert alert-success" role="alert">${update}</div>
		</c:if>
		<form:form
			action="update_request_product?${_csrf.parameterName}=${_csrf.token}"
			method="post" enctype="multipart/form-data"
			class="text-center border border-light p-5  indigo lighten-5"
			modelAttribute="productRequest">

			<p class="h4 mb-4 text-secondary">Edit Product Request Detail</p>
			<form:input type="hidden" class="form-control" path="productReqId"></form:input>
			<!-- Product Name -->
			<form:errors path="productName" cssClass="text-warning" />
			<form:input type="text" class="form-control mb-4" path="productName"
				placeholder="Product Name" />

			<!-- Product Value -->
			<form:errors path="productValue" cssClass="text-warning" />
			<form:input type="number" class="form-control mb-4"
				path="productValue" placeholder="Product Value" />

			<!-- Category -->
			<label>Product Category</label>
			<form:errors path="category" cssClass="text-warning" />
			<select name="" 
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
						id="inputGroupFile01" aria-describedby="inputGroupFileAddon01"></input>
					<label class="custom-file-label" for="inputGroupFile01">Product
						Cover</label>
				</div>
			</div>
			<!-- Send button -->
			<button class="btn btn-info btn-block mt-4" type="submit">Save
				Changes</button>
		</form:form>
	</div>
	<div class="col-md-3"></div>
</div>
<!-- include footer page -->
<%@ include file="../shared/footer.jsp"%>