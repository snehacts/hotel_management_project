<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="C:\EclipseNew\projectniit\images\logincustomer.jpg">
<!-- http://www.javaknowledge.info/jstl-1-1-simple-insert-update-delete-example/
 -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/CheckAvailability"
     user="root"  password="mayu1997"/>
  
<sql:update dataSource="${snapshot}" var="result">

insert into CheckRoom(Room_number,Room_Type,Room_Rent,Room_Status) values(?,?,?,?);

<sql:param value="${param.Room_number}" />
<sql:param value="${param.Room_Type}" />
<sql:param value="${param.Room_Rent}" />
<sql:param value="${param.Room_Status}" />
</sql:update>


<%-- <sql:update dataSource="${snapshot}" var="result">
INSERT INTO emp VALUES (777,'Neha', 'neha@gmail.com');
</sql:update> --%>

<sql:query dataSource="${snapshot}" var="result">
SELECT * from CheckRoom
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
<a href="home.jsp"><input type="button" value="back"/></a>
</table>

</body>
</html>