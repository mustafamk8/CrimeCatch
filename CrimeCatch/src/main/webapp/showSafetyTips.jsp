<%@page import="crimecatch.dto.AddTips"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Safety Tips</title>
    <link href="ShowSafetyTips.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body style="background-color: #dddfe4;">
  <nav class="navbar" style="background-color: #280032f3; height: 70px;">
		<div class="container-fluid">
			<div class="logo">
        <img src="logo3.png" alt="" height="44px">
        <a href="crime.jsp"><p>RIMECATCH</p></a>
      </div>
			<!-- <form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-warning" type="submit">Search</button>
			</form> -->
		</div>
	</nav>
	
	
	<%
	ArrayList<AddTips> list = (ArrayList<AddTips>)request.getAttribute("LIST");
	%>
	
	
    <p class="text-center my-4" style="font-size: 40px; font-weight: 600; color: #25002ef3;">SAFETY AND SECURITY TIPS</p>
        <div class="accordion" id="accordionPanelsStayOpenExample">
           
           <%
        for(AddTips ad : list){
         %>
           
           
            <div class="accordion-item">
              <h2 class="accordion-header">
                <button class="accordion-button" type="button" style="background-color: #1c0b2142; color: #25002ef3;" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                  <%=ad.getCrimeType() %>
                </button>
                
                
              </h2>
              <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse ">
                <div class="accordion-body">
                  <%=ad.getDescription() %>
                 </div>
              </div>
            
            
         <%
        }
         %>   
            
           </div> 
  </div>
  <div class="container">
  <%@include file="footer.jsp" %>
  </div>
  
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.min.js" integrity="sha384-heAjqF+bCxXpCWLa6Zhcp4fu20XoNIA98ecBC1YkdXhszjoejr5y9Q77hIrv8R9i" crossorigin="anonymous"></script>
</body>
</html>