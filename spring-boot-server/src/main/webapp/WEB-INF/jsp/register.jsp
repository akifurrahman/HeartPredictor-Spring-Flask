<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><script src="../assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.122.0">
    <title>Heart Disease Prediction</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">

    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3"> -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<!-- <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet"> -->

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }

      .bd-mode-toggle {
        z-index: 1500;
      }

      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }

      html,
body {
  height: 100%;
}

.form-signin {
  max-width: 330px;
  padding: 1rem;
}

.form-signin .form-floating:focus-within {
  z-index: 2;
}

.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

.roundedbox{
  border-radius: 6px 6px 0px 0px!important;
}

.roundedbox2{
  border-radius: 0px 0px 6px 6px!important;
}

.signupbutton{
  background: linear-gradient(to right, #864ddf, #203376)!important;
  color: white;
  font-weight: bold;
  height: 50px!important;
}
.signupbutton:hover{
  background: linear-gradient(to right, #6e40b7, #1a295f)!important;
  color: white;
  font-weight: bold;
}

a{
  all: unset;
}

a, a:hover, a:active, a:visited{
  color: #864ddf!important;
}

a:hover{
  text-decoration: underline;
}

p{
  font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif!important;
}

.wrap-input100{
  text-align: center;
}


    </style>

    
    <!-- Custom styles for this template -->
    <!-- <link href="sign-in.css" rel="stylesheet"> -->
  </head>
  <body class="d-flex flex-row flex-row-reverse align-items-center py-4 bg-body-tertiary">
    
    <h1 class="h1 m-5 p-5 text-left fw-bold"> <span class="h5">Heart Disease Prediction Using </span> <hr> Novel Quine Mccluskey <br> Binary Classifier (QMBC)</h1>
    <main class="form-signin w-100 m-auto">
      <h1 class="h3 mb-4 text-center fw-bold">Please Register to Continue</h1>
      <c:choose>
        <c:when test="${info!=null}">
          ${info}
          <br />
        </c:when>
        <c:otherwise>
        
        <form method="POST" action="register">

    <div class="form-floating">
      <input type="text" class="form-control roundedbox" id="floatingInput" name="name" placeholder="John Appleseed" required>
      <label for="floatingInput">Name</label>
    </div>

    <div class="form-floating mb-4">
      <!-- <input type="number" class="form-control roundedbox2" id="floatingPassword" name="mobile" placeholder="1234567890" pattern="/^[0-9]{10,10}$/" required> -->

      <input type="tel" class="form-control roundedbox2" id="floatingInput" name="mobile" placeholder="12345-67890" pattern="[0-9]{10}" maxlength=10 required>

      <label for="floatingInput">Mobile Number</label>
    </div>

    
    
    <div class="form-floating">
      <input type="email" class="form-control" id="floatingInput" name="emailid" placeholder="name@example.com" required>
      <label for="floatingInput">Email address</label>
    </div>

    <div class="form-floating mb-4">
      <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="Password" required>
      <label for="floatingPassword">Password</label>
    </div>

    <!-- <div class="form-check text-start my-3">
      <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        Remember me
      </label>
    </div> -->

    <button class="btn signupbutton w-100 py-2" type="submit">Sign Up</button>
  </form>
</c:otherwise>
</c:choose>
  <p class="mt-3 mb-3 text-center">Already a user? <a href="login">Log In</a></p>
</main>
<!-- <script src="../assets/dist/js/bootstrap.bundle.min.js"></script> -->

    </body>
</html>
