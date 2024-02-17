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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <style>
        * {
            font-family: 'Poppins';
        }
    </style>
    <link rel="stylesheet" href="admin3.css">
</head>

<body>
    <section id="menu">
        <div class="logo">
            <img src="logo3.png" alt="">
            <p>RIMECATCH</p>
        </div>
        <div class="items">
            <li><i class="fa-solid fa-plus"></i><a href="addtips.jsp">Add Safety Tips</a></li>
            <li><i class="fa-solid fa-list"></i><a href="ViewAdminTipsCtrl">View Safety Tips</a></li>
            <li><i class="fa-regular fa-file"></i><a href="ViewReportCtrl">View Reports</a></li> 
          
            
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
        <div class="kick">
            <div class="container">
                <form class="form" method="post" action="AddTipsCtrl" id="login">
                    <span class="title">Add Safety Tips</span>
                    
                    <%
                    String m = (String)request.getParameter("msg");
                    if(m!=null){
                    	out.print("<h2 style= 'color:green'>" + m + "</h2>");
                    }
                    %>
                    
                    
                    <div class="form__input-group">
                            <textarea class="form__input" name="crime_type" autofocus placeholder="Enter Crime Type" rows="8"></textarea>
                            <i class="fa-solid fa-font"></i>
                        </div>
                        <div class="form__input-group">
                            <textarea class="form__input" name="crime_description" autofocus placeholder="Enter Description" rows="6"></textarea>
                            <i class="fa-solid fa-font"></i>
                        </div> 
                        <!-- <div class="form__input-group">
                            <input class="form__input" type="file" multiple>
                            <i class="fa-regular fa-images"></i>
                            <div class="form__input-error-message"></div>
                        </div> -->
                        <button class="form__button" type="submit">Add Tip</button>
                </form>
            </div>
        </div>
    </section>
</body>

</html>