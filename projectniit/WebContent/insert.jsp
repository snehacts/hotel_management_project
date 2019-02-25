<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>INSERT Operation</title>
</head>
<body background="C:\EclipseNew\projectniit\images\RoomBooked.jpg" >
<!-- http://www.javaknowledge.info/jstl-1-1-simple-insert-update-delete-example/
 -->
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/Booking"
     user="root"  password="mayu1997"/>
  
<sql:update dataSource="${snapshot}" var="result">
insert into RoomBook(First_name,Last_name,Phone,Email,Arrival_date,Departure_date,Number_of_Adults,Number_of_Children,Check_in,Check_out,Room_Type) values(?,?,?,?,?,?,?,?,?,?,?);
<sql:param value="${param.First_name}" />
<sql:param value="${param.Last_name}" />
<sql:param value="${param.Phone}" />
<sql:param value="${param.Email}" />
<sql:param value="${param.Arrival_date}" />
<sql:param value="${param.Departure_date}" />
<sql:param value="${param.Number_of_Adults}" />
<sql:param value="${param.Number_of_Children}" />
<sql:param value="${param.Check_in}" />
<sql:param value="${param.Check_out}" />
<sql:param value="${param.Room_Type}" />
</sql:update>
<form action="3.2page.jsp">
<h1>ROOM BOOKED SUCCUSSFULLY</h1>
<input type="hidden" name="ABC" value="<%=request.getParameter("Room_Type")%>">
<input type="submit" type="submit" value="Continue for payment"></a>
</form>
<%-- <sql:update dataSource="${snapshot}" var="result">
INSERT INTO emp VALUES (777,'Neha', 'neha@gmail.com');
</sql:update> --%>

<!--<sql:query dataSource="${snapshot}" var="result">
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
   <th>ROOM NUMBER</th>
   
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
     <td><c:out value="${row.Room_Number}"/></td>
   
</tr>
</c:forEach> -->
</table>

</body>
</html>