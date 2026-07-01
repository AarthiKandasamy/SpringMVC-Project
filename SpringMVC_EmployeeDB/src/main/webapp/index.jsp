<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Dashboard</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

body{
    font-family:Arial, Helvetica, sans-serif;
    background:#f4f6f9;
    height:100vh;

    display:flex;
    justify-content:center;
    align-items:center;
}

.container{

    display:flex;
    flex-direction:column;
    gap:20px;

    justify-content:center;
    align-items:center;

    background:white;
    padding:40px;
    border-radius:10px;

    box-shadow:0 0 15px rgba(0,0,0,0.15);

}

h1{
    color:#2c3e50;
}

h2{

    display:flex;
    gap:15px;

}

h2 a{

    text-decoration:none;
    padding:10px 18px;

    background:#3498db;
    color:white;

    border-radius:5px;

    transition:0.3s;

}

h2 a:hover{

    background:#2980b9;

}

</style>

</head>

<body>

<div class="container">

    <h1>Employee Dashboard</h1>

    <h2>

        <a href="add.jsp">
            Add New Employee
        </a><br><br>

        <a href="display-all">
            Display Employee
        </a>

    </h2>

</div>

</body>
</html>