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
    
    
    <%
    ArrayList<ComplaintForm> list = (ArrayList<ComplaintForm>)request.getAttribute("LIST");
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
        <%
		String m = (String) request.getAttribute("msg");
		if (m != null)
			out.print("<h2 style= 'color:red'>" + m + "</h2>");
		%>
            <span class="title">Reported Criminal Activities</span>
            
                <div class="row">
                  <div class="col-12">
                      <table class="table table-image">
                        <thead>
                          <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Image</th>
                            <th scope="col">Image2</th>
                            <th scope="col">Image3</th>
                            <th scope="col">Crime Type</th>
                  <!--      <th scope="col">Pincode</th>      -->                
                            <th scope="col">No. of people spotted</th>
                            <th scope="col">Crime Location</th>
                            <th scope="col">Description</th>      
                            <th scope="col">Date & Time</th>
                            <th scope="col">Remove</th>
                            <th scope="col">Send Mail</th>
                            
                          </tr>
                        </thead>
                        
                        <%
                        for(ComplaintForm cm : list){
                        	
                        
                        %>
                        
                        
                        <tbody>
                          <tr>
                            <td scope="row"><%=cm.getCid() %></td>
                            <td class="w-25">
                                <img src="images/<%=cm.getImage()%>" class="img-fluid img-thumbnail" alt="Sheep">
                            </td>
                            <td class="w-25">
                                <img src="images/<%=cm.getImage2()%>" class="img-fluid img-thumbnail" alt="Sheep">
                            </td>
                            <td class="w-25">
                                <img src="images/<%=cm.getImage3()%>" class="img-fluid img-thumbnail" alt="Sheep">
                            </td>
                            <td><%=cm.getCrimeType() %></td>
             			<!-- <td><%=cm.getPincode() %></td>   -->   
                            <td><%=cm.getNoOfPeople()%></td>
                            <td><%=cm.getLocation() %></td>
                            <td><%=cm.getDescription() %></td>      
                            <td><%=cm.getDate() %></td>
                            <td><a href="ComplaintDetailsRemove?crime_id=<%=cm.getCid()%>" onclick="return confirm('Are You Sure To Delete This Record?')" type="button" class="btn btn-danger">Remove</a></td>
                          	<td><a href="SendMailCtrl?crime_id=<%=cm.getCid()%>" onclick="return confirm('Are You Sure to send the information VIA mail')" type="button" class="btn btn-success">Send Mail</a></td>
                         
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
    <!-- <section id="interface">
        <div class="navigation">
            <div class="n1">
                <div class="search">
                    <p>The Crime Reporting Portal !</p>
                </div>
            </div>
        </div>
        <div class="container">
            <span class="title">Reported Criminal Activities</span>
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Crime occurred</th>
                        <th>Images</th>
                        <th>No. of people spotted</th>
                        <th>Weaponries </th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Description</th>
                        <th>Remove</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td data-label="ID">R1</td>
                        <td data-label="Crime occurred">Murder</td>
                        <td data-label="Images"><img src="logo3.jpg" style="max-height: 200px; max-width: 200px;"></td>
                        <td data-label="No. of people spotted">2</td>
                        <td data-label="weaponries">revolver</td>
                        <td data-label="Date">28/3/23</td>
                        <td data-label="Time">12:40 pm</td>
                        <td data-label="Description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum, nam?</td>
                        <td data-label="Remove"><button class="remove" type="submit">Remove</button></td>
                    </tr>
                    <tr>
                        <td data-label="ID">R2</td>
                        <td data-label="Crime occurred">fight</td>
                        <td data-label="Images"><img src="logo3.jpg" style="max-height: 200px; max-width: 200px;"></td>
                        <td data-label="No. of people spotted">7</td>
                        <td data-label="weaponries">knife, hockey stick</td>
                        <td data-label="Date">28/3/23</td>
                        <td data-label="Time">2:10 pm</td>
                        <td data-label="Description">Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum, nam?</td>
                        <td data-label="Remove"><button class="remove" type="submit">Remove</button></td>
                    </tr>
                </tbody>
            </table> -->

            <!-- <form class="form" id="login">
                <span class="title">View Homestay</span>
                <div class="form__input-error-message"></div>
                
                <div class="form__input-group">
                    <input type="text" class="form__input" autofocus placeholder="Enter Homestay ID">
                    <i class="fa-solid fa-house-circle-check"></i>
                    <div class="form__input-error-message"></div>
                </div>

                
                <button class="form__button" type="button">View Homestay</button>
            </form> -->
        <!-- </div>
    </section> -->
    
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</html>



