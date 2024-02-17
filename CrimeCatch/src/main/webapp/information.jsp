<%@page import="crimecatch.dto.ComplaintForm"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="info_style.css">
  
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  
  
  
</head>
<body>

 	<%
 	ArrayList<ComplaintForm> list = (ArrayList<ComplaintForm>)request.getAttribute("LIST");
    %>
    
    
 

    
              <nav class="navbar" style="background-color: #280032f3; height: 70px;">
    <div class="container-fluid">
      <div class="logo">
        <img src="logo3.png" alt="" height="44px" style="padding-bottom: 0px;">
        <a href="crime.jsp" style="color: white; text-decoration: none;">
          <p>RIMECATCH</p>
        </a>
      </div>
      <!-- <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-warning" type="submit">Search</button>
          </form> -->
    </div>
  </nav>
    

        <div class="News" style="margin: 30px;">
        <%
        for(ComplaintForm cm : list){
         %>
         
         <div class="card" style="width: 30%;">
      <img src="images/<%=cm.getImage() %>"  class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Crime : <%=cm.getCrimeType() %></h5>
        <h5 class="card-title">Location : <%=cm.getLocation() %></h5>
        <h5 class="card-title">Date : <%=cm.getDate() %></h5>
        <a href="InformationLinkCtrl?id=<%=cm.getCid() %>" class="btn btn-primary" >Read More</a>
      </div>
    </div>
    
            <%
               }
            %>     
    </div>
    
    
    <div class="footer-dark">
      <footer>
        <div class="container">
          <div class="row">
            <!-- <div class="col-sm-6 col-md-3 item">
                    <h3>Services</h3>
                    <ul>
                        <li>100% Anonymous Crime Reporting</li>
                        <li>Safety And Security Tips For Your And Your Loved Ones Security</li>
                    </ul>
                </div> -->
            <div class="col-sm-8 item">
              <h2>About</h2>
              <ul>
                <li>100% Anonymous Crime Reporting</li>
                <li>Safety And Security Tips For Your And Your Loved Ones Security</li>
                <li>We never ask for your personal details, just what you know about crime.</li>
              </ul>
            </div>
            <div class="col-sm-4 item text">
              <h2>Connect with us</h2>
              <ul class="icons" style="font-size: 35px; padding: 0px;">
                <a href="#"><i class="fa-brands fa-instagram" style="padding: 5px;"></i></a>
                <a href="#"><i class="fa-brands fa-square-facebook" style="padding: 5px;"></i></a>
                <a href="#"><i class="fa-brands fa-twitter" style="padding: 5px;"></i></a>
                <a href="tel:+917489012235"><i class="fa-solid fa-phone" style="padding: 5px;"></i></a>
              </ul>
            </div>

            <br><br>
            <p class="copyright" style="font-size: medium; padding-top:30px;">Designed and developed by
              <span><b>G-5</b></span>
            </p>
          </div>
      </footer>
    </div>
    
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
      integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
      crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
      crossorigin="anonymous"></script>
    
    
    
    
    
    
    

<!--  

    <div id="popup">
        <h2>Some quick example text to build on the card title and make up the bulk of the card's
            content.</h2> 
        <div id="carouselExampleAutoplaying" class="carousel slide py-4" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <p></p>
        <a href="#" class="btn btn-secondary d-grid gap-2 col-2 mx-auto" onclick="toogle()">Close</a>

    </div>

    <script type="text/javascript">
        function toogle() {
            var blur = document.getElementById('blur');
            blur.classList.toggle('active');
            var popup = document.getElementById('popup');
            popup.classList.toggle('active')
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
        crossorigin="anonymous"></script>


-->
</body>

</html>