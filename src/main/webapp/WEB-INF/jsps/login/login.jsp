<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>New Registration</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-2"></div>
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
				<div class="container-fluid">
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
						aria-controls="navbarTogglerDemo03" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<a class="navbar-brand" href="/"> <img
						src="https://img.lovepik.com/element/45006/8218.png_860.png"
						style="height: 60px; width: 60px;" alt=""></a>
					<div class="collapse navbar-collapse" id="navbarTogglerDemo03">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="index.html">Home</a></li>
							<li class="nav-item"><a class="nav-link "
								href="/services.html">Services</a></li>
							<li class="nav-item"><a class="nav-link "
								href="aboutUs.html">About Us</a></li>
						</ul>
					
						
					</div>
				</div>
			</nav>
			<form action="verifyLogin" method="post">
				<div class="container">
					<div class="row-cols-2">
						<div class="mb-3 mt-5">
							<label for="exampleInputEmail1" class="form-label">Username</label>
							<input type="text" class="form-control" id="username"
								name="emailId" required
								placeholder="Enter your Registered Email">
							<div id="emailHelp" class="form-text">We'll never share
								your email with anyone else.</div>
						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">Password</label>
							<input type="password" class="form-control" id="password"
								name="password" required placeholder="Enter your Password">
						</div>
						<div class="mb-3 form-check">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck1"> <label class="form-check-label"
								for="exampleCheck1">Remember me</label>
						</div>
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
				</div>
			</form>
		</div>
	</div>
	
   <br><br><br><br><br><br><br><br><br><br>
	<footer class="footer text-white"
		style="background-color: rgb(52, 58, 64);">
		<div class="container">
			<div class="row">
				<div class="col-md-6 mt-4">
					<h4>Follow Us</h4>
					<!-- Add your social media buttons here -->
					<a href="#" class="btn btn-primary"><i
						class="fab fa-facebook-f"></i></a> <a href="#" class="btn btn-info"><i
						class="fab fa-twitter"></i></a> <a href="#" class="btn btn-danger"><i
						class="fab fa-youtube"></i></a>
				</div>
				<div class="col-md-6 mt-3">
					<h4>Contact Information</h4>
					<!-- Add your contact information here -->
					<p>Email: artrealm@gmail.com</p>
					<p>Mobile: (+91) 9876-321-012</p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>