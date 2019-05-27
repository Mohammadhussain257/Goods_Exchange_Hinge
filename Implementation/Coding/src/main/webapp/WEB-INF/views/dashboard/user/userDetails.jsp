<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				<div class="table-responsive">
					<c:if test="${not empty users}">
						<table id="dtBasicExample" class="table table-striped ">
							<thead>
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
							</thead>
							<tbody>
								<c:forEach items="${users}" var="user">
									<tr>
										<td><c:out value="${user.userId}" /></td>
										<td><c:out value="${user.firstName}" /></td>
										<td><c:out value="${user.lastName}" /></td>
										<td><c:out value="${user.email}" /></td>
										<td><c:out value="${user.address}" /></td>
										<td><c:out value="${user.username}" /></td>
										<td><c:out value="${user.password}" /></td>
										<td><c:out value="${user.phoneNumber}" /></td>
										<td><span><button type="button"
													class="btn btn-info btn-rounded  btn-sm my-0">
													<i class="fas fa-pencil-alt"></i>
												</button></span> <span><button type="button"
													class="btn btn-danger btn-rounded btn-sm my-0 mt-1">
													<i class="fas fa-trash-alt"></i>
												</button></span></td>
									</tr>
								</c:forEach>
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
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<!-- FOOTER START -->
	<%@ include file="../../shared/footer.jsp"%>
	<!-- FOOTER END -->
</body>
</html>