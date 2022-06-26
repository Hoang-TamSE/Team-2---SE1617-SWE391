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

    <body class="sb-nav-fixed jumbotron">

        <%@include file="Header.jsp" %>

        <div id="layoutSidenav_content">

            <main class="container-fluid">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i>Register Form</h1>
                <div class="room container-fluid px-4">    
                    <div class="tab-content ">
                        <div id="regisAD" class="container">

                            <div class="row" style="border: 1px solid #ddd; padding: 20px; border-radius: 10px;">
                                <div class="form-row">
                                    <div class="col-4">

                                        <div class="term" style="border: 1px solid #ddd; padding: 15px; text-align: center; margin-bottom: 15px; border-radius: 10px;">
                                            <select id="id">
                                                <option value="first">TERM</option>
                                                <option value="second">Fall</option>
                                                <option value="third">Spring</option>
                                                <option value="quara">Summer</option>
                                            </select>

<!--                                            <div class="dropdown">
                                                <button type="button" class="btn btn-outline-secondary" data-toggle="dropdown">
                                                    TERM
                                                </button>
                                                <div class="dropdown-menu">
                                                    <a class="dropdown-item" href="">Fall</a>
                                                    <a class="dropdown-item" href="">Spring</a>
                                                    <a class="dropdown-item" href="">Summer</a>
                                                </div>
                                            </div>-->
                                        </div>

                                        <div id="list-major" style="border: 1px solid #ddd; padding: 10px; text-align: center; border-radius: 10px; height: 310px;">
                                            <h3 style="text-align: center; color: orangered;">List Major</h3>

                                            <div style="text-justify: auto; padding: 10px;">
                                                <ul class="nav nav-tabs">
                                                    <li class="nav-item">
                                                        <a class="nav-link btn-outline-info" href="#IT" role="tab" data-toggle="tab">Information Technology</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link btn-outline-info" href="#BA" role="tab" data-toggle="tab">Business Administration</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link btn-outline-info" href="#EL" role="tab" data-toggle="tab">English Language</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link btn-outline-info" href="#JL" role="tab" data-toggle="tab">Japanese Language</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link btn-outline-info" href="#KL" role="tab" data-toggle="tab">Korean Language</a>
                                                    </li>
                                                </ul>

                                            </div>

                                        </div>
                                    </div> <!-- col-left -->

                                    <div class="col-8">
                                        <div  style="border: 1px solid #ddd; padding: 10px; margin-bottom: 20px; border-radius: 10px;">
                                            Start date: <input type="type" name="name">
                                            End date: <input type="type" name="name">
                                        </div>

                                        <div class="mutil-list" style="border: 1px solid #ddd; padding: 10px; border-radius: 10px; height: 310px;">
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

                                <div class="buttons">
                                    <button type="reset" class="btn btn-danger">Reset</button>
                                    <button type="submit" class="btn btn-success">Submit</button>        
                                </div>
                            </div>

                        </div> <!-- end-container -->
                    </div>


                </div>
            </main>
            <footer style="background-color: #f86c24;">
                <p>Team</p>
                <p>FPT University</p>
            </footer>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</body>
</html>