<%@ page import="java.util.Enumeration" %>
<%@taglib prefix="ce" uri="jakarta.tags.core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html class="no-js" lang="en">

        <!-- belle/shop-grid-5.html   11 Nov 2019 12:39:07 GMT -->

        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
            <meta http-equiv="x-ua-compatible" content="ie=edge">
            <title>RoseBloom</title>
            <meta name="description" content="description">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <!-- Favicon -->
            <link rel="shortcut icon" href="view/images/leaf2.png" />
            <!-- Plugins CSS -->
            <link rel="stylesheet" href="view/style/plugins.css">
            <!-- Bootstap CSS -->
            <link rel="stylesheet" href="view/style/bootstrap.min.css">
            <!-- Main Style CSS -->
            <link rel="stylesheet" href="view/style/style.css">
            <link rel="stylesheet" href="view/style/responsive.css">

            <%-- <link rel="stylesheet" href="view/style/main-style2.css" type="text/css" media="all">--%>
                <style>
                    .flex-i img {
                        height: 100%;
                        width: 100%;
                        object-fit: cover;
                    }

                    .price-filter input[type="text"] {

                        width: 160px;
                    }
                </style>
                <script src="/roseBloom/view/scripts/cart.js"></script>
        </head>

        <body class="template-collection belle">
            <main>
                <%@ include file="header.jsp" %>
                    <div class="pageWrapper" style="margin-top: 130px;">

                        <!--

        <div id="page-content">

            <div class="collection-header">
                <div class="collection-hero">
                    <div class="collection-hero__image"><img class="blur-up lazyload" data-src="plants.jpg"
                            src="view/images/plants.jpg" alt="Women" title="Women" /></div>
                    <div class="collection-hero__title-wrapper">
                        <h1 class="collection-hero__title page-width">Shop Grid 5 Column</h1>
                    </div>
                </div>
            </div>
            -->

                        <div class="container">
                            <div class="row">
                                <!--Sidebar-->
                                <div class="col-12 col-sm-12 col-md-3 col-lg-3 sidebar filterbar"
                                    style="margin-top: 50px;">
                                    <div class="closeFilter d-block d-md-none d-lg-none"><i
                                            class="icon icon anm anm-times-l"></i>
                                    </div>
                                    <div class="sidebar_tags">
                                        <!--Categories-->
                                        <div class="sidebar_widget categories filter-widget">
                                            <div class="widget-title">
                                                <h2>Categories</h2>
                                            </div>
                                            <div class="widget-content">
                                                <ul class="sidebar_categories">
                                                    <li class="level1 sub-level"><a href="#" class="site-nav"><a
                                                                href="#">Plants</a></a>
                                                        <ul class="sublinks">
                                                            <li class="level2"><a
                                                                    href="ProductServlet?categoryName=Outdoors"
                                                                    class="site-nav">Outdoors</a>
                                                            </li>
                                                            <li class="level2"><a
                                                                    href="ProductServlet?categoryName=Indoors"
                                                                    class="site-nav">Indoors</a>
                                                            </li>
                                                            <li class="level2"><a
                                                                    href="ProductServlet?categoryName=Trees"
                                                                    class="site-nav">Trees</a></li>
                                                            <!-- <li class="level2"><a href="ProductServlet?categoryName=Cacti" class="site-nav">Cacti &
                                                                succulents</a>
                                                        </li> -->
                                                        </ul>
                                                    </li>

                                                    <li class="level1 sub-level"><a href="#" class="site-nav">Pots</a>
                                                        <ul class="sublinks">
                                                            <li class="level2"><a
                                                                    href="ProductServlet?categoryName=Clay Pots"
                                                                    class="site-nav">Clay Pots</a></li>
                                                            <li class="level2"><a
                                                                    href="ProductServlet?categoryName=Plastic Pots"
                                                                    class="site-nav">Plastic Pots</a>
                                                            <li class="level2"><a
                                                                    href="ProductServlet?categoryName=Hanging Pots"
                                                                    class="site-nav">Hanging Pots</a>
                                                            <li class="level2"><a
                                                                    href="ProductServlet?categoryName=Table-top Pots"
                                                                    class="site-nav">Table-top Pots</a>
                                                            </li>

                                                        </ul>
                                                    </li>
                                                    <li class="level1 sub-level"><a href="#" class="site-nav">Garden
                                                            Supplies</a>
                                                        <ul class="sublinks">
                                                            <li class="level2"><a
                                                                    href="ProductServlet?categoryName=Gardening Tools"
                                                                    class="site-nav">Gardening Tools</a></li>
                                                            <li class="level2"><a
                                                                    href="ProductServlet?categoryName=Soil"
                                                                    class="site-nav">Soil</a>
                                                            <li class="level2"><a
                                                                    href="ProductServlet?categoryName=Fertilizer"
                                                                    class="site-nav">Fertilizer</a>

                                                            </li>

                                                        </ul>
                                                    </li>

                                                    <li class="lvl-1"><a href="ProductServlet?categoryName=Gifts"
                                                            class="site-nav">Gifts</a></li>

                                                </ul>
                                            </div>
                                        </div>
                                        <!--Categories-->
                                        <!--Price Filter-->
                                        <div class="sidebar_widget filterBox filter-widget">
                                            <div class="widget-title">
                                                <h2>Price</h2>
                                            </div>
                                            <form action="#" method="post" class="price-filter">
                                                <div id="slider-range"
                                                    class="ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all">
                                                    <div class="ui-slider-range ui-widget-header ui-corner-all"></div>
                                                    <span class="ui-slider-handle ui-state-default ui-corner-all"
                                                        tabindex="0"></span>
                                                    <span class="ui-slider-handle ui-state-default ui-corner-all"
                                                        tabindex="0"></span>
                                                </div>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <p class="no-margin"><input id="amount" type="text"></p>
                                                    </div>
                                                    <div class="col-6 text-right margin-25px-top">
                                                        <button class="btn btn-secondary btn--small" type="button" onclick="filter();">filter</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!--End Sidebar-->
                                <!--Main Content-->
                                <jsp:useBean id="category" class="com.rosebloom.dtos.CategoryDto" scope="session" />
                                <div class="col-12 col-sm-12 col-md-9 col-lg-9 main-col shop-grid-5">
                                    <div class="productList">
                                        <div class="category-description">
                                            <h3 id="categoryName">
                                                ${categoryName}
                                            </h3>
                                            <label class="errorMessage" id="errorMessageFieldId"></label><label
                                                class="successMessageField" id="successMessageFieldId"></label>
                                        </div>
                                        <hr>
                                        <!--Toolbar-->
                                        <button type="button" class="btn btn-filter d-block d-md-none d-lg-none">
                                            Product
                                            Filters</button>
                                        <!-- <div class="toolbar">
                                        <div class="filters-toolbar-wrapper">
                                            <div class="row">
                                                <div
                                                    class="col-4 col-md-4 col-lg-4 filters-toolbar__item collection-view-as d-flex justify-content-start align-items-center">
                                                    <a href="shop-left-sidebar.html" title="Grid View"
                                                        class="change-view change-view--active">
                                                        <img src="view/images/grid.jpg" alt="Grid" />
                                                    </a>
                                                    <a href="shop-listview.html" title="List View" class="change-view">
                                                        <img src="view/images/list.jpg" alt="List" />
                                                    </a>
                                                </div>

                                                <div class="col-4 col-md-4 col-lg-4 text-right">
                                                    <div class="filters-toolbar__item">
                                                        <label for="SortBy" class="hidden">Sort</label>
                                                        <select name="SortBy" id="SortBy"
                                                            class="filters-toolbar__input filters-toolbar__input--sort">
                                                            <option value="title-ascending" selected="selected">Sort
                                                            </option>
                                                            <option>Best Selling</option>
                                                            <option>Alphabetically, A-Z</option>
                                                            <option>Alphabetically, Z-A</option>
                                                            <option>Price, low to high</option>
                                                            <option>Price, high to low</option>
                                                            <option>Date, new to old</option>
                                                            <option>Date, old to new</option>
                                                        </select>
                                                        <input class="collection-header__default-sort" type="hidden"
                                                            value="manual">
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div> -->
                                        <!--End Toolbar-->
                                        <div class="grid-products grid--view-items">
                                            <div class="row" id="grid--view-items">
                                                <f:forEach items="${products}" var="current">
                                                    <div class="col-6 col-sm-6 col-md-4 col-lg-2 item">

                                                        <div class="product-image">

                                                            <a href="productDetails?productId=${current.id}">

                                                                <ce:choose>
                                                                    <ce:when test="${fn:length(current.productImages)>1}">
                                                                        <img class="primary blur-up lazyload"
                                                                             data-src="${current.productImages[0].image}"
                                                                             src="${current.productImages[0].image}" alt="image"
                                                                             title="product"
                                                                             style="min-height: 200px; max-height: 200px;">
                                                                        <img class="hover blur-up lazyload"
                                                                             data-src="${current.productImages[1].image}"
                                                                             src="${current.productImages[1].image}" alt="image"
                                                                             title="product" style="min-height: 200px; max-height: 200px;">
                                                                    </ce:when>
                                                                    <ce:otherwise>
                                                                        <img class="primary blur-up lazyload"
                                                                             data-src="${current.productImages[0].image}"
                                                                             src="${current.productImages[0].image}" alt="image"
                                                                             title="product"
                                                                             style="min-height: 200px; max-height: 200px;">
                                                                        <img class="hover blur-up lazyload"
                                                                             data-src="${current.productImages[0].image}"
                                                                             src="${current.productImages[0].image}" alt="image"
                                                                             title="product" style="min-height: 200px; max-height: 200px;">
                                                                    </ce:otherwise>
                                                                </ce:choose>

                                                        </a>
                                                        <!-- end product image -->
                                                        <!-- Start product button -->
                                                        <div class="variants add">
                                                            <button class="btn btn-addto-cart" type="button" id="addToCart_${current.id}" onclick='addToCart(event,"1", "${current.id}", "${current.name}", "${current.productImages[0].image}" , "${current.color}", "${current.price}")'>ADD TO CART</button>
                                                        </div>
                                                        <div class="button-set">
<%--                                                            <a href="javascript:void(0)" title="Quick View"--%>
<%--                                                                class="quick-view-popup quick-view" data-toggle="modal"--%>
<%--                                                                data-target="#content_quickview">--%>
<%--                                                                <i class="icon anm anm-search-plus-r"></i>--%>
<%--                                                            </a>--%>
                                                            <!-- end product image -->
                                                        </div>
                                                        <!-- end product image -->

                                                        <!--start product details -->
                                                        </div>
                                                        <div class="product-details text-center">

                                                            <div class="product-name">
                                                                <a href="#">${current.name} </a>
                                                            </div>
                                                            <!-- End product name -->
                                                            <!-- product price -->
                                                            <div class="product-price">

                                                                <!-- // '<span class="old-price">EGP '+dataa.productsJson[i].oldPrice+'</span>' + -->
                                                                <span class="price">EGP ${current.price}</span>
                                                            </div>
                                                            <!-- End product price -->

                                                            <div class="product-review">
                                                                <i class="font-13 fa fa-star"></i>
                                                                <i class="font-13 fa fa-star"></i>
                                                                <i class="font-13 fa fa-star"></i>
                                                                <i class="font-13 fa fa-star-o"></i>
                                                                <i class="font-13 fa fa-star-o"></i>
                                                            </div>
                                                        </div>
                                                        <!-- End product details -->
                                                    </div>
                                                </f:forEach>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <!--Footer-->
                        <%@ include file="footer.html" %>
                            <!--End Footer-->
                            <!--End Quick View popup-->

                            <!-- Including Jquery -->
                            <script src="view/scripts/vendor/jquery-3.3.1.min.js"></script>
                            <script src="view/scripts/vendor/jquery.cookie.js"></script>
                            <script src="view/scripts/vendor/modernizr-3.6.0.min.js"></script>
                            <script src="view/scripts/vendor/wow.min.js"></script>
                            <!-- Including Javascript -->
                            <script src="view/scripts/bootstrap.min.js"></script>
                            <script src="view/scripts/plugins.js"></script>
                            <script src="view/scripts/popper.min.js"></script>
                            <script src="view/scripts/lazysizes.js"></script>
                            <script src="view/scripts/main.js"></script>
                            <script src="view/scripts/product.js"></script>
                    </div>
            </main>
        </body>

        <!-- belle/shop-grid-5.html   11 Nov 2019 12:39:07 GMT -->

        </html>