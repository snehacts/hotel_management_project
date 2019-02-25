<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check Available Room</title>
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
background-color:  paleturquoise;
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
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/CheckAvailability"
     user="root"  password="mayu1997"/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from CheckRoom where Room_Status='Available';
</sql:query>

<table border="1" width="100%">
<tr>
   <th>Room Number</th>
   <th>Room Type</th>
   <th>Room Rent</th>
    <th>Room Status</th>
 </tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.Room_number}"/></td>
   <td><c:out value="${row.Room_Type}"/></td>
   <td><c:out value="${row.Room_Rent}"/></td>
   <td><c:out value="${row.Room_Status}"/></td>
 
 
</tr>
</c:forEach>
</table>
</div>
</form>

         


</body>
</html>