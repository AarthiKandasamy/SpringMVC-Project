<%@page import="java.util.List"%>
<%@page import="com.dcl.ems.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>

<style>

body{
    font-family: Arial, sans-serif;
    background-color:#f4f6f9;
    text-align:center;
}

h1{
    color:#2c3e50;
    margin-top:30px;
}

table{
    width:70%;
    margin:auto;
    border-collapse:collapse;
    background:white;
    box-shadow:0 0 10px rgba(0,0,0,0.1);
}

th{
    background:#3498db;
    color:white;
    padding:12px;
}

td{
    padding:10px;
}

tr:nth-child(even){
    background:#f2f2f2;
}

tr:hover{
    background:#d6eaf8;
}

a{
    text-decoration:none;
    color:white;
    background:#27ae60;
    padding:10px 18px;
    border-radius:5px;
}

a:hover{
    background:#219150;
}

h2{
    margin-top:30px;
} 

</style>

</head>

<body>

<%
List<Employee> eList=(List<Employee>)request.getAttribute("employeeList");
%>

<h1>All Employee Details</h1>

<table border="1">

<tr>
    <th>Employee Id</th>
    <th>Name</th>
    <th>Email</th>
    <th>Designation</th>
    <th>Salary</th>
    <th>Update</th>
    <th>Delete</th>
</tr>

<% for(Employee e:eList){ %>

<tr>
    <td><%=e.getId()%></td>
    <td><%=e.getName()%></td>
    <td><%=e.getEmail()%></td>
    <td><%=e.getDesignation()%></td>
    <td><%=e.getSalary()%></td>
    <td><a href="find-by-id?id=<%=e.getId()%>">Update</a></td>
    <td><a href="delete-by-id?id=<%=e.getId()%>">Delete</a></td>
</tr>

<% } %>

</table>

<h2>
    <a href="index.jsp">Back to Home Page</a>
</h2>

</body>
</html>