<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>
    admin dashboard
  </title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
    * {
      font-family: 'Poppins';
    }
  </style>
  <link rel="stylesheet" href="admin4.css">
</head>

<body>
  <section id="menu">
    <div class="logo">
      <img src="logo3.png" alt="">
      <p>RIMECATCH</p>
    </div>
  </section>

  <section id="interface">
    <div class="navigation">
      <div class="n1">
        <div class="search">
          <p>The Crime Reporting Portal !</p>
        </div>
      </div>
    </div>


    <div class="container">
    
    <%
					String invalidMsg = (String) session.getAttribute("login-failed");
					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=invalidMsg%>
					</div>


					<%
					session.removeAttribute("login-failed");
					}
					%>
					
					<%
					String lgMsg = (String)session.getAttribute("Logout-Msg");
					if(lgMsg!=null)
					{%>
					
					<div class="alert alert-success" role="alert"><%=lgMsg %></div>
					
						
					<%
					session.removeAttribute("Logout-Msg");
					}
					%>
      <form class="form" id="login" method="post" action="AdminLoginCtrl"> 
        <span class="title">Login</span>
        <div class="form__message form__message--error"></div>
        <div class="form__input-group">
          <input type="text" name="username" class="form__input" autofocus placeholder="Username or email" id="Username">
          <i class="fa-solid fa-user"></i>
          <div class="form__input-error-message"></div>
        </div>
        <div class="form__input-group">
          <input type="password" name="password" class="form__input" autofocus placeholder="Password">
          <i class="fa-solid fa-lock"></i>
          <div class="form__input-error-message"></div>
        </div>
        <button type="submit">Login</button>
      </form>
    </div>
  </section>

</body>

</html>