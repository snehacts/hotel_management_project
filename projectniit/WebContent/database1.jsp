<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Available Rooms</title>
</head>
<body background="C:\EclipseNew\projectniit\images\logincustomer.jpg">
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/CheckAvailability"
     user="root"  password="mayu1997"/>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from CheckRoom;
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
</body>
</html>