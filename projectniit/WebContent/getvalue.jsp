<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>






<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/CheckAvailability"
     user="root"  password="mayu1997"/>

<sql:query dataSource="${snapshot}" var="result">
SELECT Room_Rent from CheckRoom where Room_Type="AC Rooms Suits" group by Room_Type;
</sql:query>

<form>
<input type="button" name="ABCD" value="<%=request.getParameter("ABC")%>">
</form>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><input type="text" value="${row.room_rent}" readonly/></td>
</tr>
</c:forEach>
</body>
</html>