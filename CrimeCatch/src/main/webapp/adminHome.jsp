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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <style>
        *{
            font-family: 'Poppins';
        }
    </style>
    <link rel="stylesheet" href="admin.css">
</head>

<%
response.addHeader("pragma", "no-cache");
response.addHeader("cache-control", "no-store");
response.addHeader("expire", "0");
%>

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

    </section>
</body>

</html>