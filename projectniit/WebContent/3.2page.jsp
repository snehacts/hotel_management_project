<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment page</title>
  <meta charset="utf-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
 
<style>

.details {
  background-color: paleturquoise;
  height: auto;
width: 100%;
border: #c1c1c1 solid 1px;

}


ul{
float:right;
list-style-type=none;
margin-top:25px;
}

ul li{
display: inline-block;
}

ul li a{
text-decoration: none;
color: DodgerBlue;
padding:10px 30px;
border: 1px solid DodgerBlue;
transition: 0.8s ease;
display: inline-block;
}

ul li a:hover{
background-color: paleturquoise;
color: #000;
}

ul li.active a{
background-color: paleturquoise;
color: #000;
}



.main{
max-width: 1200px;
margin:auto;
}


</style>
  
</head>
<body>
<!-- String s=<%=request.getParameter("ABC")%>  -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/CheckAvailability"
     user="root"  password="mayu1997"/>



<sql:query dataSource="${snapshot}" var="result">
SELECT Room_Rent from CheckRoom where Room_Type="<%=request.getParameter("ABC")%>" group by Room_type;
</sql:query>


<div class="container-fluid">
    <div class="col-sm-3 sidenav">
   
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      
<div class="item active" style="background-color:lightblue">
<br><br><br><br><br><br><br><br><br>
<h1 align="center"> <b><i> WELCOME </i></b> </h1>
<p align="center"> <b>Enter as a Guest and Leave as a Friend</b></p>
<br><br><br><br><br><br><br><br><br><br><br><br><br>

</div>

      <div class="item" style="background-color:gray">
<br><br><br><br><br><br><br><br><br><br>
    <h3 align="center"><b> "A HOTEL ISN'T LIKE A HOME,BUT IT'S BETTER THAN BEING A HOUSE GUEST"</b></h3>
<br><br><br><br><br><br><br><br><br><br>


      </div>
    
      <div class="item" style="background-color:DarkTurquoise">
<br><br><br><br><br><br><br><br><br><br>
       <h3 align="center"><b>"THE GREATE ADVANTAGE OF A HOTEL IS THAT IT IS A REFUGE FROM HOME LIFE"</b></h3>

<br><br><br><br><br><br><br><br><br>

      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>

 
</div>


    </div>

    <div class="col-sm-9 main">
      <img src="C:\EclipseNew\projectniit\images\header-5.png">
<ul> 
<li><a href="3.1page.jsp">BOOKING</a></li>
<li class="active"><a href="#">PAYMENT</a></li>
<li><a href="home.html">LOGOUT</a></li>
</ul>
</div>
</div>
     

<div class="col-sm-10 details" align="center">

<div class="container">
 
 <div class="row">
    
<div class="span12">
    
  <form class="form-horizontal span6">
  
      <fieldset>
       
   <div ><h2><b>PAYMENT</b></h2></div>   
   <h4>[Currently payment gateway is creating issues so please use OTHER PAYMENT OPTION]..</h4>
   <br>
  
  <h4> For a payment you should have an account on paytm. If you dont have paytm account, you can register yourself on paytm.</h4>   
   <h4> Kindly do the payment on 7387555375 this contact number.</h4>

          <div class="control-group">
      
      <label class="control-label">Card Holder's Name</label>
     
       <div class="controls">
          
    <input type="text" class="input-block-level" pattern="\w+ \w+.*" title="Fill your first and last name" required>
      
      </div>
      
    </div>
 
<br>      
       
   <div class="control-group">
       
     <label class="control-label">Card Number</label>
       
     <div class="controls">
           
   <div class="row-fluid">
               
 <div class="span3">
              
    <input type="text" class="input-block-level" autocomplete="off" maxlength="12" required>
                </div>
            
            
   </div>
           
 </div>
         
 </div>
   
<br>    
       
   <div class="control-group">
    
        <label class="control-label">Card Expiry Date</label>
       
     <div class="controls">
           
   <div class="row-fluid">
             
   <div class="span9">
                 
 <select class="input-block-level">
          
          <option>January</option>
         
           <option>February</option>
 
	<option>March</option>
<option>April</option>
<option>May</option>
<option>June</option>
<option>July</option>
<option>August</option>
<option>September</option>
<option>October</option> 
<option>November</option>             
     <option>December</option>
                  </select>
                </div>
              <br>  <div class="span3">
                  <select class="input-block-level">
                    <option>2020</option>
  
<option>2021</option>              
    <option>2022</option>
                    <option>2023</option>
 
<option>2024</option>
 
<option>2025</option>
 
<option>2026</option>
 
<option>2027</option>
 
<option>2028</option>
 
<option>2029</option>
 
<option>2030</option>
           
       </select>
              
  </div>
   
           </div>
    
        </div>
   
       </div>
     
<br>  
        
  <div class="control-group">
            <label class="control-label">Card CVV</label>
            <div class="controls">
              <div class="row-fluid">
                <div class="span3">
                  <input type="text" class="input-block-level" autocomplete="off" maxlength="3" pattern="\d{3}" title="Three digits at back of your card" required>
                </div>
    <br> 
    
    <div class="span8">
    
<div class="control-group">
      <label class="control-label">Room Type</label>
     
       <div class="controls">
 
       

<input type="text" name="mayu" value="<%=request.getParameter("ABC")%>" readonly> 
</div></div>  
<br>   
 
 
 
 <div class="span8">
    
<div class="control-group">
      <label class="control-label">Total Amount</label>
     <div class="controls">
 <c:forEach var="row" items="${result.rows}">
<tr>
   <td><input type="text" class="input-block-level" value="${row.room_rent}" readonly/></td>
</tr>
</c:forEach>
           </div></div> 

  <!-- screenshot may be here -->
                </div>
              </div>
            </div>
          </div>
       
  

<br>

        <div class="form-actions">
      
<input type="button" value="Make a Payment" /></a>
<a href="http://www.paytm.com"><input type="button" value="OTHER PAYMENT OPTION" /></a>
            <input type="Reset" value="Reset">
    </div>      </div>
        </fieldset>
      </form>
    </div>
  </div>
</div>





</div>
</body>
</html>