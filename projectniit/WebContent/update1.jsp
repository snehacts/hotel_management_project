<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Opreation</title>
</head>
<body background="C:\EclipseNew\projectniit\images\logincustomer.jpg">

<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/CheckAvailability"
     user="root"  password="mayu1997"/>

<c:set var="Room_Rent" value="401"/>

<sql:update dataSource="${snapshot}" var="count">
  UPDATE CheckRoom SET Room_Rent = '6000' where Room_number=?;
  <sql:param value="${Room_Rent}" />
</sql:update>

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