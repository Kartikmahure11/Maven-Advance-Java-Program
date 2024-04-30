 <%@page import="model.User"%>
<%@page import="java.util.List"%>
<%@page import="model.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
<div class="form-container">
    <form action="demo.jsp">
        <label for="uname">User Name:</label><br>
        <input type="text" id="uname" name="uname"><br>

        <label for="upass">User Pass:</label><br>
        <input type="text" id="upass" name="upass"><br>

        <label for="usalary">User Salary:</label><br>
        <input type="text" id="usalary" name="usalary"><br>

        <input type="submit" value="Register">
    </form>
</div>
<br>
 
 
<h1 style="padding-left: 450px">DATA</h1>
 
<table>
<tr><th>ID</th><th>NAME</th><th>PASSWORD</th><th>SALARY</th></tr>
<%
List<User> ul= UserDao.getAllUser();

for(User u:ul)
{
%>

<tr><td><%=u.getUid() %></td><td><%=u.getUname() %></td><td><%=u.getUpass() %></td><td><%=u.getSalary() %></td></tr>

<%
} 
%>
</table>

</body>
</html>
 