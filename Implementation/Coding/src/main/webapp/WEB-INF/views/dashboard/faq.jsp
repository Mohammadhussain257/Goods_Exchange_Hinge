<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div>
	<!-- Header -->
	<%@ include file="../shared/header.jsp"%>
	<!-- Header -->

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3">
				<!-- MENU SIDEBAR-->
				<%@ include file="./sidebar.jsp"%>
				<!-- END MENU SIDEBAR-->
			</div>
			<div class="col-sm-9">
				<form:form action="addfaq?userId=${userModel.userId}" method="post"
					modelAttribute="faq">
					<div class="form-group">

						<label class="control-label">Title</label>
						<form:errors path="title" cssClass="text-warning" />
						<input type="text" class="form-control" placeholder="FAQ Title"
							name="title" required></input> <label class="control-label">Content</label>
						<form:errors path="content" cssClass="text-warning" />
						<textarea class="form-control" placeholder="FAQ Answer"
							name="content" rows="3" required></textarea>
						<label class="control-label">Note</label>
						<textarea class="form-control" placeholder="Optional" name="note"
							rows="3"></textarea>
					</div>

					<button type="submit" class="btn btn-lg btn-info btn-block">
						<span>ADD</span>
					</button>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />

				</form:form>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<h6 class="text-center font-weight-bold text-info">FAQ</h6>
				<c:if test="${not empty deleteMsg}">
					<div class="alert alert-success" role="alert">${deleteMsg}</div>
				</c:if>
				<div class="table-responsive">
					<c:if test="${not empty faqList}">
						<table id="dtBasicExample" class="table table-striped ">
							<thead>
								<tr>
									<th>S.N</th>
									<th>Title</th>
									<th>Content</th>
									<th>Note</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${faqList}" var="faq">
									<tr>
										<td><c:out value="${faq.id}" /></td>
										<td><c:out value="${faq.title}" /></td>
										<td><c:out value="${faq.content}" /></td>
										<td><c:out value="${faq.note}" /></td>
										<td><span><a class="text-danger"
												data-toggle="tooltip" data-placement="right" title="Delete"
												href="delete_faq?id=${faq.id}"><i
													class="fas fa-trash fa-2x"></i></a></span> <span><a
												class="text-primary" data-toggle="tooltip"
												data-placement="right" title="Edit"
												href="edit_faq?id=${faq.id}"><i
													class="fas fa-edit fa-2x"></i></a></span></td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<tr>
									<th>S.N</th>
									<th>Title</th>
									<th>Content</th>
									<th>Note</th>
									<th>Action</th>
								</tr>
							</tfoot>
						</table>
					</c:if>
				</div>
			</div>
		</div>
	</div>
	<!-- FOOTER START-->
	<%@ include file="../shared/footer.jsp"%>
	<!-- FOOTER START END-->
</div>