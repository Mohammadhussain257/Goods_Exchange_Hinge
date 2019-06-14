<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%-- <meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}"> --%>

<title>Home</title>
</head>
<body class=" indigo lighten-5">
	<!-- include header page -->
	<%@ include file="./shared/header.jsp"%>

	<!--  include search form -->
	<%@ include file="./common/search.jsp"%>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2">
				<div class="card green lighten-5">
					<div class="card-body">
						<h5 class="card-title">Welcome to Goods Exchange Hinge</h5>
						<p>Goods Exchange Hinge is an original marketplace where you
							can swap, trade, sell and deal with like-minded people both
							locally and nationwide. The choices are all yours.</p>
						<p class="card-text">With categories to suit everyone and
							hundreds of thousands of listings you're sure to find something
							you want, need or just can't live without.</p>
						<p>Join now, it's free, and start dealing today</p>
					</div>
				</div>
			</div>

			<div class="col-sm-8"><%@ include
					file="./Products/homeProducts.jsp"%></div>


			<div class="col-sm-2">
				<c:choose>
					<c:when test="${userModel.username eq null}">
						<div class="card">
							<div class="card-body  light-green lighten-3">
								<h5 class="card-title">Member Login</h5>
								<p>Get login and start swapping it's free and always will
									be.</p>
								<a href="login" class="card-link">Login</a>
								<h5 class="card-title">Not a member yet?</h5>
								<p>Register now meet with like minded people and start
									exchanging it's free and always will be.</p>
								<a href="getRegisterForm" class="card-link">Register</a>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="card">
							<div class="card-body  light-green lighten-3">
								<h5 class="card-title">Member Login</h5>
								<p>You are logged in start swapping it's free and always
									will be.</p>
								<p class="text-primary">Username : ${userModel.username}</p>
								<p class="text-info">Session Started:</p>
								<p class="text-info clock" id='MyClockDisplay'
									onload="showTime()"></p>
							</div>
						</div>
					</c:otherwise>
				</c:choose>

			</div>
		</div>
	</div>
	<!-- include footer page -->
	<%@ include file="./shared/footer.jsp"%>

	<script>
		function showTime() {
			var date = new Date();
			var h = date.getHours(); // 0 - 23
			var m = date.getMinutes(); // 0 - 59
			var s = date.getSeconds(); // 0 - 59
			var session = "AM";

			if (h == 0) {
				h = 12;
			}

			if (h > 12) {
				h = h - 12;
				session = "PM";
			}

			h = (h < 10) ? "0" + h : h;
			m = (m < 10) ? "0" + m : m;
			s = (s < 10) ? "0" + s : s;

			var time = h + ":" + m + ":" + s + " " + session;
			document.getElementById("MyClockDisplay").innerText = time;
			document.getElementById("MyClockDisplay").textContent = time;

			setTimeout(showTime, 1000);

		}
		showTime();
	</script>
</body>
</html>
