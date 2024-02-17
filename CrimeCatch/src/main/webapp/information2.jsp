<%@page import="crimecatch.dto.ComplaintForm"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Information</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/information2Style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">


<link href='https://fonts.googleapis.com/css?family=Poppins'
	rel='stylesheet'>
<style>
  *{
    font-family: poppins;
  }
.logo p {
	margin-top: 3px;
}

.logo {
	display: flex;
	color: #fff;
	padding: 10px 0 0 10px;
	font-size: 35px;
	font-weight: bold;
}


.logo img {
	width: 44px;
	margin-top: 7px;
}

#placeholder{
  font-size: 15px;
  margin: 3px;
}

#buttonva{
  font-size: 15px;
  margin: 3px;
}
    .carousel-item {
      width: 100%;
      height: 100%;
    }

    .carousel-item img {
      width: 550px;
      height: 450px;
      border-radius: 0px;
      box-shadow: 10px;
    }

    .content {
      text-align: left;
      padding: 20px;
      margin-top: 30px;
      padding-right: 20px;
      font-size: 18px;
      border: 1px solid #e9ecef;
      border-left: 2.5px solid #353434;
      border-radius: 1px;
    }

    

    .stay_option {
      text-align: left;
      padding: 20px;
      margin-left: 150px;
      margin-right: 150px;
      margin-bottom: 10px;
      border-bottom: 4px solid#353434;
      font-weight: 900;
      font-size: 40px;
    }

    .special p span{
      color: #353434;
      font-weight:bold;
    }

    header a:hover{
      color: #fff;
    }
    .footer{
      background-color: #353434;
      color: antiquewhite;
      align-content: center;
    }

  </style>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
  <%
  ComplaintForm cm1 = (ComplaintForm)request.getAttribute("ADDPLACE");
   
    %>
  <%@include file="navbar.jsp" %>
  
  
  <section>
    <div class="row my-5">
    <div class="col-md-6">
      <div id="popup">
        <!-- <h2>Some quick example text to build on the card title and make up the bulk of the card's
            content.</h2>  -->
        <div id="carouselExampleAutoplaying" class="carousel slide py-4" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/<%=cm1.getImage() %>" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/<%=cm1.getImage2() %>" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/<%=cm1.getImage3() %>" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <!-- <span class="visually-hidden">Previous</span> -->
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <!-- <span class="visually-"></span> -->
            </button>
        </div>
      </div>
    </div>

    <div class="col-md-6">
      <div class="content">
        <p  style="font-size: 30px;"><%=cm1.getCrimeType() %></p>
        <p>A <%=cm1.getCrimeType() %> has taken place at <%=cm1.getLocation() %>. 
          <ul>
            <li>Location: <%=cm1.getLocation() %> </li>
            <li>No. of people spotted: <%=cm1.getNoOfPeople() %></li>
            <li>Date: <%=cm1.getDate() %></li>
            
            <li>Description: <%=cm1.getDescription() %></li>
          </ul>
        </p>
      </div>
    </div>
  </div>
  </section>
  
  
  
  
  
  
  
<!--
    <div id="popup">
        <h2>Some quick example text to build on the card title and make up the bulk of the card's
            content.</h2> 
        <div id="carouselExampleAutoplaying" class="carousel slide py-4" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/<%=cm1.getImage() %>" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/<%=cm1.getImage2() %>" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="images/<%=cm1.getImage3() %>" class="d-block w-100" alt="...">
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


<%@include file="footer.jsp" %>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"></script>

</body>
</html>