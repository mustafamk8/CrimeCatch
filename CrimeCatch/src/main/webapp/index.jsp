<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<title>CrimeCatch</title>


<link rel="stylesheet" href="prjct/public/css/ionicons.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link href='//fonts.googleapis.com/css?family=Roboto Condensed
	rel='stylesheet'>
<link rel="stylesheet" href="prjct/public/css/landingPageStyle2.css">

<link rel="stylesheet" href="prjct/public/css/flatpickr.min.css">

<link rel="stylesheet" href="prjct/public/css/style.css">
<link rel="stylesheet" href="prjct/public/css/airbnb-dates.css">
<link href='https://fonts.googleapis.com/css?family=Poppins'
	rel='stylesheet'>
<style>
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
.card {
background: rgba( 192, 109, 220, 0.5 );
box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
backdrop-filter: blur( 0.5px );
-webkit-backdrop-filter: blur( 0.5px );
border-radius: 10px;
border: 1px solid rgba( 255, 255, 255, 0.18 );
}
</style>
</head>
<body>

	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<div class="logo">
                    <img src="logo3.png" alt="" height="44px">
                    <p>RIMECATCH</p>
                  </div>
			<form class="d-flex">
				<input class="form-control me-2" type="search" placeholder="Search"
					aria-label="Search">
				<button class="btn btn-outline-warning" type="submit">Search</button>
			</form>
		</div>
	</nav>
	<!--  
<nav class="navbar navbar-dark bg-dark justify-content-between">
    <div class="logo">
        <img src="logo3.png" alt="">
        <p>RIMECATCH</p>
      </div>
    <form class="d-flex">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </nav>
  
  -->
	<div class="skw-pages" >
		<div class="skw-page skw-page-1 active">
			<div class="skw-page__half skw-page__half--left">
				<div class="skw-page__skewed">
					<div class="skw-page__content"></div>
				</div>
			</div>
			<div class="skw-page__half skw-page__half--right">
				<div class="skw-page__skewed">
					<div class="skw-page__content">
						<p class="skw-page__heading" style="font-size: 50px;">CrimeCatch</p>

						<!-- <p class="skw-page__description">Quieres saber que tan inseguro es tu barrio? o cuales son los crimenes más frecuentes? Acá puedes informarte.</p>
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-5">
                <a class="btn-landingPage btn btn-lg btn-default irAPanelAgregarCrimen" href="#mapSection" >Denuncia</a>
              </div>
              <div class="col-md-1"></div>
              <div class="col-md-5">
                <a class="btn-landingPage btn btn-lg btn-default" href="#mapSection">Informate</a>
              </div>
            </div> -->


						<p class="skw-page__description">An anonymous crime reporting
							platform where anyone can report about any criminal activity.</p>
						<div class="container-fluid">
							<div class="row">
								<div class="btn">
									<a href="complaintForm.html">Give Information</a>
								</div>
								<div class="btn">
									<a href="InformationCtrl">News</a>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="skw-page skw-page-2">
			<div class="skw-page__half skw-page__half--left">
				<div class="skw-page__skewed">
					<div class="skw-page__content">
						<p class="skw-page__heading" style="font-size: 50px;">CrimeCatch</p>
						<!--<p class="skw-page__description">Acá puedes encontrar información sobre los indices de criminalidad de tu ciudad o barrio.</p>-->
						<p class="skw-page__description">An anonymous crime reporting
							platform where anyone can report about any criminal activity.</p>
						<div class="container-fluid">
							<div class="row">
								<div class="btn">
									<a href="complaintForm.html">Give Information</a>
								</div>
								<div class="btn">
									<a href="InformationCtrl">News</a>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="skw-page__half skw-page__half--right">
				<div class="skw-page__skewed" style="background-color:#E5E7EB;">
					<div class="skw-page__content" ></div>
				</div>
			</div>
		</div>

	</div>

	<div  class="boxes" style="margin-top:60px; " >
	<div class="row mx-auto" style="width:70%;" >
  <div class="col-sm-6">
    <div class="card"  >
      <div class="card-body">
        <h5 class="card-title">Give crime information anonymously</h5>
        <p class="card-text">We never ask for your personal information and do not track your device.</p>
        <a href="complaintForm.jsp" class="btn btn-primary">Complain Here</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">Special title treatment</h5>
        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
    </div>
  </div>
</div>
	</div>

	<div class="footer">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<p class="footer-title" style="font-size: 50px;">CrimeCatch</p>
					<p class="footer-text">Lorem ipsum dolor, sit amet consectetur
						adipisicing elit. Tempora dolorum earum numquam dolore, voluptas
						labore id ad odio? Similique, dicta?</p>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-1 col-sm-1"></div>
				<div class="col-md-10 col-sm-10">
					<p class="copyRight">Designed and developed by G-5</p>
				</div>
				<div class="col-md-1 col-sm-1"></div>
			</div>
		</div>
	</div>


	<script src="prjct/public/js/map.js"></script>

	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCUQ2DRYf1qPR-pee0oyseX0zbC0SoL0fk&callback=initMap"></script>

	<script src="prjct/public/js/jquery.min.js"></script>
	<script src="prjct/public/js/bootstrap.js"></script>
	<!--Selector de Fechas-->
	<script src="prjct/public/js/flatpickr.min.js"></script>

	<script src="prjct/public/js/main.js"></script>



</body>
</html>
