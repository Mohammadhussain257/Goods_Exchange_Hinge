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
					action="save_product?${_csrf.parameterName}=${_csrf.token}&userId=${user.userId}"
					method="post" enctype="multipart/form-data"
					class="text-center border border-light p-5 indigo lighten-5"
					modelAttribute="productExchange">

					<p class="h4 mb-4 text-secondary">Add Product To Exchange</p>

					<!-- Product Name -->
					<form:errors path="productName" cssClass="text-warning" />
					<form:input type="text" path="productName"
						class="form-control mb-4" placeholder="Product Name" />

					<!-- Product Value -->
					<form:errors path="productValue" cssClass="text-warning" />
					<form:input type="number" path="productValue"
						class="form-control mb-4" placeholder="Product Value" />

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
								id="inputGroupFile01" aria-describedby="inputGroupFileAddon01"
								required /> <label class="custom-file-label"
								for="inputGroupFile01">Product Cover</label>
						</div>
					</div>
					<!-- Send button -->
					<button class="btn btn-info btn-block mt-4" type="submit">UPLOAD</button>

				</form:form>
				<!--  form  -->
			</div>
			<div class="col-md-6">
				<h6 class="text-center font-weight-bold text-info">Exchange
					Product Details</h6>
				<div class="table-responsive">
					<table id="dtBasicExample" class="table table-striped ">
						<thead>
							<tr>
								<th>Product Name</th>
								<th>Product Value</th>
								<th>Category</th>
								<th>Date</th>
								<th>Exchange Open</th>
								<th>Description</th>
								<th>ImageURL</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>

						</tbody>
						<tfoot>
							<tr>
								<th>Product Name</th>
								<th>Product Value</th>
								<th>Category</th>
								<th>Date</th>
								<th>Exchange Open</th>
								<th>Description</th>
								<th>ImageURL</th>
								<th>Action</th>
							</tr>
						</tfoot>
					</table>
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