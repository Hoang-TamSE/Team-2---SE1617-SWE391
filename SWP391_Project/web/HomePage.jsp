<%-- 
    Document   : HomePage
    Created on : May 31, 2022, 4:58:37 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="HomePage.jsp">Trang chủ</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Tin tức</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Thông tin</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false">
                            Ngành đào tạo
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="HomePage_IT.jsp">Kỹ thuật phần mềm</a>
                            <a class="dropdown-item" href="#">An toàn thông tin</a>
                            <a class="dropdown-item" href="#">Trí tuệ nhân tạo</a>
                            <a class="dropdown-item" href="#">Quản trị kinh doanh</a>
                            <a class="dropdown-item" href="#">Kinh doanh quốc tế</a>
                            <a class="dropdown-item" href="#">Truyền thông đa phương tiện</a>
                            <a class="dropdown-item" href="#">Thiết kế mỹ thuật số</a>
                            <a class="dropdown-item" href="#">Quản trị khách sạn</a>
                            <a class="dropdown-item" href="#">Ngôn ngữ Anh</a>
                            <a class="dropdown-item" href="#">Ngôn ngữ Nhật</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Login.jsp">Đăng nhập</a>
                    </li>
                </ul>
                <form class="form-inline my-2 my-lg-0 col-md-4">
                    <div style="position: relative;">
                        <input class="custom_search form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <span class="search_span"></span>
                    </div>
                    <button class="ml-lg-3 btn btn-success my-2 my-sm-0 search_button tx--white" type="button"
                            ripple="ripple">Tìm kiếm</button>
                </form>
            </div>
        </nav>

        <div class="logo">
            <img width="14%" src="images/logofpt.png">
        </div>

        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100"
                         src="images/carousel1.png" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="images/carousel3.png"
                         alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100"
                         src="images/carousel2.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Trước</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Sau</span>
            </a>
        </div>
        <div class="majors">
            <h1 class="text-center">
                NGÀNH ĐÀO TẠO
            </h1>

            <div class="row">
                <div class="col-md-4">
                    <p class="text-center">Công nghệ thông tin</p>
                    <figure class="hover-menu">
                        <img class="img-responsive" src="images/major1.jpg" />
                        <div>
                            <a href="HomePage_IT.jsp">Kỹ thuật phần mềm</a>
                            <a href="#">Trí tuệ nhân tạo</a>
                            <a href="#">An toàn thông tin</a>
                        </div>
                    </figure>
                </div>
                
                <div class="col-md-4">
                    <p class="text-center">Graphic Design</p>
                    <figure class="hover-menu">
                        <img class="img-responsive" src="images/major2.jpg" />
                        <div>
                            <a href="#">Home</a>
                            <a href="#">Pricing</a>
                            <a href="#">About</a>
                        </div>
                    </figure>
                </div>
                
                <div class="col-md-4">
                    <p class="text-center">Business Administration</p>
                    <figure class="hover-menu">
                        <img class="img-responsive" src="images/major3.jpg" />
                        <div>
                            <a href="#">Home</a>
                            <a href="#">Pricing</a>
                            <a href="#">About</a>
                        </div>
                    </figure>
                </div>
            </div>>

            <div class="row">
                <div class="col-md-4">
                    <p class="text-center">Multimedia</p>
                    <figure class="hover-menu">
                        <img class="img-responsive" src="images/major4.jpg" />
                        <div>
                            <a href="#">Home</a>
                            <a href="#">Pricing</a>
                            <a href="#">About</a>
                        </div>
                    </figure>
                </div>
                <div class="col-md-4">
                    <p class="text-center">Tourism - Hotel</p>
                    <figure class="hover-menu">
                        <img class="img-responsive" src="images/major5.jpg" />
                        <div>
                            <a href="#">Home</a>
                            <a href="#">Pricing</a>
                            <a href="#">About</a>
                        </div>
                    </figure>
                </div>
                <div class="col-md-4">
                    <p class="text-center">Language</p>
                    <figure class="hover-menu">
                        <img class="img-responsive" src="images/major6.jpg" />
                        <div>
                            <a href="#">English</a>
                            <a href="#">Japanese</a>
                        </div>
                    </figure>
                </div>
            </div>
        </div>


        <footer>
            <!-- Grid container -->
            <div class="container p-4">
                <!--Grid row-->
                <div class="row">
                    <!--Grid column-->
                    <div class="col-lg-6 col-md-12 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Location</h5>

                        <p> TP. Hồ Chí Minh</p>
                        <p>Lô E2a-7, Đường D1 Khu Công nghệ cao, P. Long Thạnh Mỹ, TP. Thủ Đức, TP. Hồ Chí Minh</p>
                        <p>Phone: 028 7300 1866</p>   
                        <p>Email: daihocfpt@fpt.edu.vn</p>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Name</h5>

                        <ul class="list-unstyled mb-0">
                            <li>
                                <p>NTP</p>
                            </li>
                            <li>
                                <p>NTP</p>
                            </li>
                            <li>
                                <p>NTP</p>
                            </li>
                            <li>
                                <p>NTP</p>
                            </li>
                            <li>
                                <p>NTP</p>
                            </li>
                        </ul>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase mb-0">ID</h5>

                        <ul class="list-unstyled">
                            <li>
                                <p>SExxxxxx</p>
                            </li>
                            <li>
                                <p>SExxxxxx</p>
                            </li>
                            <li>
                                <p>SExxxxxx</p>
                            </li>
                            <li>
                                <p>SExxxxxx</p>
                            </li>
                            <li>
                                <p>SExxxxxx</p>
                            </li>
                        </ul>
                    </div>
                    <!--Grid column-->
                </div>
                <!--Grid row-->
            </div>
            <!-- Grid container -->

            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                © 2022 Copyright:
                <p>Team 2</p>
            </div>
            <!-- Copyright -->
        </footer>

    </body>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>


    <style>
        *{
      font-family: 'Poppins', sans-serif !important;
      -webkit-user-select: none;
      -khtml-user-select: none;
      -moz-user-select: -moz-none;
      -o-user-select: none;
      user-select: none;
    }

    /*searchbox*/

    .custom_search {
      color: #FFF !important;
      background: transparent;
      border: 0;
      border-radius: 0;
      border-bottom: 2px solid #FFF;
      width: 240px !important;
    }

    .custom_search:focus {
      box-shadow: none;
      background: transparent;
      border-bottom: 2px solid #FFF;
    }

    .custom_search+.search_span {
      position: absolute;
      bottom: 0;
      width: 0;
      left: 50%;
      transition: width 0.5s, left 0.5s;
    }

    .custom_search:focus+.search_span {
      width: 240px;
      left: 0;
      border-bottom: 2px solid #c128ea;
    }

    .custom_search::placeholder {
      color: #FFF !important;
    }

    .search_button {
      background: #404547;
      width: 100px;
      border: 0;
    }

    .search_button:focus {
      border: 0;
      box-shadow: none;
    }

    .search_button:active {
      background: #8e24aa !important;
      box-shadow: none !important;
    }

    .search_button:hover {
      background: #8e24aa;
    }

    /*ripple effect*/

    .tx--white {
      color: #fff;
    }

    [ripple] {
      position: relative;
      overflow: hidden;
    }

    [ripple] .ripple--container {
      position: absolute;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
    }

    [ripple] .ripple--container span {
      transform: scale(0);
      border-radius: 100%;
      position: absolute;
      opacity: 0.30;
      background-color: #fff;
      animation: ripple 1000ms;
    }

    @-moz-keyframes ripple {
      to {
        opacity: 0;
        transform: scale(2);
      }
    }

    @-webkit-keyframes ripple {
      to {
        opacity: 0;
        transform: scale(2);
      }
    }

    @-o-keyframes ripple {
      to {
        opacity: 0;
        transform: scale(2);
      }
    }

    @keyframes ripple {
      to {
        opacity: 0;
        transform: scale(2);
      }
    }

    /*navbar*/

    .navbar {
      background: #f86c24 !important;
      line-height: 2rem !important;
    }

    .navbar .navbar-brand {
      color: #FFF !important;
    }

    .navbar-nav .active a {
      color: #c128ea !important;
    }

    .navbar-nav .nav-item .nav-link {
      color: #FFF;
    }

    .dropdown-menu {
      background: #22221E;
    }

    .dropdown-menu .dropdown-item {
      color: #FFF;
      transition: all 0.2s;
    }

    .dropdown-menu .dropdown-item:hover {
      background: #8e24aa;
      color: #FFF;
    }

    .navbar-toggler-icon {
      color: #FFF !important;
    }

    .navbar-dark .navbar-toggler {
      border-color: #FFFFFF !important;
    }


    /**/
    .hover-menu {
      position: relative;
      overflow: hidden;
      margin: 8px;

      width: 100%;
      background: white;
      text-align: center;
      box-sizing: border-box;
    }

    .hover-menu * {
      box-sizing: border-box;
    }

    .hover-menu img {
      position: relative;
      max-width: 100%;
      top: 0;
      right: 0;
      opacity: 1;
      transition: 0.3s ease-in-out;
    }

    .hover-menu div {
      position: absolute;
      top: 0;
      left: -190px;
      width: 190px;
      height: 100%;
      padding: 8px 4px;
      background: #000;
      transition: 0.3s ease-in-out;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .hover-menu div a {
      display: block;
      line-height: 2;
      color: #fff;
      text-decoration: none;
      opacity: 0.8;
      padding: 1px 15px;
      position: relative;
      transition: 0.3s ease-in-out;
    }

    .hover-menu div a:hover {
      text-decoration: underline;
    }

    .hover-menu:hover img {
      opacity: 0.5;
      right: -120px;
    }

    .hover-menu:hover div {
      left: 0;
      opacity: 1;
    }

    h1 {
      color: burlywood;
      border-bottom: 2px solid black;
      border-top: 2px solid black;
      font-weight: bold;
    }
    .majors p{
      color: #c128ea;
      background-color: azure;
      font-weight: bold;
    }

    .hover-menu a
    {
      font-size: small;
      text-decoration: none;
      border-bottom: 1px solid white;
    }
    .hover-menu a:hover
    {
      color: cyan;
    }
    .dropdown-menu a{
        border-bottom: 1px solid white;
    }
    footer{
        background-color: #f86c24;
    }
    </style>

</html>
