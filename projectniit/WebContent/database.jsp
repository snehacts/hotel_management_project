<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>SELECT Operation</title>
</head>
<body>

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/Booking"
     user="root"  password="mayu1997"/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from RoomBook;
</sql:query>

<table border="1" width="100%">
<tr>
   <th>FIRST NAME</th>
   <th>LAST NAME</th>
   <th>PHONE</th>
   <th>EMAIL</th>
   <th>ARRIVAL DATE</th>
   <th>DEPARTURE DATE</th>
   <th>NUMBER OF ADULTS</th>
   <th>NUMBER OF CHILDREN</th>
   <th>CHECK IN</th>
   <th>CHECK OUT</th>
   <th>ROOM TYPE</th>
 </tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.First_name}"/></td>
   <td><c:out value="${row.Last_name}"/></td>
   <td><c:out value="${row.Phone}"/></td>
    <td><c:out value="${row.Email}"/></td>
  <td><c:out value="${row.Arrival_date}"/></td>
 <td><c:out value="${row.Departure_date}"/></td>
  <td><c:out value="${row.Number_of_Adults}"/></td>
  <td><c:out value="${row.Number_of_Children}"/></td>
   <td><c:out value="${row.Check_in}"/></td>
    <td><c:out value="${row.Check_out}"/></td>
     <td><c:out value="${row.Room_Type}"/></td>
 
 
 
 
 
 
</tr>
</c:forEach>
</table>

</body>
</html>