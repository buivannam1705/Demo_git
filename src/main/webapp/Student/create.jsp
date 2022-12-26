<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23/12/2022
  Time: 11:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Student create</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

  <style>
    .container{
      border: 1px solid;
      border-radius: 2px;
      background: antiquewhite center / cover ;
      width: 500px;
      margin-top:200px ;
    }

    * {
      font-family: sans-serif,Arial,Tahoma;
    }

  </style>
</head>
<body>
<form method="post" action="/createStudent" class="container mt-3 color-rect-border " >
  <fieldset>
    <legend>Student information</legend>
    <table class="table center-pill">
      <tr>
        <td>Id: </td>
        <td><input type="text" name="id" id="id"></td>
      </tr>
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name"></td>
      </tr>
      <tr>
        <td>Address: </td>
        <td><input type="text" name="address" id="address"></td>
      </tr>
      <tr>
        <td>img </td>
        <td><input type="text" name="img" id="img"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="create student"></td>
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
