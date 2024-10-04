<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html><html><head><meta charset="utf-8"/>

  
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!-- Site Metas -->
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
  
    <title>Heart Disease Prediction - Patient</title>
  
    <!-- slider stylesheet -->
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css"/>
  
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css"/>
  
    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&amp;display=swap" rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet"/>
    <!-- responsive style -->
    <link href="../css/responsive.css" rel="stylesheet"/>
    

    <style>
      .slider_section{
        /*height: 120%!important;*/
        
        padding: 30px;
        overflow: scroll;      
      }
      .hero_area{
        height: inherit;
      }

      .titlenamebox{
        margin-bottom: 40px!important;
      }

      .slider_detail-box{
        margin: 30vh auto;
      }

      body{
        background: linear-gradient(to right, #864ddf, #203376);
        font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif!important;
      }
      .form-control,.form-control:active,.form-control:visited,.form-control:focus{
        background-color: rgb(141, 100, 254);
        border: none;
        color: rgb(240,240,240)!important;
      }
      ::placeholder{
        color: rgb(240,240,240)!important;
      }
      input::-webkit-outer-spin-button,input::-webkit-inner-spin-button {
        -webkit-appearance: none;
        margin: 0;
      }

      .submit-button{
        margin-left: 20vw;
        margin-top: 1vh;
      }

    </style>


  </head>
  
  <body>
    <div class="hero_area">
      <!-- header section strats -->
      <header class="header_section">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-8">
              <nav class="navbar navbar-expand-lg custom_nav-container ">
                <a class="navbar-brand" href="index.html">
                 
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
  
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <div class="d-flex  flex-column flex-lg-row align-items-center">
                    <ul class="navbar-nav  ">
                      <!-- <li class="nav-item active">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                      </li> -->
                      <li class="nav-item active">
                        <a class="nav-link" href="/profile/${um.userId}">Profile</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="/upload">Enter Test Results</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link" href="/view1/${um.userId}">View Results</a>
                      </li>
                     <!--  <li class="nav-item">
                        <a class="nav-link" href="/userHarmFiles/${um.userId}">HARM Report</a>
                      </li> -->
                        <li class="nav-item">
                        <a class="nav-link" href="/logout">Logout</a>
                      </li>
                       
                      
                    </ul>
                    <!-- <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
                      <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
                    </form> -->
                  </div>
                </div>
              </nav>
            </div>
          </div>
        </div>
      </header>
      <!-- end header section -->
      <!-- slider section -->
      <section class=" slider_section ">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
       

          <c:choose>
  <c:when test="${profile != null}">
    <div class="container">
      <div class="row">
        ${msg}
        <div class="col-lg-5 col-md-6">
          <div class="slider_detail-box">
            <h1>
           Welcome, <span class="text-capitalize">${um.name}</span>
            </h1>
          <table class="table text-white">
           <tr>
            <td>Name</td>
            <td>E-Mail</td>
            <td>Mobile</td>
           </tr>
<tr>
  <td>${um.name}</td>
  <td>${um.emailId}</td>
  <td>${um.mobile}</td>
</tr>
          </table>
            <div class="btn-box">
             
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="slider_img-box">
            <img src="../images/slider-img.png" alt=""/>
          </div>
        </div>
      </div>
    </div>
  </c:when>

  <c:when test="${upload != null}">
    
  <div class="container">
    <h1 class="titlenamebox font-weight-bold">
      Welcome, <span class="text-capitalize">${um.name}</span>
      <p>${msg}</p>
       </h1>
    <div class="row">
      
   <div class="col-md-8">
      <form action="insertRecords" method="POST">

        <div class="form-group">
          <label for="age">Age:</label>
          <input type="number" class="form-control" id="age" name="age" placeholder="Enter Age" required>
        </div>
      
      <div class="form-group">
          <label for="sex">Sex:</label>
              <input type="number" class="form-control" id="sex" name="sex" placeholder="Enter Gender (0 for Female, 1 for Male)" required>
      </div>
      
      <div class="form-group">
          <label for="cp">Chest Pain Type:</label>
              <input type="number" class="form-control" id="cp" name="cp" placeholder="1: typical angina, 2: atypical angina, 3: non-anginal pain, 4: asymptomatic" required>
      </div>
      
      <div class="form-group">
          <label for="trestbps">Resting Blood Pressure:</label>
              <input type="number" class="form-control" id="trestbps" name="trestbps" placeholder="Resting Blood Pressure (100-200)" required>
      </div>
      
      <div class="form-group">
          <label for="chol">Serum Cholesterol:</label>
              <input type="number" class="form-control" id="chol" name="chol" placeholder="Serum Cholesterol in mg/dL (150-500)" required>
      </div>
      
      <div class="form-group">
          <label for="fbs">Fasting Blood Sugar:</label>
              <input type="number" class="form-control" id="fbs" name="fbs" placeholder='"1" if Fasting Blood Sugar > 120 mg/dl, else "0"' required>
      </div>
      
      <div class="form-group">
          <label for="restecg">Resting Electrocardiographic Results:</label>
              <input type="number" class="form-control" id="restecg" name="restecg" placeholder="Resting Electrocardiographic Results (values: 0,1,2)" required>
      </div>
      
      <div class="form-group">
          <label for="thalach">Maximum Heart Rate Achieved:</label>
              <input type="number" class="form-control" id="thalach" name="thalach" placeholder="Maximum Heart Rate Achieved (72-200)" required>
      </div>
      
      <div class="form-group">
          <label for="exang">Exercise Induced Angina:</label>
              <input type="number" class="form-control" id="exang" name="exang" placeholder="Exercise Induced Angina (0 for No, 1 for Yes)" required>
      </div>
      
      <div class="form-group">
          <label for="oldpeak">ST Depression Induced by Exercise Relative to Rest:</label>
              <input type="number" class="form-control" id="oldpeak" name="oldpeak" placeholder="ST depression induced by exercise relative to rest (0-6)" required>
      </div>
      
      <div class="form-group">
          <label for="slope">Slope of the Peak Exercise ST Segment:</label>
              <input type="number" class="form-control" id="slope" name="slope" placeholder="The Slope of the Peak Exercise ST Segment (0-2)" required>
      </div>
      
      <div class="form-group">
          <label for="ca">Number of Major Vessels Colored by Fluoroscopy:</label>
              <input type="number" class="form-control" id="ca" name="ca" placeholder="Number of Major Vessels Colored By Fluoroscopy (0-3)" required>
      </div>
      
      <div class="form-group">
          <label for="thal">Thalassemia Test:</label>
              <input type="number" class="form-control" id="thal" name="thal" placeholder="Thalassemia Test (0 = normal, 1 = fixed defect, 2 = reversible defect)" required>
      </div>
      
        <input type="hidden" name="userid" value="${um.userId}"/>
        <input type="submit" value="Submit Report" class="btn btn-light rounded-pill submit-button"/>
      </form>
    </div>
  </div>
    </div>
  </div>
  
  </c:when>

  <c:when test="${view != null}">
    
  <div class="container">
    <div class="row">
      <div class="col-lg-5 col-md-6">
        <div class="slider_detail-box">
          <h1 class="font-weight-bold">
            Welcome, <span class="text-capitalize">${um.name}</span>
       
         <p>${msg}</p>
          </h1>
         <table class="table" style="color:#fff;">
         <tr>
          <td>User ID</td>
          <td>Result</td>
         </tr>

         <tr>

          <c:forEach items="${results}" var="element"> 
  <tr>
    <td>${element.userid}</td>
    <td>${element.result}</td>
    
  </tr>
</c:forEach>
         </tr>

         </table>




          <div class="btn-box">
           
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="slider_img-box">
          <img src="../images/slider-img.png" alt=""/>
        </div>
      </div>
    </div>
  </div>
  
  </c:when>

  
  <c:when test="${harmFiles != null}">
    
  <div class="container">
    <div class="row">
      <div class="col-lg-5 col-md-6">
        <div class="slider_detail-box">
          <h1>
        Harm Report Files
       
         <p>${msg}</p>
          </h1>
         <table class="table" style="color:#fff;">
         <tr>
          <td>FileName</td>
          <td>Action</td>
         </tr>

         <tr>

          <c:forEach items="${files}" var="element"> 
  <tr>
    <td>${element.fileName}</td>
    <td><a href="/deleteFile/${element.fileId}">Delete File</a></td>
    
  </tr>
</c:forEach>
         </tr>

         </table>




          <div class="btn-box">
           
          </div>
        </div>
      </div>
      <div class="col-md-6">
        <div class="slider_img-box">
          <img src="../images/slider-img.png" alt=""/>
        </div>
      </div>
    </div>
  </div>
  
  </c:when>

  <c:otherwise>
    <div class="container">
      <div class="row">
        <div class="col-lg-5 col-md-6">
          <div class="slider_detail-box"> 
            <h1>
              Welcome, <span class="text-capitalize">${um.name}</span>
            </h1>
       
         
            <div class="btn-box">
             
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <div class="slider_img-box">
            <img src="../images/slider-img.png" alt=""/>
          </div>
        </div>
      </div>
    </div>
  </c:otherwise>
</c:choose>
        
             
            
           
       
      </section>
      <!-- end slider section -->
    </div>
  
 
  
  
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
  
  
  
  </body></html>