<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/12/2022
  Time: 8:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Student</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <style>
    *{
      font-family: Arial,Tahoma;
    }
  </style>
</head>
<body>
<form method="post" action="/updateStudent" class="container mt-3 color-rect-border center-pill" >
  <fieldset>
    <legend>Student information</legend>
    <table class="table center-pill">
      <tr>
        <td>Id: </td>
        <td><input  name="id" id="id" value="${student.id}" readonly></td>
      </tr>
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name" value="${student.name}"></td>
      </tr>
      <tr>
        <td>Address: </td>
        <td><input type="text" name="address" id="address" value="${student.address}"></td>
      </tr>
      <tr>
        <td>img :</td>
        <td><input type="text" name="img" id="img" value="${student.img}"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Update student"></td>
      </tr>
      <tr>
        <td></td>
        <td style="float: right;padding: 5px;background-color: #fff;color: #000"><a href="/studentHome">Back</a></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>
