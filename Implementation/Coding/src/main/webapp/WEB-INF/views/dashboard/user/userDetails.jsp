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
										<td><c:out value="${user.phoneNumber}" /></td>
										<c:if test="${user.role eq 'ADMIN'}">
											<td><span><button type="button"
														class="btn btn-danger btn-rounded btn-sm my-0 mt-1"
														disabled>
														<i class="fas fa-trash-alt"></i>
													</button></span></td>
										</c:if>
										<c:if test="${user.role eq 'USER'}">
											<td><span><a type="button"
													href="deleteUser?userId=${user.userId}"
													class="btn btn-danger btn-rounded btn-sm my-0 mt-1"> <i
														class="fas fa-trash-alt"></i>
												</a></span></td>
										</c:if>
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