<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Heart Disease Prediction - Admin</title>

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Dosis:400,500|Poppins:400,700&amp;display=swap" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

  <style>
    body{
      font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif!important;
    }
  </style>

</head>

<body class="sub_page">
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-8">
            <nav class="navbar navbar-expand-lg custom_nav-container ">
              <a class="navbar-brand" href="/adminHome">
                <span>
                  Heart Disease Prediction
                </span>
              </a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="d-flex flex-column flex-lg-row align-items-center">
                  <ul class="navbar-nav">
                    <li class="nav-item">
                      <a class="nav-link" href="/users">Patients</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="/resultsPage">Results</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="/logout">Logout</a>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </header>
    <!-- end header section -->
  </div>

  <!-- welcome section -->
  <section class="welcome_section layout_padding">
    <!-- <div class="m-2 overflow-auto"> -->
    <!-- <div class="container"> -->
    <div class="container-fluid">
      <div class="custom_heading-container">
        <h2>
          Welcome, Doctor.
        </h2>
      </div>
      <c:choose>
        <c:when test="${home != null}">
          <div class="row">
            <div class="col-lg-6 m-auto">
              <div class="layout_padding">
                <div class="detail-box">
                  <p>
                    The Quinn McCluskey Binary Classifier employs advanced algorithms to predict heart disease with high accuracy. <br> <br> By analyzing a variety of patient data, including medical history, lifestyle factors, and genetic predispositions, it generates binary outcomes, indicating the presence or absence of heart disease. <br> <br> Its predictive power stems from robust feature selection and efficient model training, enabling timely intervention and personalized treatment plans. <br> <br> With its reliable performance, the Quinn McCluskey classifier offers a promising tool for early detection and management of cardiovascular health risks.
                  </p>
                </div>
              </div>

            </div>
            <div class="col-lg-4 m-auto">
              <div class="layout_padding">
                <div class="img-box">
                  <img src="https://dvl2h13awlxkt.cloudfront.net/assets/general-images/Knowledge/_800x800_crop_center-center_82_none/heart-anatomy.png?mtime=1675729924" alt="">
                </div>
              </div>
            </div>
          </div>
        </c:when>

        <c:when test="${userspage != null}">
          <div class="row">
            <div class="col-lg-6 m-auto">
              <div class="layout_padding">
                <div class="detail-box">
                  <table class="table">
                    <tr>
                      <td>Patient ID</td>
                      <td>Patient Name</td>
                      <td>Patient E-Mail</td>
                      <td>Mobile</td>
                    </tr>
                    <c:forEach items="${users}" var="element">
                      <tr>
                        <td>${element.userId}</td>
                        <td>${element.name}</td>
                        <td>${element.emailId}</td>
                        <td>${element.mobile}</td>
                      </tr>
                    </c:forEach>
                  </table>
                </div>
              </div>

            </div>
            <div class="col-lg-4 m-auto">
              <div class="layout_padding">
                <div class="img-box">
                  <img src="https://dvl2h13awlxkt.cloudfront.net/assets/general-images/Knowledge/_800x800_crop_center-center_82_none/heart-anatomy.png?mtime=1675729924" alt="">
                </div>
              </div>
            </div>
          </div>
        </c:when>


        <c:when test="${resultsPage != null}">
          <h3>${result}</h3>
          <div class="row">
            <div class="col-lg-12">
              <div class="">

                <div class="detail-box overflow-auto">
                  <table class="table table-bordered">
                    <tr>
                      <td>ID</td>
                      <td>Age</td>
                      <td>Sex</td>
                      <td>Chest Pain Type</td>
                      <td>Resting Blood Pressure</td>
                      <td>Serum Cholesterol</td>
                      <td>Fasting Blood Sugar</td>
                      <td>Resting ECG Results</td>
                      <td>Max Heart Rate</td>
                      <td>Exercise Induced Angina</td>
                      <td>ST Depression</td>
                      <td>Slope of Peak Exercise ST Segment</td>
                      <td>Major Vessels Colored by Fluoroscopy</td>
                      <td>Thalassemia Test</td>
                      <td>Results</td>
                      <td>Operations</td>
                    </tr>
                    <c:forEach items="${results}" var="element">
                      <tr>
                        <td>${element.userid}</td>
                        <td>${element.age}</td>
                        <td>${element.sex}</td>
                        <td>${element.cp}</td>
                        <td>${element.trestbps}</td>
                        <td>${element.chol}</td>
                        <td>${element.fbs}</td>
                        <td>${element.restecg}</td>
                        <td>${element.thalach}</td>
                        <td>${element.exang}</td>
                        <td>${element.oldpeak}</td>
                        <td>${element.slope}</td>
                        <td>${element.ca}</td>
                        <td>${element.thal}</td>
                        <td>${element.result}</td>
                        <td>
                          <form action="checkResult" method="get">
                            <input type="hidden" value="${element.id}" name="uid" />
                            <input type="submit" value="Check" class="btn btn-outline-success">
                          </form>
                        </td>
                      </tr>
                    </c:forEach>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </c:when>
      </c:choose>

    </div>
  </section>
  <!-- end welcome section -->



  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>