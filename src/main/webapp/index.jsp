<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .fix {
            width: 70px;!important;
        }
        * {
            font-family: Arial,Tahoma;
        }
    </style>
</head>
<body>

<div class="container mt-3 " style="font-family: sans-serif,Arial,Tahoma,VNI-Helve;border: 1px solid black;margin-top: 50px">
    <h2 style="text-align: center">Student Table</h2>
    <p style="text-align: center"><a href="/viewCreate">Create student</a></p>
    <table class="table">
        <thead>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Img</th>
            <th ></th>
            <th ></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="p" items="${students}" >
            <tr>
                <td>${p.id}</td>
                <td>${p.name}</td>
                <td>${p.address}</td>
                <td><img src="${p.img}" alt="loading" style="width: 125px;height: 65px;background: top center / cover ;"></td>

                <td  ><a href="/viewEdit?id=${p.id}" class="btn btn-warning fix" >Edit</a></td>

                <td ><a href="/showDelete?id=${p.id}" class="btn btn-danger fix" >Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
