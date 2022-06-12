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
            <h1>NARROW REGISTER</h1>
        </header>
        <%@include file="MenuStudent.jsp" %>
        
        <div class="main_form">
            <div class="row row-content mt-5">
                <div class="col-12">
                    <h2>REGISTER FORM</h2>

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

    </body>
    <style>
        *{
	box-sizing: border-box;
}

.main_form{
	margin: 30px 0;
	display: flex;
	flex-direction: column;
	justify-content: flex-start;
	align-items: center;
	height: 100vh;
	width: 98vw;
}

.main_form h2, h4{
	text-align: center;
}

.main_form ul{
	padding: 10px auto;
}

    </style>
</html>

