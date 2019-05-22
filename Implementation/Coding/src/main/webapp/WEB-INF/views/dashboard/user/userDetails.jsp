<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>user details</title>
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
				<h4 class="text-center">USER DETAILS</h4>
				<div class="table-responsive-sm table-responsive-md table-responsive-lg table-responsive-xl">
					<table id="dtBasicExample"
						class="table table-striped table-bordered table-sm ">
						<thead class="text-nowrap">
							<tr>
								<th class="th-sm">S.N.</th>
								<th class="th-sm">First Name</th>
								<th class="th-sm">Last Name</th>
								<th class="th-sm">Email</th>
								<th class="th-sm">Address</th>
								<th class="th-sm">Username</th>
								<th class="th-sm">Password</th>
								<th class="th-sm">Phone No.</th>
								<th class="th-sm">Action</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>Tiger</td>
								<td>Nixon</td>
								<td>tigernixon@gmail.com</td>
								<td>Edinburgh</td>
								<td>noxon</td>
								<td>tighernixon</td>
								<td>9801320800</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0 mt-1">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
							</tr>
							<tr>
								<td>2</td>
								<td>Garrett</td>
								<td>Winters</td>
								<td>Garrett@gmail.com</td>
								<td>Edinburgh</td>
								<td>Winters</td>
								<td>Winters</td>
								<td>9801320800</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0 mt-1">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
							</tr>
							<tr>
								<td>3</td>
								<td>Brielle</td>
								<td>Williamson</td>
								<td>Williamson@gmail.com</td>
								<td>Edinburgh</td>
								<td>Williamson</td>
								<td>Brielle</td>
								<td>9801320800</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0 mt-1">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
							</tr>
							<tr>
								<td>4</td>
								<td>Airi</td>
								<td>Satou</td>
								<td>Satou@gmail.com</td>
								<td>Edinburgh</td>
								<td>Satou</td>
								<td>Airi</td>
								<td>9801320800</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0 mt-1">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
							</tr>
							<tr>
								<td>5</td>
								<td>Ashton</td>
								<td>Cox</td>
								<td>Cox@gmail.com</td>
								<td>Edinburgh</td>
								<td>Ashton</td>
								<td>Ashton</td>
								<td>9801320800</td>
								<td><span><button type="button"
											class="btn btn-info btn-rounded  btn-sm my-0">
											<i class="fas fa-pencil-alt"></i>
										</button></span> <span><button type="button"
											class="btn btn-danger btn-rounded btn-sm my-0 mt-1">
											<i class="fas fa-trash-alt"></i>
										</button></span></td>
						</tbody>
						<tfoot>
							<tr>
								<th>S.N.</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Email</th>
								<th>Address</th>
								<th>Username</th>
								<th>Password</th>
								<th>Phone No.</th>
								<th>Action</th>
							</tr>
						</tfoot>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- FOOTER START -->
	<%@ include file="../../shared/footer.jsp"%>
	<!-- FOOTER END -->
</body>
</html>