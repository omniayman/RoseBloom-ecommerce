<%@ page import="java.util.Enumeration" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Admin Dashboard</title>
    <link rel="shortcut icon" href="view/images/leaf2.png" />
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="adminView/css/fontawesome.min.css" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="adminView/css/bootstrap.min.css" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="adminView/css/templatemo-style.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  </head>

  <body id="reportsPage">
    <div class="" id="home">
      <nav class="navbar navbar-expand-xl">
        <div class="container h-100">
          <a class="navbar-brand" href="index.html">
            <h1 class="tm-site-title mb-0">Product Admin</h1>
          </a>
          <button
            class="navbar-toggler ml-auto mr-0"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <i class="fas fa-bars tm-nav-icon"></i>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto h-100">
              <li class="nav-item">
                <a class="nav-link" href="ViewOrders">
                  <i class="fas fa-tachometer-alt"></i>
                   Dashboard
                  <span class="sr-only" >(current)</span>
                </a>
              </li>
              
              <li class="nav-item">
                <a class="nav-link" href="ViewProductsServlet">
                  <i class="fas fa-shopping-cart"></i> Products
                </a>
              </li>

              <li class="nav-item">
                <a class="nav-link active" href="ViewUsers">
                  <i class="far fa-user"></i> Users
                </a>
              </li>
              
            </ul>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link d-block" href="index.jsp">
                  Admin, <b>Logout</b>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

      <div class="container mt-5">
        <div class="row tm-content-row">
          <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-products">
              <div class="tm-product-table-container">
                <h2 class="tm-block-title">Users List</h2>
                <table class="table table-hover tm-table-small tm-product-table">
                  <thead>
                    <tr>
                      <th scope="col">&nbsp;</th>
                      <th scope="col">ID</th>
                      <th scope="col">User NAME</th>
                      <th scope="col">EMAIL</th>
                      <th scope="col">ADDRESS</th>
                      <th scope="col">BIRTHDATE</th>
                      <th scope="col">PHONE NO.</th>
                      <th scope="col">CREDIT LIMIT</th>
                      <th scope="col">JOB</th>
                    </tr>
                  </thead>
                  <c:forEach items="${users}" var="current">

                    <tbody>

                      <tr >
                        <th scope="row"><input type="checkbox" /></th>
                        <td class="tm-product-name"><a href="ViewUserProfile?userId=${current.id}" style="color: aliceblue;"># ${current.id}</a>
                        </td>
                        <td>${current.name}</td>
                        <td>${current.email}</td>
                        <td>${current.address}</td>
                        <td>${current.birthdate}</td>
                        <td>${current.phone}</td>
                        <td>${current.creditLimit}</td>
                        <td>${current.job}</td>
                        
                        
                      </tr>


                    </tbody>

                  </c:forEach>
                </table>
              </div>
              <!-- table container -->
              <!-- <a href="add-product.html" class="btn btn-primary btn-block text-uppercase mb-3">Add new product</a>
              <button class="btn btn-primary btn-block text-uppercase">
                Delete selected products
              </button> -->
            </div>
          </div>

        </div>
      </div>

      
      <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
          <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2018</b> All rights reserved. 
            
            Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
          </p>
        </div>
      </footer>
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    

  </body>
</html>
