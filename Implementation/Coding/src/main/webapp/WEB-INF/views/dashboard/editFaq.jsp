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
				<form:form action="update_faq?userId=${userModel.userId}"
					method="post" modelAttribute="faq">
					<div class="form-group">
						<input type="hidden" name="id" value="${faq.id}"> <label
							class="control-label">Title</label>
						<form:errors path="title" cssClass="text-warning" />
						<input type="text" class="form-control" placeholder="FAQ Title"
							name="title" value="${faq.title}" required></input> <label
							class="control-label">Content</label>
						<form:errors path="content" cssClass="text-warning" />
						<textarea class="form-control" placeholder="FAQ Answer"
							name="content" rows="3" required>${faq.content}</textarea>
						<label class="control-label">Note</label>
						<textarea class="form-control" placeholder="Optional" name="note"
							rows="3">${faq.note}</textarea>
					</div>

					<button type="submit" class="btn btn-lg btn-info btn-block">
						<span>ADD</span>
					</button>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />

				</form:form>
			</div>
		</div>

	</div>
	<!-- FOOTER START-->
	<%@ include file="../shared/footer.jsp"%>
	<!-- FOOTER START END-->
</div>