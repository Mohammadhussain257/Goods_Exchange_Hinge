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
				<h6 class="text-center font-weight-bold text-info">Exchange
					Product Details</h6>
				<c:if test="${not empty deletemgs}">
					<div class="alert alert-success" role="alert">${deletemgs}</div>
				</c:if>
				<div class="table-responsive">
					<c:if test="${not empty dpel}">
						<table id="dtBasicExample" class="table table-striped ">
							<thead>
								<tr>
									<th>S.N</th>
									<th>Product Name</th>
									<th>Product Value</th>
									<th>Exchange Open</th>
									<th>Date</th>
									<th>Description</th>
									<th>ImageURL</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${dpel}" var="pel">
									<tr>
										<td><c:out value="${pel.productExcId}" /></td>
										<td><c:out value="${pel.productName}" /></td>
										<td><c:out value="${pel.productValue}" /></td>
										<td><c:out value="${pel.exchangeFor}" /></td>
										<td><c:out value="${pel.date}" /></td>
										<td><c:out value="${pel.description}" /></td>
										<td><c:out value="${pel.imageUrl}" /></td>
										<td><span><a class="text-danger"
												data-toggle="tooltip" data-placement="right" title="Delete"
												href="deleteProductExchange?productExcId=${pel.productExcId}"><i
													class="fas fa-trash fa-2x"></i></a></span></td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<th>S.N</th>
									<th>Product Name</th>
									<th>Product Value</th>
									<th>Exchange Open</th>
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
	<!-- FOOTER START -->
	<%@ include file="../../shared/footer.jsp"%>
	<!-- FOOTER END -->
</body>
</html>