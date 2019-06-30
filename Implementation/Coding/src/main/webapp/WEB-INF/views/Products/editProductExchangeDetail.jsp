<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="../shared/header.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<c:if test="${not empty update}">
				<div class="alert alert-success" role="alert">${update}</div>
			</c:if>
			<!-- form  -->
			<form:form
				action="update_exchange_product?${_csrf.parameterName}=${_csrf.token}"
				method="post" enctype="multipart/form-data"
				class="text-center border border-light p-5 indigo lighten-5"
				modelAttribute="productExchange">

				<p class="h4 mb-4 text-secondary">Edit Product Exchange Detail</p>
				<form:input type="hidden" class="form-control" path="productExcId"></form:input>
				<!-- Product Name -->
				<form:errors path="productName" cssClass="text-warning" />
				<form:input type="text" path="productName" class="form-control mb-4"
					placeholder="Product Name" />

				<!-- Product Value -->
				<form:errors path="productValue" cssClass="text-warning" />
				<form:input type="number" path="productValue"
					class="form-control mb-4" placeholder="Product Value" />

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
				<!-- product open for -->
				<div class="form-group">
					<form:errors path="exchangeFor" cssClass="text-warning" />
					<form:textarea path="exchangeFor" class="form-control rounded-0"
						id="exampleFormControlTextarea2" rows="3"
						placeholder="Explain what you want to exchange with"></form:textarea>
				</div>

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
							id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" />
						<label class="custom-file-label" for="inputGroupFile01">Product
							Cover</label>
					</div>
				</div>
				<!-- Send button -->
				<button class="btn btn-info btn-block mt-4" type="submit">Save
					Changes</button>
			</form:form>
			<!--  form  -->
		</div>
		<div class="col-md-3"></div>
	</div>
</div>
<%@ include file="../shared/footer.jsp"%>