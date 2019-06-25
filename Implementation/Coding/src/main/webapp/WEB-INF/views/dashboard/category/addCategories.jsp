<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
						<form:form action="addCategory" method="post"
							modelAttribute="category">
							<div class="form-group">

								<label class="control-label">Category Name</label>
								<form:errors path="categoryName" cssClass="text-warning" />
								<input type="text" class="form-control"
									placeholder="eg:- Electronics" name="categoryName" required></input>
							</div>

							<button type="submit" class="btn btn-lg btn-info btn-block">
								<span>ADD</span>
							</button>
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />

						</form:form>
					</div>
				</div>
				<!-- MAIN CONTENT END-->
				<!-- CATEGORY DATA TABLE START -->
				<div class="d-flex justify-content-center">
					<c:if test="${not empty categories}">
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
								<c:forEach items="${categories}" var="category">
									<tr>
										<td>${category.id}</td>
										<td>${category.categoryName}</td>
										<td><span><a type="button"
												href="deleteCategory?id=${category.id}"
												class="btn btn-danger btn-rounded btn-sm my-0"> <i
													class="fas fa-trash-alt"></i>
											</a></span></td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<th>S.N.</th>
									<th>Name</th>
									<th>Action</th>
								</tr>
							</tfoot>
						</table>
					</c:if>
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