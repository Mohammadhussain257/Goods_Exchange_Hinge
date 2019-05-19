<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<!-- include header page -->
	<%@ include file="./shared/header.jsp"%>

	<!-- include search page -->
	<%@ include file="./common/search.jsp"%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3">
				<div class="jumbotron">
					<h5 class="text-info">Welcome to Goods Exchange Hinge</h5>
					<p class="lead">Goods Exchange Hinge is the Nepal's biggest,
						most established and original marketplace where you can swap,
						trade, sell and deal with like-minded people both locally and
						nationwide. The choices are all yours.</p>
					<hr class="my-4">
					<p>With categories to suit everyone and hundreds of thousands
						of listings you're sure to find something you want, need or just
						can't live without.</p>
					<p>Join now, it's free, and start dealing today</p>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="row">
					<!-- include page homeProducts to home page -->
					<%@ include file="./homepageProducts/homeProducts.jsp"%>
				</div>
				<div class="row">
					<!-- include page homeProducts to home page -->
					<%@ include file="./homepageProducts/homeProducts.jsp"%>
				</div>
				<div class="row">
					<!-- include page homeProducts to home page -->
					<%@ include file="./homepageProducts/homeProducts.jsp"%>
				</div>
			</div>
			<div class="col-sm-3">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link active" id="home-tab"
						data-toggle="tab" href="#home" role="tab" aria-controls="home"
						aria-selected="true">Member login</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">Not a member
							yet?</a></li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<%@ include file="login.jsp" %>
					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
						<p class="text-center">Registration</p>

						<%@ include file="registration.jsp" %>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- include footer page -->
	<%@ include file="./shared/footer.jsp"%>
</body>
</html>
