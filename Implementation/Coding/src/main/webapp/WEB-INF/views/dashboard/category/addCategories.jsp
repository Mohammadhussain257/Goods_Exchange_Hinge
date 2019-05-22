<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add category</title>
</head>
<body>
	<!-- Header -->
	<%@ include file="../../shared/header.jsp"%>
	<!-- Header -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3">
				<!-- MENU SIDEBAR-->
				<%@ include file="../sidebar.jsp"%>
				<!-- END MENU SIDEBAR-->
			</div>
			<div class="col-sm-9">
				<!-- MAIN CONTENT-->
				<div class="container-fluid">
					<div class="card-body">
						<div class="card-title">
							<h3 class="text-center">Add Category</h3>
						</div>
						<hr>
						<form action="" method="post">
							<div class="form-group">
								<label class="control-label">Category Name</label> <input
									type="text" class="form-control" placeholder="eg:- Electronics"
									required>
							</div>
							<div>
								<button type="submit" class="btn btn-lg btn-info btn-block">
									<span>ADD</span>
								</button>
							</div>
						</form>
					</div>
				</div>
				<!-- MAIN CONTENT END-->
				<!-- CATEGORY DATA TABLE START -->
				<div class="d-flex justify-content-center">
					<table id="dtBasicExample"
						class="table table-striped table-bordered table-sm w-auto purple lighten-5">
						<thead class="text-nowrap">
							<tr>
								<th>S.N.</th>
								<th class="th-sm">Category Name</th>
								<th class="th-sm">Action</th>
							</tr>
						</thead>
						<tbody class="text-nowrap">
							<tr>
								<td>1</td>
								<td>Tiger Nixon</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
							</tr>
							<tr>
								<td>2</td>
								<td>Garrett Winters</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
							</tr>
							<tr>
								<td>3</td>
								<td>Ashton Cox</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
							</tr>
							<tr>
								<td>4</td>
								<td>Cedric Kelly</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
							</tr>
							<tr>
								<td>5</td>
								<td>Airi Satou</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
							</tr>
							<tr>
								<td>6</td>
								<td>Brielle Williamson</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
							</tr>
							<tr>
								<td>7</td>
								<td>Herrod Chandler</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<th>S.N.</th>
								<th>Name</th>
								<th>Action</th>
							</tr>
						</tfoot>
					</table>
				</div>
				<!-- CATEgoRy DATA TABLE END -->
			</div>
		</div>
	</div>
	<!-- FOOTER START-->
	<%@ include file="../../shared/footer.jsp"%>
	<!-- FOOTER START END-->
</body>
</html>