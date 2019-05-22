<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/custom.css">
<title>Home</title>
</head>
<body class=" indigo lighten-5">
	<!-- include header page -->
	<%@ include file="./shared/header.jsp"%>
	
	<!--  include search form -->
	<%@ include file="./common/search.jsp" %>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2">
				<div class="card green lighten-5">
					<div class="card-body">
						<h5 class="card-title">Welcome to Goods Exchange Hinge</h5>
						<p>Goods Exchange Hinge is the Nepal's biggest, most
							established and original marketplace where you can swap, trade,
							sell and deal with like-minded people both locally and
							nationwide. The choices are all yours.</p>
						<p class="card-text">With categories to suit everyone and
							hundreds of thousands of listings you're sure to find something
							you want, need or just can't live without.</p>
						<p>Join now, it's free, and start dealing today</p>
					</div>
				</div>
			</div>

			<div class="col-sm-7"><%@ include
					file="./homepageProducts/homeProducts.jsp"%></div>


			<div class="col-sm-3">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link blue lighten-3 active" id="login-tab"
						data-toggle="tab" href="#login" role="tab" aria-controls="login"
						aria-selected="true">Member Login</a></li>
					<li class="nav-item"><a class="nav-link blue lighten-3" id="register-tab"
						data-toggle="tab" href="#register" role="tab"
						aria-controls="register" aria-selected="false">Not a member
							yet?</a></li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="login" role="tabpanel"
						aria-labelledby="login-tab">
						
						<%@ include file="login.jsp" %>
						
						</div>
					<div class="tab-pane fade" id="register" role="tabpanel"
						aria-labelledby="register-tab">
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
