<div class=" light-green lighten-5">
	<%@ include file="../shared/header.jsp"%>
	<div class="container">
		<h5 class="text-center font-weight-bold text-info">Manage Your
			Product</h5>
		<div class="row">
			<div class="col-md-6">
				<!-- form  -->
				<form class="text-center border border-light p-5 indigo lighten-5">

					<p class="h4 mb-4 text-secondary">Add Product To Get Exchange</p>

					<!-- Product Name -->
					<input type="text" class="form-control mb-4"
						placeholder="Product Name">

					<!-- Product Value -->
					<input type="number" class="form-control mb-4"
						placeholder="Product Value">

					<!-- Subject -->
					<label>Product Category</label> <select
						class="browser-default custom-select mb-4">
						<option value="" disabled>Choose Category</option>
						<option value="1" selected>Arts</option>
						<option value="2">Automotive</option>
						<option value="3">Books</option>
						<option value="4">Electronics</option>
					</select>

					<!-- Date -->
					<input type="date" class="form-control mb-4"
						placeholder="Product Value">
					<!-- product open for -->
					<div class="form-group">
						<textarea class="form-control rounded-0"
							id="exampleFormControlTextarea2" rows="3"
							placeholder="Explain what you want to exchange with"></textarea>
					</div>

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
							<input type="file" class="custom-file-input"
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
						<option value="" disabled>Choose Category</option>
						<option value="1" selected>Arts</option>
						<option value="2">Automotive</option>
						<option value="3">Books</option>
						<option value="4">Electronics</option>
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
							<input type="file" class="custom-file-input"
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