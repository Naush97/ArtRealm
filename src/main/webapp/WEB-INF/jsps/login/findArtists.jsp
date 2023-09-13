<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Artists</title>



    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03"
            aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <a class="navbar-brand" href="/"> <img src="https://img.lovepik.com/element/45006/8218.png_860.png"
              style="height: 60px;width: 60px;" alt=""></a>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/index.html">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="services.jsp">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="aboutUs.html">About Us</a>
              </li>
            </ul>
            <button class="btn btn-outline-success" type="submit"><a
              style="color: rgb(249, 247, 247);text-decoration: none;" href="showLoginPage">Logout</a></button>
          </div>
        </div>
      </nav>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-4s">
            <h1>Find Artists</h1>
            <form action="findArtists" method="post">
            
            <div class="form-group mt-3">
                <label for="from">Type of Artist</label>
                <input type="text" name="from" id="from" class="form-control"  required/>
            </div>
            <div class="form-group mt-3">
                <label for="to">City</label>
                <input class="form-control" id="to" type="text" name="to" required/>
            </div>
            <div class="form-group mt-3">
                <label for="available">AVAILABLE DATE</label>
                <input class="form-control" type="text" id= "available" name="availableDate" required/>
            </div>
            <div class="form-group mt-5">
            <input class="form-control btn btn-info" type="submit" value="Search" />
			</div>
            </form>
            
        </div>
    </div>

</div>
<br><br><br>
<footer class="footer text-white" style="background-color: rgb(52,58,64);">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mt-4">
                <h4>Follow Us</h4>
                <!-- Add your social media buttons here -->
                <a href="#" class="btn btn-primary"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="btn btn-info"><i class="fab fa-twitter"></i></a>
                <a href="#" class="btn btn-danger"><i class="fab fa-youtube"></i></a>
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