<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><title>New Registration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<style>
 




/* Style all input fields */
input {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
}

/* Style the submit button */
input[type=submit] {
  background-color: #04AA6D;
  color: white;
}

/* Style the container for inputs */
.container {
  background-color: #f1f1f1;
  padding: 20px;
}

/* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 14px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
 
}

/* Add a red text color and an "x" icon when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
 
}









  
   @media screen and (max-width:1000px)
  {
	  body 
	  {
		  background-color: darkorange!important;
	  }
  } 
</style>
</head>
<body>
    <div class="container-fluid">
        <!-- <div class="row"> -->
            <div class="col-2">

            </div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <a class="navbar-brand" href="/"> <img src="https://img.lovepik.com/element/45006/8218.png_860.png"
                            style="height: 60px;width: 60px;" alt=""></a>
                    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " href="jockers.html">Services</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " href="aboutUs.html">About Us</a>
                            </li>
                        </ul>
                       
                    </div>
                </div>
            </nav>
            
            <script>
            	function val(){
            		var d=document.frm.contactNumber.value;
            		var c=document.frm.password.value;
            		if(d.length<10 || d.length>10)
            			{
            			//alert("Enter valid contact number");
            			document.getElementById("contact").innerHTML="<p style='color:red'>please enter valid number</p>"
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
            <!--  qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq-->
         <div class="container">
         <div class="row" style="place-content:center">
         	<div class="col-lg-8">
         		<div class="card">
         		<div class="card-body">
         		            <form action="saveReg" method="post" onsubmit="return val()" name="frm">
                <div class="container">
                    <div class="row-cols-1">
                        <div class="mb-3">
	                    <label for="firstname">First Name</label>
    		            <input class="form-control" type="text" name="firstName" id="firstname" required placeholder="Enter your First Name"/>
                    <div id="emailHelp" class="form-text">Please enter name as per your aadhar card</div>
                </div>
                <div class="mb-3">
                       <label for="lastname">Last Name</label>
                		<input class="form-control" type="text" name="lastName" id="lastname" required placeholder="Enter your Last Name"/>
                </div>
                <div class="mb-3">
                	    <label for="email">Email Id</label>
                <input class="form-control" type="email" name="emailId" id="email" placeholder="Enter your Email Id"/>		
                   <!--  <label for="exampleInputEmail1" class="form-label">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"> -->
                    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                </div>
                <div class="mb-3">
                	 <label for="pws">Password</label>
<!--                     <input class="form-control" type="text" name="password" id="pws" />
 -->                <input class="form-control" type="password" id="psw" name="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at all"/>
                </div>
                <div id="message">
  <h5>Password must contain the following:</h5>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>
<script>
var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
}

  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }

  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}
</script>


                <div class="mb-3">
                    <label for="city" class="form-label">City</label>
                    <select id="city" class="form-select" aria-label="Default select example" name="city">
                        <option selected>select your city</option>
                        <option value="1">Indore</option>
                        <option value="2">Pune</option>
                        <option value="3">Mumbai</option>
                        <option value="3">Banglore</option>
                        <option value="3">Hyderabad</option>
                        <option value="3">Chennai</option>
                        <option value="3">Delhi</option>
                    </select>
                </div>
                <div class="mb-3">
                	 <label for="contact">Contact Number</label>   
                <input class="form-control" type="text" name="contactNumber" placeholder="Enter your Mobile Number">
                 <!--    <label for="exampleInputEmail1" class="form-label">Contact Number</label>
                    <input type="number" class="form-control" id="exampleNumber" aria-describedby="number"> -->
                    <div id="emailHelp" class="form-text">Please enter 10 digit number only.</div>
                    <span id="contact"></span>
                </div>
                <div class="mb-3">
                
                	
                    <label for="exampleInputEmail1" class="form-label">Languages known : </label>
              			  <div class="form-check form-check-inline">
                
                	   <select id="city" class="form-select" aria-label="Default select example" name="city">
                        <option selected>select language</option>
                        <option value="1">English</option>
                        <option value="2">Hindi</option>
                        <option value="3">Marathi</option>
                        <option value="3">Punjabi</option>
                        <option value="3">Gujarati</option>
                    </select>
                	
               <!--      <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                    <label class="form-check-label" for="inlineCheckbox1">English</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                    <label class="form-check-label" for="inlineCheckbox2">Hindi</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3">
                    <label class="form-check-label" for="inlineCheckbox3">Spanish</label>
                </div> -->
                </div>
                </div></div>
                <div class="mb-3">
                    <label for="gender" class="form-label">Gender  : </label>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="option1">
                        <label class="form-check-label" for="inlineRadio1">Male</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="option2">
                        <label class="form-check-label" for="inlineRadio2">Female</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gender" id="inlineRadio3" value="option3">
                        <label class="form-check-label" for="inlineRadio3">Others</label>
                      </div>
                    <!--   <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Type of Artist</label>
                       
                        <select class="form-select" aria-label="Default select example">
                            <option selected>choose type</option>
                            <option value="1">Dancer</option>
                            <option value="2">Singer</option>
                            <option value="3">Magician</option>
                        </select>
                        
                    </div> -->
                    
                    </div>
                  <div class="form-group mb-3">
                    <label for="zip">ZipCode</label>
                    <input class="form-control" type="text" name="zipCode"
                    id="zip" required/>
                </div>

                <div class="form-group mb-3">
                    <label for="nation">Nationality</label>
                    <input class="form-control" type="text" name="nationality" id="nation" required/>
                </div>
                
              <input class="btn btn-dark text-white form-control" type="submit" value="Save" /> 
                    </div>
                </div>
            </form>
         		</div>
         	</div>
         	</div>
         </div>
         	
         </div>

        </div>
    </div>

<!-- <form action="saveReg" method="post"> -->

<!--   First name:<input type="text" name="firstName"/> -->
<!--   Last name :<input type="text" name="lastName" /> -->
<!--   Email Id  :<input type="text" name="emailId" /> -->
<!--   Password  :<input type="text" name="password" /> -->
<!--   Contact Number  :<input type="text" name="contactNumber" /> -->
<!--   City  :<input type="text" name="city" /> -->
<!--   Gender  :<input type="text" name="gender" /> -->
<!--   Language  :<input type="text" name="language" /> -->
<!--   ZipCode  :<input type="text" name="zipCode" /> -->
<!--   Nationality  :<input type="text" name="nationality" /> -->
<!--              <input type="submit" value="Save" /> -->
<!-- </form> -->

 <%-- shubham ke dwara   
  <div class="container mt-5<!-- ">
        <div class="row justify-content-end">
            <div class="col-md-6">
                <h1 class="mb-4">CrEaTe New AcCoUnt</h1>
                <form action="saveReg" method="post">
            
                <div class="form-group">
                <label for="firstname">First Name</label>
                <input class="form-control" type="text" name="firstName" id="firstname" required/>
                </div>

                <div class="form-group">
                    <label for="lastname">Last Name</label>
                <input class="form-control" type="text" name="lastName" id="lastname" required/>
                </div>

                <div class="form-group"> 
                    <label for="email">EmailId</label>
                <input class="form-control" type="text" name="emailId" id="email"/>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input class="form-control" type="text" name="password" id="password" />
                </div>

                <div class="form-group">
                <label for="contact">Contact Number</label>   
                <input class="form-control" type="text" name="contactNumber"
                id="contact" required/>
                </div>

                <div class="form-group">
                    <label for="city">City</label>
                    <input class="form-control" type="text" name="city" id="city" required/>
                </div>

                <div class="form-group">
                    <label for="gender">Gender</label>
                    <input class="form-control" type="text" name="gender"
                    id="gender" required/>
                </div>

                <div class="form-group">
                    <label for="language">Language</label>
                    <input class="form-control" type="text" name="language" id="language" required/>
                </div>

                <div class="form-group">
                    <label for="zip">ZipCode</label>
                    <input class="form-control" type="text" name="zipCode"
                    id="zip" required/>
                </div>

                <div class="form-group">
                    <label for="nation">Nationality</label>
                    <input class="form-control" type="text" name="nationality" id="nation" required/>
                </div>

                <div class="form-group">
                <input class="btn btn-outline-dark" type="submit" value="Save" />      
                </div>
                </form>
            </div>
        </div>
    </div --%>
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