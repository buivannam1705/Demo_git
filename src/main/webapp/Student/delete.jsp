<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23/12/2022
  Time: 11:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <style>
        *{
            font-family: Arial,Tahoma,sans-serif;
        }
    </style>

</head>
<body>
<form method="post" action="/deleteStudent?id=${student.id}" class="container mt-3 color-rect-border " >
    <fieldset>
        <legend>Are you sure?</legend>
        <table class="table center-pill" style="border: 1px solid black">
            <tr>
                    <td>Id: </td>
                    <td>${student.id}</td>
            </tr>
            <tr>
                <td>Name: </td>
                <td>${student.name}</td>
            </tr>
            <tr>
                <td>Address: </td>
                <td>${student.address}</td>
            </tr>
            <tr>
                <td>img: </td>
                <td><img src="${student.img}" alt="loading" style="width: 125px;height: 65px;background: top center / cover ;"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="Delete student" ></td>
            </tr>
            <tr>
                <td><a href="/studentHome">Back</a></td>
                <td></td>
            </tr>

        </table>
    </fieldset>
</form>
</body>
</html>
