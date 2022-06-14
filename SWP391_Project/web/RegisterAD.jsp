<%-- 
    Document   : RegisterAD
    Created on : Jun 10, 2022, 10:57:32 AM
    Author     : lamtr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Register Admin Page</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

    <body>

        <header>
            <h1>ADMIN HOME PAGE</h1> <!-- tiêu đề -->
        </header>
        
        <%@include file="MenuAdmin.jsp" %>

        <div class="container">
            <div class="head-form" style="margin: 20px 0; text-align: center;">
                <h2>REGISTER FORM</h2>
            </div>

            <div class="row" style="border: 1px solid #ddd; padding: 10px 5px;">
                <div class="col-md-4">
                    <div class="term" style="border: 1px solid #ddd; padding: 20px 10px; text-align: center; margin-bottom: 15px;">
                        <div id="term" class="dropdown">
                            <button type="button" class="btn btn-outline-secondary dropdown-toggle" data-toggle="dropdown">
                                TERM
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Fall</a>
                                <a class="dropdown-item" href="#">Spring</a>
                                <a class="dropdown-item" href="#">Summer</a>
                            </div>
                        </div>
                    </div>

                    <div class="list-major" style="border: 1px solid #ddd; padding: 10px 10px 50px 10px; text-align: center;">
                        <h3 style="text-align: center; color: orangered;">List Major</h3>
                        <div class="">
                            <ul class="nav nav-tabs bg-light p-3">
                                <li class="nav-item">
                                    <a class="nav-link" href="#IT" role="tab" data-toggle="tab">Information Technology</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#BA" role="tab" data-toggle="tab">Business Administration</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#EL"role="tab" data-toggle="tab">English Language</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#JL" role="tab" data-toggle="tab">Japanese Language</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#KL" role="tab" data-toggle="tab">Korean Language</a>
                                </li>
                            </ul>

                        </div>

                    </div>
                </div> <!-- col-left -->

                <div class="col-md-8">
                    <div style="border: 1px solid #ddd; padding: 10px; margin: 20px 0; ">
                        <h4>Narrow Specialization</h4>
                    </div>
                    
                    <div id="mutil-list" style="border: 1px solid #ddd; padding: 10px;">
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane fade show" id="IT">
                                <p class=" d-none d-sm-block">
                                    <label class="form-check-inline" for="radio1">
                                        <input type="checkbox" class="form-check-input" id="radio1" name="optradio" value="option1" >PRN211 (.NET)
                                    </label> <br>
                                    <label class="form-check-inline" for="radio2">
                                        <input type="checkbox" class="form-check-input" id="radio2" name="optradio" value="option2">Bridge Software Engineer (JS)
                                    </label> <br>
                                    <label class="form-check-inline" for="radio3">
                                        <input type="checkbox" class="form-check-input" id="radio3" name="optradio" value="option3">PRP201c (Autonomous Car)
                                    </label> <br>
                                    <label class="form-check-inline" for="radio4">
                                        <input type="checkbox" class="form-check-input" id="radio4" name="optradio" value="option4">PRP201c (AI with tensor flow)
                                    </label> <br>
                                    <label class="form-check-inline" for="radio5">
                                        <input type="checkbox" class="form-check-input" id="radio5" name="optradio" value="option5">FER201m (React/NodeJS)
                                    </label>
                                </p>
                            </div> <!-- IT -->

                            <div role="tabpanel" class="tab-pane fade show" id="BA">
                                <p class=" d-none d-sm-block">
                                    <label class="form-check-inline" for="radio6">
                                        <input type="checkbox" class="form-check-input" id="radio6" name="optradio" value="option1">Digital Marketing
                                    </label> <br>
                                    <label class="form-check-inline" for="radio7">
                                        <input type="checkbox" class="form-check-input" id="radio7" name="optradio" value="option2">Kinh doanh quốc tế
                                    </label> <br>
                                    <label class="form-check-inline" for="radio8">
                                        <input type="checkbox" class="form-check-input" id="radio8" name="optradio" value="option3">Quản trị khách sạn
                                    </label> <br>
                                    <label class="form-check-inline" for="radio9">
                                        <input type="checkbox" class="form-check-input" id="radio9" name="optradio" value="option4">Quản trị dịch vụ du lịch và lữu hành
                                    </label> <br>
                                    <label class="form-check-inline" for="radio10">
                                        <input type="checkbox" class="form-check-input" id="radio10" name="optradio" value="option5">Quản trị truyền thông đa phương tiện
                                    </label>
                                </p>
                            </div> <!-- BA -->

                            <div role="tabpanel" class="tab-pane fade show" id="EL">
                                <p class=" d-none d-sm-block">
                                    <label class="form-check-inline" for="radio11">
                                        <input type="checkbox" class="form-check-input" id="radio11" name="optradio" value="option1">Phiên dịch viên
                                    </label> <br>
                                    <label class="form-check-inline" for="radio12">
                                        <input type="checkbox" class="form-check-input" id="radio12" name="optradio" value="option2">Thư ký, trợ lý đối ngoại
                                    </label> <br>
                                    <label class="form-check-inline" for="radio13">
                                        <input type="checkbox" class="form-check-input" id="radio13" name="optradio" value="option3">Giảng dạy
                                    </label> <br>
                                    <label class="form-check-inline" for="radio14">
                                        <input type="checkbox" class="form-check-input" id="radio14" name="optradio" value="option4">Nghiên cứu viên
                                    </label>
                                </p>
                            </div> <!-- EL -->

                            <div role="tabpanel" class="tab-pane fade show" id="JL">
                                <p class=" d-none d-sm-block">
                                    <label class="form-check-inline" for="radio15">
                                        <input type="checkbox" class="form-check-input" id="radio15" name="optradio" value="option1">Phiên dịch viên
                                    </label> <br>
                                    <label class="form-check-inline" for="radio16">
                                        <input type="checkbox" class="form-check-input" id="radio16" name="optradio" value="option2">Thư ký, trợ lý đối ngoại
                                    </label> <br>
                                    <label class="form-check-inline" for="radio17">
                                        <input type="checkbox" class="form-check-input" id="radio17" name="optradio" value="option3">Giảng dạy
                                    </label> <br>
                                    <label class="form-check-inline" for="radio18">
                                        <input type="checkbox" class="form-check-input" id="radio18" name="optradio" value="option4">Nghiên cứu viên
                                    </label>
                                </p>
                            </div> <!-- JL -->

                            <div role="tabpanel" class="tab-pane fade show" id="KL">
                                <p class=" d-none d-sm-block">
                                    <label class="form-check-inline" for="radio19">
                                        <input type="checkbox" class="form-check-input" id="radio19" name="optradio" value="option1">Phiên dịch viên
                                    </label> <br>
                                    <label class="form-check-inline" for="radio20">
                                        <input type="checkbox" class="form-check-input" id="radio20" name="optradio" value="option2">Thư ký, trợ lý đối ngoại
                                    </label> <br>
                                    <label class="form-check-inline" for="radio21">
                                        <input type="checkbox" class="form-check-input" id="radio21" name="optradio" value="option3">Giảng dạy
                                    </label> <br>
                                    <label class="form-check-inline" for="radio22">
                                        <input type="checkbox" class="form-check-input" id="radio22" name="optradio" value="option4">Nghiên cứu viên
                                    </label>
                                </p>
                            </div> <!-- KL -->

                        </div> <!-- Tab Content -->

                    </div>
                </div><!-- col-right -->
            </div>

            <div class="buttons" style="margin-top: 20px; text-align: right;">
                <button type="submit" class="btn btn-danger">Reset</button>
                <button type="submit" class="btn btn-success">Submit</button>        
            </div>

        </div> <!-- end-container -->

        <footer>
            <p>Team</p>
            <p>FPT University</p>
        </footer>

    </body>
</html>