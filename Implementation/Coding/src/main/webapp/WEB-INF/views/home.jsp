<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<!-- include header page -->
	<%@ include file="./shared/header.jsp"%>

	<nav class="navbar navbar-light bg-light">
		<form class="form-inline">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search Products" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</nav>

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
					<div class="col-sm-3">
						<div class="card" style="width: 18rem;">
							<img src="..." class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Product Name</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<button type="button" class="btn btn-info">Details</button>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="card" style="width: 18rem;">
							<img src="..." class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Product Name</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<button type="button" class="btn btn-info">Details</button>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="card" style="width: 18rem;">
							<img src="..." class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Product Name</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<button type="button" class="btn btn-info">Details</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3">
						<div class="card" style="width: 18rem;">
							<img src="..." class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Product Name</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<button type="button" class="btn btn-info">Details</button>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="card" style="width: 18rem;">
							<img src="..." class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Product Name</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<button type="button" class="btn btn-info">Details</button>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="card" style="width: 18rem;">
							<img src="..." class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Product Name</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<button type="button" class="btn btn-info">Details</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-3">
						<div class="card" style="width: 18rem;">
							<img src="..." class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Product Name</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<button type="button" class="btn btn-info">Details</button>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="card" style="width: 18rem;">
							<img src="..." class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Product Name</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<button type="button" class="btn btn-info">Details</button>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="card" style="width: 18rem;">
							<img src="..." class="card-img-top" alt="...">
							<div class="card-body">
								<h5 class="card-title">Product Name</h5>
								<p class="card-text">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<button type="button" class="btn btn-info">Details</button>
							</div>
						</div>
					</div>
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
						<form>
							<div class="form-group">
								<p class="text-center">LOGIN</p>
								<label for="exampleInputEmail1">USERNAME</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your data with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">PASSWORD</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password">
							</div>
							<div class="form-group form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Remember me</label>
							</div>
							<button type="button" class="btn btn-outline-success">Login</button>
							<a>Forgot your login details?</a>
						</form>
					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel"
						aria-labelledby="profile-tab">
						<p class="text-center">Registration</p>

						<form>
							<div class="form-group">
								<label for="formGroupExampleInput">Full Name</label> <input
									type="text" class="form-control" id="formGroupExampleInput"
									placeholder="Full Name">
							</div>
							<div class="form-group">
								<label for="formGroupExampleInput2">Gender</label>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="exampleRadios" id="exampleRadios1" value="option1"
										checked> <label class="form-check-label"
										for="exampleRadios1">Male</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="exampleRadios" id="exampleRadios1" value="option2"
										checked> <label class="form-check-label"
										for="exampleRadios2">Female</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="exampleRadios" id="exampleRadios1" value="option3"
										checked> <label class="form-check-label"
										for="exampleRadios3">Other</label>
								</div>
							</div>
							<div class="form-group">
								<label for="formGroupExampleInput">Date of Birth</label> <input
									type="date" class="form-control" id="formGroupExampleInput">
							</div>
							<div class="form-group">
								<label for="formGroupExampleInput">Contact No.</label> <input
									type="text" class="form-control" id="formGroupExampleInput"
									placeholder="12-345-67-89">
							</div>
							<div class="form-group">
								<label for="formGroupExampleInput">Username</label> <input
									type="text" class="form-control" id="formGroupExampleInput"
									placeholder="eg: sam">
							</div>
							<div class="form-group">
								<label for="formGroupExampleInput">Password</label> <input
									type="password" class="form-control" id="formGroupExampleInput"
									placeholder="**********">
							</div>
							<div class="form-group">
								<label for="formGroupExampleInput">Confirm Password</label> <input
									type="password" class="form-control" id="formGroupExampleInput"
									placeholder="**********">
							</div>
							<div class="form-group">
								<label for="formGroupExampleInput">Address</label> <input
									type="text" class="form-control" id="formGroupExampleInput"
									placeholder="address"> <input type="text"
									class="form-control" id="formGroupExampleInput"
									placeholder="City eg: Kathmandu"> <input type="text"
									class="form-control" id="formGroupExampleInput"
									placeholder="Street No. eg: 123"> <input type="text"
									class="form-control" id="formGroupExampleInput"
									placeholder="Area Code eg: 01"> <input type="text"
									class="form-control" id="formGroupExampleInput"
									placeholder="House No eg: 21">
							</div>
							<button type="button" class="btn btn-outline-primary">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- include footer page -->
	<%@ include file="./shared/footer.jsp"%>
</body>
</html>
