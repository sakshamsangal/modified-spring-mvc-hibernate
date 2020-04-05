<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<html>
   <head>

          <title>Bootstrap Example</title>
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

        <script>
            $(document).ready(() => {
                $("#id1").change(() => {
                    $.ajax({
                        url: "find-user-id",
                        data: {id: $("#id1").val()},
                        success: function(response) {
                            $("#errorMessage").text(response);
                        }
                    });
                });
            });
        </script>
   </head>
   <body>

<div class="container">

  <div class="row">
      <div class="col-md-6 offset-md-3">
        <h2>Stacked form</h2>

        <form action="create-user" method="post">
            <div class="form-group">
              <label for="email">Email:</label>
              <input type="text" name="id" id="id1" class="form-control" placeholder="Enter email">
              <span id="errorMessage"></span>

            </div>
            <div class="form-group">
              <label for="pwd">Password:</label>
              <input type="text" class="form-control" id="pwd" placeholder="Enter password" name="name">
            </div>
            <div class="form-group">
              <label for="pwd">Password:</label>
              <input type="text" class="form-control" id="pwd" placeholder="Enter password" name="email">
            </div>

            <button type="submit" class="btn btn-primary btn-block">Submit</button>
          </form>
          <p> ${id}</p>
      </div>
  </div>

</div>

        <!--
        <form action="create-user" method="post">
            <input type="text" name="id" id="id1"/>
            <span id="errorMessage"></span><br/>
            <input type="text" name="name" />
            <input type="text" name="email" />
            <button type="submit">Submit</button>
        </form>-->

   </body>
</html>