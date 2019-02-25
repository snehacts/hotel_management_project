<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>BOOKING PAGE</title>
<script  type="text/javascript" src="jj.js"> </script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
color:DodgerBlue;
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

<br><br><br><br><br><br><br><br><br><br><br>

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
<li class="active"><a href="3.1page.jsp">BOOKING</a></li>
<li><a href="3.2page.jsp">PAYMENT</a></li>
<li><a href="home.html">LOGOUT</a></li>
</ul>
</div>
</div>
     

<div class="col-sm-10 details" align="center">

<form  onsubmit="return validation()"  action="insert.jsp">

<div style="width: 400px;">
</div>

<div style="padding-bottom: 18px;font-size : 24px;"><h2><b>BOOKING</b></h2></div>
<div style="display: flex; padding-bottom: 18px;width : 450px;">
<div style=" margin-left : 0; margin-right : 1%; width : 49%;"><b>First name</b><span style="color: red;"> *</span><br/>
<input type="text" "required"  placeholder="enter first name" id="First_name" name="First_name" style="width: 100%;" class="form-control"/>
</div>
<div style=" margin-left : 1%; margin-right : 0; width : 49%;"><b>Last name</b><span style="color: red;"> *</span><br/>
<input type="text" "required"  placeholder="enter last name" id="Last_name" name="Last_name" style="width: 100%;" class="form-control"/>
</div>
</div>

<div style="display: flex; padding-bottom: 18px;width : 450px;">
<div style="margin-left : 0; margin-right : 1%;width : 49%;"><b>Phone</b><span style="color: red;"> *</span><br/>
<input type="text" pattern="[7-9]{1}[0-9]{9}" placeholder="123456789"  id="Phone" name="Phone" style="width : 100%;" class="form-control"/>
</div>
<div style="margin-left : 1%; margin-right : 0;width : 49%;"><b>Email</b><span style="color: red;"> *</span><br/>
<input type="Email" id="Email" name="Email"  placeholder="enter email id" style="width : 100%;" class="form-control"/>
</div>
</div>

<div style="display: flex; padding-bottom: 18px;width : 450px;">
<div style="margin-left : 0; margin-right : 1%;width : 49%;"><b>Arrival date</b><span style="color: red;"> *</span><br/>
<input type="date"  placeholder="YYYY-MM-DD" id="Arrival_date" name="Arrival_date" style="width : 100%;" class="form-control"/>
</div>

<div style="margin-left : 1%; margin-right : 0;width : 49%;"><b>Departure date</b><span style="color: red;"> *</span><br/>
<input type="date"  placeholder="YYYY-MM-DD" id="Departure_date" name="Departure_date" style="width : 100%;" class="form-control"/>
</div>
</div>

<div style="display: flex; padding-bottom: 18px;width : 450px;">
<div style="margin-left : 0; margin-right : 1%;width : 49%;"><b>Number of adults</b><span style="color: red;"> *</span><br/>
<input type="number" min="1" step="1"/ placeholder="enter number" id="Number_of_Adults" name="Number_of_Adults" style="width : 100%;" class="form-control"/>
</div>
<div style="margin-left : 1%; margin-right : 0;width : 49%;"><b>Number of children</b><br/>
<input type="number" min="0" step="1"/ placeholder="enter number" id="Number_of_Children" name="Number_of_Children" style="width : 100%;" class="form-control"/>
</div>
</div>

<div style="display: flex; padding-bottom: 18px;width : 450px;">
<div style="margin-left : 0; margin-right : 1%;width : 49%;"><b>Check In</b><span style="color: red;"> *</span><br/>
<input type="text" pattern="([0-1]{1}[0-9]{1}|20|21|22|23):[0-5]{1}[0-9]{1}" / placeholder="00:00" id="Check_in" name="Check_in" style="width : 100%;" class="form-control"/>
</div>

<div style="margin-left : 1%; margin-right : 0;width : 49%;"><b>Check Out</b><span style="color: red;"> *</span><br/>
<input type="text" pattern="([0-1]{1}[0-9]{1}|20|21|22|23):[0-5]{1}[0-9]{1}" / placeholder="00:00" id="Check_out" name="Check_out" style="width : 100%;" class="form-control"/>
</div>
</div>

<div style="display: flex; padding-bottom: 18px;width : 450px;">
<div style="margin-left : 0; margin-right : 1%;width : 49%;"><b>Room Type</b><span style="color: red;"> *</span><br/>
<input type="text"  id="Room_Type" name="Room_Type" style="width : 100%;" class="form-control"/>
</div>

<div style="margin-left : 1%; margin-right : 0;width : 49%;">
<a href="3.1.1page.jsp"><button type="button" class="btn btn-primary">Check Available Rooms</button></a>
</div>
</div>
 <div class="form-actions">
   <button type="submit" class="btn btn-primary" >Submit</button>
 &nbsp&nbsp&nbsp&nbsp          <button type="Reset" value="Reset" class="btn">Reset</button>
          </div>

</div>
</form>

         

</body>
</html>
