<%-- 
    Document   : NarrowRegister
    Created on : Jun 12, 2022, 7:21:55 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Narrow Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/admincss.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="node_modules/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="node_modules/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap-social.css">
        <link href="css/register.css" rel="stylesheet">
    </head>
    <body class="sb-nav-fixed jumbotron">

        <%@include file="HeaderStudent.jsp" %>

        <div id="layoutSidenav_content">

            <main class="container-fluid">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i>Narrow Register</h1>


                <div class="room container-fluid px-4">    
                    <div class="tab-content ">
                        <div class="main_form">
                            <div class="row row-content mt-5">
                                <div class="col-12">
                                    <h2>REGISTER</h2>

                                    <ul class="nav nav-tabs bg-light p-3">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#IT"
                                               role="tab" data-toggle="tab">Information Technology</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#BA" role="tab"
                                               data-toggle="tab">Business Administration</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#EL"role="tab"
                                               data-toggle="tab">English Language</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#JL" role="tab"
                                               data-toggle="tab">Japanese Language</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#KL" role="tab"
                                               data-toggle="tab">Korean Language</a>
                                        </li>
                                    </ul>

                                    <div class="tab-content" style="border-left: 1px solid #ddd; border-right: 1px solid #ddd; border-bottom: 1px solid #ddd; padding: 10px;">
                                        <div role="tabpanel" class="tab-pane fade show active" id="IT">
                                            <p class=" d-none d-sm-block">
                                            <h4>Software Engineering</h4>
                                            <label class="form-check-inline" for="radio1">
                                                <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1" >PRN211 (.NET)
                                            </label> <br>
                                            <label class="form-check-inline" for="radio2">
                                                <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">Kỹ sư cầu nối (JS)
                                            </label> <br>
                                            <label class="form-check-inline" for="radio3">
                                                <input type="radio" class="form-check-input" id="radio3" name="optradio" value="option3">PRP201c (Autonomous Car)
                                            </label> <br>
                                            <label class="form-check-inline" for="radio4">
                                                <input type="radio" class="form-check-input" id="radio4" name="optradio" value="option4">PRP201c (AI with tensor flow)
                                            </label> <br>
                                            <label class="form-check-inline" for="radio5">
                                                <input type="radio" class="form-check-input" id="radio5" name="optradio" value="option5">FER201m (React/NodeJS)
                                            </label><br>

                                            <h4>Artifical Intelligence</h4>
                                            <label class="form-check-inline" for="radio1">
                                                <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1" >PRN211 (.NET)
                                            </label> <br>
                                            <label class="form-check-inline" for="radio2">
                                                <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">Kỹ sư cầu nối (JS)
                                            </label> <br>
                                            <label class="form-check-inline" for="radio3">
                                                <input type="radio" class="form-check-input" id="radio3" name="optradio" value="option3">PRP201c (Autonomous Car)
                                            </label> <br>
                                            <label class="form-check-inline" for="radio4">
                                                <input type="radio" class="form-check-input" id="radio4" name="optradio" value="option4">PRP201c (AI with tensor flow)
                                            </label> <br>
                                            <label class="form-check-inline" for="radio5">
                                                <input type="radio" class="form-check-input" id="radio5" name="optradio" value="option5">FER201m (React/NodeJS)
                                            </label><br>

                                            <button class="submit btn btn-outline-success">Submit</button>
                                            </p>
                                        </div>

                                        <div role="tabpanel" class="tab-pane fade show" id="BA">
                                            <p class=" d-none d-sm-block">
                                                <label class="form-check-inline" for="radio1">
                                                    <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1">Digital Marketing
                                                </label> <br>
                                                <label class="form-check-inline" for="radio2">
                                                    <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">Kinh doanh quốc tế
                                                </label> <br>
                                                <label class="form-check-inline" for="radio3">
                                                    <input type="radio" class="form-check-input" id="radio3" name="optradio" value="option3">Quản trị khách sạn
                                                </label> <br>
                                                <label class="form-check-inline" for="radio4">
                                                    <input type="radio" class="form-check-input" id="radio4" name="optradio" value="option4">Quản trị dịch vụ du lịch và lữu hành
                                                </label> <br>
                                                <label class="form-check-inline" for="radio5">
                                                    <input type="radio" class="form-check-input" id="radio5" name="optradio" value="option5">Quản trị truyền thông đa phương tiện
                                                </label> <br>
                                                <button class="submit btn btn-outline-success">Submit</button>
                                            </p>
                                        </div>

                                        <div role="tabpanel" class="tab-pane fade show" id="EL">
                                            <p class=" d-none d-sm-block">
                                                <label class="form-check-inline" for="radio1">
                                                    <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1">Phiên dịch viên
                                                </label> <br>
                                                <label class="form-check-inline" for="radio2">
                                                    <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">Thư ký, trợ lý đối ngoại
                                                </label> <br>
                                                <label class="form-check-inline" for="radio3">
                                                    <input type="radio" class="form-check-input" id="radio3" name="optradio" value="option3">Giảng dạy
                                                </label> <br>
                                                <label class="form-check-inline" for="radio4">
                                                    <input type="radio" class="form-check-input" id="radio4" name="optradio" value="option4">Nghiên cứu viên
                                                </label> <br>
                                                <button class="submit btn btn-outline-success">Submit</button>
                                            </p>    
                                        </div>

                                        <div role="tabpanel" class="tab-pane fade show" id="JL">
                                            <p class=" d-none d-sm-block">
                                                <label class="form-check-inline" for="radio1">
                                                    <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1">Phiên dịch viên
                                                </label> <br>
                                                <label class="form-check-inline" for="radio2">
                                                    <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">Thư ký, trợ lý đối ngoại
                                                </label> <br>
                                                <label class="form-check-inline" for="radio3">
                                                    <input type="radio" class="form-check-input" id="radio3" name="optradio" value="option3">Giảng dạy
                                                </label> <br>
                                                <label class="form-check-inline" for="radio4">
                                                    <input type="radio" class="form-check-input" id="radio4" name="optradio" value="option4">Nghiên cứu viên
                                                </label> <br>
                                                <button class="submit btn btn-outline-success">Submit</button>
                                            </p>
                                        </div>

                                        <div role="tabpanel" class="tab-pane fade show" id="KL">
                                            <p class=" d-none d-sm-block">
                                                <label class="form-check-inline" for="radio1">
                                                    <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1">Phiên dịch viên
                                                </label> <br>
                                                <label class="form-check-inline" for="radio2">
                                                    <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">Thư ký, trợ lý đối ngoại
                                                </label> <br>
                                                <label class="form-check-inline" for="radio3">
                                                    <input type="radio" class="form-check-input" id="radio3" name="optradio" value="option3">Giảng dạy
                                                </label> <br>
                                                <label class="form-check-inline" for="radio4">
                                                    <input type="radio" class="form-check-input" id="radio4" name="optradio" value="option4">Nghiên cứu viên
                                                </label> <br>
                                                <button class="submit btn btn-outline-success">Submit</button>
                                            </p>
                                        </div>
                                    </div>


                                </div>
                            </div>

                        </div><!-- MAIN-FORM -->
                    </div>


                </div>
            </main>
            <footer style="background-color: #f86c24;">
                <p>Team</p>
                <p>FPT University</p>
            </footer>
        </div>
    </div>

    <style>

    </style>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</body>
</html>

