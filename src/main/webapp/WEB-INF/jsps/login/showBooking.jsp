<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Details</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <a class="navbar-brand" href="/"> <img src="https://img.lovepik.com/element/45006/8218.png_860.png" style="height: 60px;width: 60px;" alt=""></a>
          <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="index.html">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="services.html">Services</a>
              </li>
              <li class="nav-item">
                <a class="nav-link " href="/profilePage.html">About Us</a>
              </li>
            </ul>
           
            <button class="btn btn-outline-success" type="submit"><a
              style="color: rgb(249, 247, 247);text-decoration: none;" href="showLoginPage">Logout</a></button>
          </div>
        </div>
     
      </nav>

<div class="container mt-5">
        <div class="row justify-content-lg-start">
            <div class="col-md-5">
    <h2>Artists Details</h2>
    
    <div class="form-group">
        <h6 for="category">CategoryId</h6>
        <p id="category">${category.typeOfArtist}</p>
    </div>
 <%-- <div class="form-group">
        <h6 for="category">Artist Name</h6>
        <p id="category">${category.artistName}</p>
    </div> --%>
    <div class="form-group">
    <h6 for="desrcription">Description</h6>
    <p id="desrcription">${category.description}</p>
    </div>

    <div class="form-group">
        <h6 for="city">Current City</h6>
        <p id="city">${category.currentCity}</p>
    </div>

    <div class="form-group">
        <h6 for="status">Current Status</h6>
         <p id="status">${category.currentStatus}</p> 
    </div>

    <div class="form-group">
        <h6 for="charge">Charge</h6>
        <p id="charge">${category.charge}</p>
    </div>

    <div class="form-group">
        <h6 for="available">Available</h6>
        <p id="available">${category.availableDate}</p>
    </div>
</div>
<div class='col-md-6'>
   



    <h2>Event manager Details</h2>
    <form action="confirmBooking" method="post">
        
        <div class="form-group">
        <label for="firstname">Event name</label>
        <input class="form-control"  id="firstname" type="text" name="firstName"/>
        </div>
        
        <div class="form-group">
        <label for="middlename">Event Manager name</label>
        <input class="form-control" id="middlename" type="text" name="middleName" />
        </div>

        <div class="form-group">
            <label for="lastname">Venue</label>
            <input class="form-control"  id="lastname" type="text" name="lastName" />
        </div> 
        
        
        <div class="form-group">
            <label for="email">Email Id </label>
            <input class="form-control" id="email"  type="text" name="emailId" />
        </div>
     
        <div class="form-group">
            <label for="phone">Phone</label>
             <input class="form-control" id="phone" type="text" name="phone" />
			 <div id="phone" class="form-text">Please enter 10 digit number only.</div>
                    <span id="phone"></span>
             
        </div>
      <script>
            	function val(){
            		var d=document.frm.phone.value;
            		//var c=document.frm.password.value;
            		if(d.length<10 || d.length>10)
            			{
            			//alert("Enter valid contact number");
            			document.getElementById("phone").innerHTML="<p style='color:red'>please enter valid number</p>"
            			return false;
            			}
            		/* if(!(c.includes("a")))
            			{
            			alert("invalid password")
            			return false;
            			} */
            		return true;
            	}
            </script>
        <div class="form-group">
        <input class="form-control"  type="hidden"  name="categoryId" value="${category.id}" />
        </div>
     
        <div class="form-group">
        <input class="form-control btn-outline-dark" type="submit" value="Complete Booking" />
        </div>
    </form>

        </div>
    </div>
</div>








<!-- <h2>Artists Details</h2> -->
<%-- CategoryId:${category.typeOfArtist}<br> --%>
<%-- Description:${category.description}<br> --%>
<%-- Current City:${category.currentCity}<br> --%>
<%-- Current Status:${category.currentStatus}<br> --%>
<%-- Charge:${category.charge}<br> --%>
<%-- Available:${category.availableDate}<br> --%>


<!-- <h2>Enter Event Details</h2> -->
<!-- <form action="confirmBooking" method="post"> -->

<!--  First name:<input type="text" name="firstName"/> -->
<!--  Last name:<input type="text" name="lastName" /> -->
<!--  Middle name:<input type="text" name="middleName" /> -->
<!--  Email Id :<input type="text" name="emailId" /> -->
<!--  Phone :<input type="text" name="phone" /> -->
<%--   <input type="hidden"  name="categoryId" value="${category.id}" /> --%>
 
<!--   <input type="submit" value="Complete Booking" /> -->

<!-- </form> -->
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