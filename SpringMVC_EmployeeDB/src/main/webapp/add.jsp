<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Employee</title>

<style>

body{
    margin:0;
    padding:0;
    font-family:Arial, Helvetica, sans-serif;
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

    box-shadow:0 0 15px rgba(0,0,0,0.2);

}

h1{

    text-align:center;
    color:#2c3e50;
    font-size:24px;
    margin-bottom:25px;

}

form{

    display:flex;
    flex-direction:column;
    gap:15px;

}

input[type=text],
input[type=number]{

    padding:12px;
    border:1px solid #ccc;
    border-radius:5px;
    font-size:16px;

}

input[type=text]:focus,
input[type=number]:focus{

    outline:none;
    border:1px solid #3498db;

}

input[type=submit]{

    background:#3498db;
    color:white;
    border:none;
    padding:12px;
    border-radius:5px;
    cursor:pointer;
    font-size:16px;

}

input[type=submit]:hover{

    background:#2980b9;

}

</style> 

</head>

<body>

<div class="container">

    <h1>Add Employee</h1>

    <form action="add">

        <input type="text"
               placeholder="Enter Name"
               name="name"
               required>

        <input type="text"
               placeholder="Enter Email"
               name="email"
               required>

        <input type="text"
               placeholder="Enter Designation"
               name="designation"
               required>

        <input type="number"
               placeholder="Enter Salary"
               name="salary"
               required>

        <input type="submit" value="Add Employee">

    </form>

</div>

</body>
</html>