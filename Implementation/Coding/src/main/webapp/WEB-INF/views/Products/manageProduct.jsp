<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class=" light-green lighten-5">
	<%@ include file="../shared/header.jsp"%>
	<div class="container">
		<h5 class="text-center font-weight-bold text-info">Manage Your
			Product</h5>
		<div class="row">
			<div class="col-md-6">
				<!-- form  -->
				<form
					action="save_product?${_csrf.parameterName}=${_csrf.token}&userId=${user.userId}&id=${selectedCategoryid}"
					method="post" enctype="multipart/form-data"
					class="text-center border border-light p-5 indigo lighten-5">

					<p class="h4 mb-4 text-secondary">Add Product To Exchange</p>

					<!-- Product Name -->
					<input type="text" name="productName" class="form-control mb-4"
						placeholder="Product Name" />

					<!-- Product Value -->
					<input type="number" name="productValue" class="form-control mb-4"
						placeholder="Product Value" />

					<!-- Subject -->
					<label>Product Category</label> <select name="category"
						class="browser-default custom-select mb-4 category">
						<option value="" disabled selected>Choose Category</option>
						<c:forEach items="${categoryList}" var="catList">
							<option value="${catList.id}">${catList.categoryName}</option>
						</c:forEach>
					</select>
					<!-- Date -->
					<input type="date" name="date" class="form-control mb-4"
						placeholder="Product Value" />
					<!-- product open for -->
					<div class="form-group">
						<textarea name="exchangeFor" class="form-control rounded-0"
							id="exampleFormControlTextarea2" rows="3"
							placeholder="Explain what you want to exchange with"></textarea>
					</div>

					<!-- product description -->
					<div class="form-group">
						<textarea name="description" class="form-control rounded-0"
							id="exampleFormControlTextarea2" rows="3"
							placeholder="Product Description"></textarea>
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
					<button class="btn btn-info btn-block mt-4" type="submit">UPLOAD</button>

				</form>
				<!--  form  -->
			</div>

			<div class="col-md-6">

				<!-- form  -->
				<form class="text-center border border-light p-5  indigo lighten-5">

					<p class="h4 mb-4 text-secondary">Request Product To Get One</p>

					<!-- Product Name -->
					<input type="text" class="form-control mb-4"
						placeholder="Product Name">

					<!-- Product Value -->
					<input type="number" class="form-control mb-4"
						placeholder="Product Value">

					<!-- Subject -->
					<label>Product Category</label> <select
						class="browser-default custom-select mb-4">
						<option value="" disabled selected>Choose Category</option>
						<c:forEach items="${categoryList}" var="catList">
							<option value="${catList.id}">${catList.categoryName}</option>
						</c:forEach>
					</select>

					<!-- Date -->
					<input type="date" class="form-control mb-4"
						placeholder="Product Value">

					<!-- product description -->
					<div class="form-group">
						<textarea class="form-control rounded-0"
							id="exampleFormControlTextarea2" rows="3"
							placeholder="Product Description"></textarea>
					</div>

					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
						</div>
						<div class="custom-file">
							<input type="file" name="image" class="custom-file-input"
								id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
							<label class="custom-file-label" for="inputGroupFile01">Product
								Cover</label>
						</div>
					</div>

					<!-- Send button -->
					<button class="btn btn-info btn-block mt-4" type="submit">UPLOAD</button>

				</form>
				<!--  form  -->

			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<div class="table-responsive">
					<h6 class="text-center font-weight-bold text-info">Exchange
						Product Details</h6>
					<table id="dtBasicExample" class="table table-striped">
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
							<tr>
								<td>TATA Indigo</td>
								<td>$10000</td>
								<td>Automotive</td>
								<td>2019-06-14</td>
								<td>Open for all type of TATA Product</td>
								<td>Product Description hare</td>
								<td>Product Cover</td>
							</tr>

							<tr>
								<td>TATA Indigo</td>
								<td>$10000</td>
								<td>Automotive</td>
								<td>2019-06-14</td>
								<td>Open for all type of TATA Product</td>
								<td>Product Description hare</td>
								<td>Product Cover</td>
							</tr>

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
			<div class="col-md-6">
				<div class="table-responsive">
					<h6 class="text-center font-weight-bold text-info">Request
						Product Details</h6>
					<table id="dtBasicExample" id="dtBasicExample"
						class="table table-striped">
						<thead>
							<tr>
								<th>Product Name</th>
								<th>Product Value</th>
								<th>Category</th>
								<th>Date</th>
								<th>Description</th>
								<th>ImageURL</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>TATA Indigo</td>
								<td>$10000</td>
								<td>Automotive</td>
								<td>2019-06-14</td>
								<td>Product Description hare</td>
								<td>Product Cover</td>
							</tr>
							<tr>

								<td>TATA Indigo</td>
								<td>$10000</td>
								<td>Automotive</td>
								<td>2019-06-14</td>
								<td>Product Description hare</td>
								<td>Product Cover</td>
							</tr>

						</tbody>
						<tfoot>
							<tr>
								<th>Product Name</th>
								<th>Product Value</th>
								<th>Category</th>
								<th>Date</th>
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
<script>
	$(document).ready(function() {
		$("select.category").change(function() {
			var selectedCategoryid = $(this).children("option:selected").val();
			alert("You have selected the country - " + selectedCategoryid);
		});
	});
</script>