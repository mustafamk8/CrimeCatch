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
    <link rel="stylesheet" href="admin1.css">
</head>

<body>

<%
response.addHeader("pragma", "no-cache");
response.addHeader("cache-control", "no-store");
response.addHeader("expire", "0");
%>

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
    
    <%
    ArrayList<AddTips> list = (ArrayList<AddTips>)request.getAttribute("LIST");
	%>
    
    

    <section id="interface">
        <div class="navigation">
            <div class="n1">
                <div class="search">
                    <p>The Crime Reporting Portal !</p>
                </div>
            </div>
        </div>
        <div class="container">
            <span class="title">Safety Tips</span>
            
            <%
		String m = (String) request.getAttribute("msg");
		if (m != null)
			out.print("<h2 style= 'color:red'>" + m + "</h2>");
		%>
            
            
            <div class="row">
                  <div class="col-12">
                      <table class="table table-image">
                        <thead>
                          <tr>
                            <th scope="col">Sr.No.</th>
                            <!-- <th scope="col">Image</th> -->
                            <th scope="col">Type</th>
                            <th scope="col">Description</th>
                            <th scope="col">Remove</th>
                            <!-- <th scope="col">Words</th>
                            <th scope="col">Shares</th> -->
                          </tr>
                        </thead>
                        <tbody>
                        
                         <%
        for(AddTips ad : list){
         %>
                        
                        
                          <tr>
                            <th scope="row"><%=ad.getId() %></th>
                            <!-- <td class="w-25">
                                <img src="https://s3.eu-central-1.amazonaws.com/bootstrapbaymisc/blog/24_days_bootstrap/sheep-3.jpg" class="img-fluid img-thumbnail" alt="Sheep">
                            </td> -->
                            <td><%=ad.getCrimeType() %></td>
                            <td><%=ad.getDescription() %></td>
                             <td><a href="TipsRemoveCtrl?tip_id=<%=ad.getId()%>" onclick="return confirm('Are You Sure To Delete This Record?')" type="button" class="btn btn-danger">Remove</a></td>
                           <!-- <td>913</td>
                            <td>2.846</td> -->
                          </tr>
                          
                 <%
        }
                 %>         
                          
                          
                         
                        </tbody>
                      </table>   
                  </div>
            </div>
        </div>
    </section>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>