<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
   <body>

<div class="container">
  <h3>read-user</h3>
  <table class="table table-bordered table-sm">
    <thead>
      <tr>
        <th>id</th>
        <th>name</th>
        <th>Email</th>
      </tr>
    </thead>
    <tbody>

  <c:forEach items="${users}" var="user">
          <tr>
              <td>${user.id}</td>
              <td>${user.name}</td>
              <td>${user.email}</td>
           </tr>
          </c:forEach>


    </tbody>
  </table>
</div>






   </body>
</html>