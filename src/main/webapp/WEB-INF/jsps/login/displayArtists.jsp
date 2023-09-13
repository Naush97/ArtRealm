<%@ page language="java" contentType="text/html; charset=UTF-8" 
 pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<title>Display Artists</title>
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
		<div class="col-md-5-5">
			<h2 >List of Artists</h2>
			<table class="table table-striped table-hover">
				<thead >
				<tr class="table-dark">
				<th scope="col">S.NO.</th>
				<th scope="col">Type Of Artist</th>
				<th scope="col">Current City</th>
				<th scope="col">Available Date</th>
				<th scope="col">Select Artist</th>
				</tr>
				</thead>
			<c:forEach items="${findArtists}" var="findArtists">
			<tr>
			<%!int i=1 ;%>
				<th scope="row"><%= i %></th>
				<td>${findArtists.typeOfArtist}</td>
				<td>${findArtists.currentCity}</td>
				<td>${findArtists.availableDate}</td>
				<td ><a class="btn btn-info" href="showCompleteBooking?categoryId=${findArtists.id}">Select</a></td>
			</tr>
			<% i++; %>
			</c:forEach>
			</table>
		</div>	
	</div>	
</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>


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