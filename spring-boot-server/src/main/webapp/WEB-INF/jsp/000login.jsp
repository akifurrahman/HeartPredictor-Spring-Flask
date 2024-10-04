<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Heart Disease Prediction</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="../css/main.css" rel="stylesheet" media="all">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <style>
        body{
        font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        .registerbutton{
            background-color: rgb(97, 97, 97);
            border-radius: 16px;
            font-size: 1rem;
            padding: 10px;
            text-align: center;
            color: rgb(255, 255, 255);
            text-decoration: none;
            width: 50%;
            margin:20px auto;
        }
    </style>
</head>

<body>
   <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <br><br><br><br><br><br><br><div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Log In</h2>
                    <h2 class="title" style="color: rgb(0, 255, 85);">${info}</h2>
                </div>
               <div class="card-body">
                    <form method="post" action="loginsubmit">
                        <div class="form-row">
                            <div class="name">E-Mail:</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" id="emailid" name="emailid">
                                </div>
                            </div>
                        </div>
                       
                        <div class="form-row">
                            <div class="name">Password:</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="password" name="password" id="password">
                                </div>
                            </div>
                        </div>
                        
                        
                        
                      
                   
                    <div>
                        <center><input  class="btn btn--radius-2 btn--red" type="submit" value="Login"></input></center>
                    </div>
                </form>
                    <div>
                        <p class="registerbutton"><a href="registerForm">Register</a></p>
                        <button type="button" class="btn btn-dark">Dark</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <main class="form-signin w-100 m-auto">
  <form action="panel.html">
    <img class="mb-4 logo" src="./logo2.PNG" alt="" width="72" height="57">
    <h1 class="h3 mb-4 font-weight-normal">Please Sign in here</h1>

    <div class="form-floating">
        <!-- <label for="floatingInput">Email address</label> -->
      <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
    </div>
    <div class="form-floating">
        <!-- <label for="floatingPassword">Password</label> -->
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
    </div>

    <div class="checkbox mb-3">
      <label>
        <input type="checkbox" value="remember-me"> Remember me
      </label>
    </div>
    <button class="w-100 btn btn-lg button" type="submit">Sign in</button>
    <p class="mt-5 mb-3 text-muted">&copy; Hyderabad Traffic Police</p>
  </form>
</main>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->