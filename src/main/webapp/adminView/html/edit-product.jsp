<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Edit Product - Dashboard Admin Template</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
  <!-- https://fonts.google.com/specimen/Roboto -->
  <link rel="stylesheet" href="adminView/css/fontawesome.min.css" />
  <!-- https://fontawesome.com/ -->
  <link rel="stylesheet" href="adminView/jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
  <!-- http://api.jqueryui.com/datepicker/ -->
  <link rel="stylesheet" href="adminView/css/bootstrap.min.css" />
  <!-- https://getbootstrap.com/ -->
  <link rel="stylesheet" href="adminView/css/templatemo-style.css">
  <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  <style>
    .form-control[readonly] {
    background-color: #54657d;
}
  </style>
</head>

<body onload="setcategory('${category}');">
  <nav class="navbar navbar-expand-xl">
    <div class="container h-100">
      <a class="navbar-brand" href="adminView/product-admin-master/index.jsp">
        <h1 class="tm-site-title mb-0">Product Admin</h1>
      </a>
      <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse"
        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
        aria-label="Toggle navigation">
        <i class="fas fa-bars tm-nav-icon"></i>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mx-auto h-100">
          <li class="nav-item">
            <a class="nav-link" href="adminView/product-admin-master/index.jsp">
              <i class="fas fa-tachometer-alt"></i> Dashboard
              <span class="sr-only">(current)</span>
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link active" href="ViewProductsServlet">
              <i class="fas fa-shopping-cart"></i> Products
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="ViewUsers">
              <i class="far fa-user"></i> Users
            </a>
          </li>
          
        </ul>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link d-block" href="LogoutPage">
              Admin, <b>Logout</b>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="container tm-mt-big tm-mb-big">
    <div class="row">
      <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
        <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
          <div class="row">
            <div class="col-12">
              <h2 class="tm-block-title d-inline-block">Edit Product</h2>
            </div>
          </div>
          <div class="row tm-edit-product-row">
            <div class="col-xl-6 col-lg-6 col-md-12">
              <form class="tm-edit-product-form" action="editProduct" method="post"
                enctype="multipart/form-data">
                <input id="productId" name="productId" type="text" value=${product.id} style="display:none;"
                  class="form-control validate" />
                <div class="form-group mb-3">
                  <label for="name">Product Name</label>
                  <input id="nameInput" name="nameInput" type="text" value=${product.name} class="form-control validate" readonly/>
                </div>
                <div class="form-group mb-3">
                  <label for="description">Description</label>
                  <textarea id="description" name="description" class="form-control validate tm-small" rows="5"
                  readonly>${product.description}</textarea>
                </div>
                <div class="form-group mb-3">
                  <label for="category">Category</label>
                  <input id="Category" name="Category" type="text" value=${category} class="form-control validate" readonly/>
                </div>

                <!-- <div class="form-group mb-3">
                  <label for="price">Price</label>
                  <input id="price" name="price" type="text" va class="form-control validate" />
                </div> -->
                <div class="row">
                  <div class="form-group mb-3 col-xs-12 col-sm-6">
                    <label for="price">Size</label>
                    <input id="size" name="size" type="text" value=${product.size} class="form-control validate readonly" />
                  </div>
                  <div class="form-group mb-3 col-xs-12 col-sm-6">
                    <label for="stock">Color
                    </label>
                    <input id="color" name="color" type="text" value=${product.color} class="form-control validate readonly" />
                  </div>
                </div>
                

            </div>
            <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
              <div class="form-group mb-3">
                <label for="stock">Units In Stock</label>
                <input id="stock" name="stock" type="number" value=${product.quantity} class="form-control validate" />
              </div>
              <div class="form-group mb-3">
                
                  <label for="price">Price</label>
                  <input id="price" name="price" type="number" value=${product.price} class="form-control validate" />
               
                
              </div>
              <a class="btn btn-primary btn-block mx-auto" data-toggle="collapse" href="#collapseExample" role="button"
                aria-expanded="false" aria-controls="collapseExample">
                Change image 1
              </a>


              <div class="collapse" id="collapseExample">
                <div class="card card-body">
                  <div class="tm-product-img-edit mx-auto">
                    <img src='${product.productImages[0].image}' id="img1" alt="Product image"
                      class="img-fluid d-block mx-auto">
                    <i class="fas fa-cloud-upload-alt tm-upload-icon"
                      onclick="document.getElementById('fileInput1').click();"></i>
                  </div>
                  <div class="custom-file mt-3 mb-3">
                    <input id="fileInput1" name="fileInput1" type="file" style="display:none;"
                      accept="image/png, image/gif, image/jpeg" onchange="updateImageDisplay(event,'img1');" />
                    <input type="button" class="btn btn-primary btn-block mx-auto" value="CHANGE IMAGE NOW"
                      onclick="document.getElementById('fileInput1').click();" />
                  </div>
                </div>
              </div>
              <a class="btn btn-primary btn-block mx-auto" data-toggle="collapse" href="#collapseExample2" role="button"
                aria-expanded="false" aria-controls="collapseExample">
                Change image 2
              </a>
              <div class="collapse" id="collapseExample2">
                <div class="card card-body">
                  <div class="tm-product-img-edit mx-auto">
                    <img src='${product.productImages[1].image}' id="img2" alt="Product image"
                      class="img-fluid d-block mx-auto">
                    <i class="fas fa-cloud-upload-alt tm-upload-icon"
                      onclick="document.getElementById('fileInput2').click();"></i>
                  </div>
                  <div class="custom-file mt-3 mb-3">
                    <input id="fileInput2" name="fileInput2" type="file" style="display:none;"
                      accept="image/png, image/gif, image/jpeg" onchange="updateImageDisplay(event,'img2');" />
                    <input type="button" class="btn btn-primary btn-block mx-auto" value="CHANGE IMAGE NOW"
                      onclick="document.getElementById('fileInput2').click();" />
                  </div>
                </div>
              </div>
              <a class="btn btn-primary btn-block mx-auto" data-toggle="collapse" href="#collapseExample3" role="button"
                aria-expanded="false" aria-controls="collapseExample">
                Change image 3
              </a>
              <div class="collapse" id="collapseExample3">
                <div class="card card-body">
                  <div class="tm-product-img-edit mx-auto">
                    <img src='${product.productImages[2].image}' id="img3" alt="Product image"
                      class="img-fluid d-block mx-auto">
                    <i class="fas fa-cloud-upload-alt tm-upload-icon"
                      onclick="document.getElementById('fileInput3').click();"></i>
                  </div>
                  <div class="custom-file mt-3 mb-3">
                    <input id="fileInput3" name="fileInput3" type="file" style="display:none;"
                      accept="image/png, image/gif, image/jpeg" onchange="updateImageDisplay(event,'img3');" />
                    <input type="button" class="btn btn-primary btn-block mx-auto" value="CHANGE IMAGE NOW"
                      onclick="document.getElementById('fileInput3').click();" />
                  </div>
                </div>
              </div>
           

            </div>
            <input type="text" name="img1" value='${product.productImages[0].image}' style="display: none;">
            <input type="text" name="img2" value='${product.productImages[1].image}' style="display: none;">
            <input type="text" name="img3" value='${product.productImages[2].image}' style="display: none;">
            <div class="col-12">
              <button type="submit" onclick="validateForm()" class="btn btn-primary btn-block text-uppercase">Update Now</button>
            </div>
            </form>
          </div>
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

  <script src="adminView/js/jquery-3.3.1.min.js"></script>
  <!-- https://jquery.com/download/ -->
  <script src="adminView/jquery-ui-datepicker/jquery-ui.min.js"></script>
  <!-- https://jqueryui.com/download/ -->
  <script src="adminView/js/bootstrap.min.js"></script>
  <script src="adminView/js/product.js"></script>
  <!-- https://getbootstrap.com/ -->

</body>

</html>