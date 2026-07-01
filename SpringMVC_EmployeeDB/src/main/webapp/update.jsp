<%@page import="com.dcl.ems.model.Employee"%>

<%
Employee emp = (Employee)request.getAttribute("employeeObject");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Employee</title>

<style>

body{
    font-family: Arial, sans-serif;
    background:#f4f6f9;

    display:flex;
    justify-content:center;
    align-items:center;

    height:100vh;
}

.container{

    width:350px;

    background:white;

    padding:30px;

    border-radius:10px;

    box-shadow:0 0 10px rgba(0,0,0,0.2);

}

h2{

    text-align:center;

    color:#2c3e50;

    margin-bottom:20px;

}

input{

    width:100%;

    padding:10px;

    margin:8px 0;

    border:1px solid #ccc;

    border-radius:5px;

    box-sizing:border-box;

}

input[type="submit"]{

    background:#3498db;

    color:white;

    border:none;

    cursor:pointer;

    font-size:16px;

}

input[type="submit"]:hover{

    background:#2980b9;

}

</style>

</head>

<body>

<div class="container">

<h2>Update Employee</h2>

<form action="update-employee">

    <input type="number"
           name="id"
           value="<%=emp.getId()%>"
           readonly="readonly">

    <input type="text"
           name="name"
           value="<%=emp.getName()%>"
           placeholder="Enter Name"
           required>

    <input type="text"
           name="email"
           value="<%=emp.getEmail()%>"
           placeholder="Enter Email"
           required>

    <input type="text"
           name="designation"
           value="<%=emp.getDesignation()%>"
           placeholder="Enter Designation"
           required>

    <input type="number"
           name="salary"
           value="<%=emp.getSalary()%>"
           placeholder="Enter Salary"
           required>

    <input type="submit"
           value="Update Employee">

</form>

</div>

</body>
</html>