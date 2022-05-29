<%-- 
    Document   : Student
    Created on : May 28, 2022, 9:21:21 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/adminPage.css" />
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    </head>
    <body>
        <header>
            <h1>ADMIN HOME PAGE</h1> <!-- tiêu đề -->
        </header>
        <div id="wrapper">
            <div class="overlay"></div>

            <!-- Menu bên trái -->
            <nav class="navbar navbar-inverse fixed-top" id="sidebar-wrapper" role="navigation">
                <ul class="nav sidebar-nav">
                    <div class="sidebar-header">
                        <div class="sidebar-brand">
                            <p style="color: white;">Menu</p>
                            <li><a href="Student.jsp">Student</a></li>
                            <li><a href="#about">Supporter</a></li>
                            <li><a href="#events">Specialization</a></li>
                            <li><a href="#team">Term</a></li>            
                            <li><a href="#services">Register form</a></li>
                            <li><a href="#contact">Notification</a></li>
                            <li><a href="#followme">Logout</a></li>
                            </ul>
                            </nav>


                            <!-- Page Content -->
                            <div id="page-content-wrapper">
                                <button type="button" class="hamburger animated fadeInLeft is-closed" data-toggle="offcanvas">
                                    <span class="hamb-top"></span>
                                    <span class="hamb-middle"></span>
                                    <span class="hamb-bottom"></span>
                                </button>
                                <div id="right" class="container">
                                    <div class="row">
                                        <div class="col-lg-10 col-lg-offset-2"> <!-- Nội dung chọn từ menu sẽ hiển thị ở đây -->
                                            <h1>Student Management</h1>
                                            <form action="mainController" method="post">
                                                <input type="text" name="txtSearch">
                                                <input type="submit" value="Search" name="action">
                                            </form>
                                            <h1></h1>
                                            <table class="table table-dark">
                                                <tr>
                                                    <th scope="col">ID</th>
                                                    <th scope="col">Email</th>
                                                    <th scope="col">Full name</th>
                                                    <th scope="col">Phone</th>
                                                    <th scope="col">Semester</th>
                                                    <th scope="col">Major</th>
                                                    <th scope="col">Update</th>
                                                    <th scope="col">Delete</th>
                                                </tr>
                                                <c:forEach var="acc" items="${requestScope.accountList}">
                                                    <tr>
                                                        <td><c:out value="${s.getAccID()}"></c:out></td>
                                                        <td><c:out value="${s.getAccID()}"></c:out></td>
                                                        <td><c:out value="${s.getAccID()}"></c:out></td>
                                                        <td><c:out value="${s.getAccID()}"></c:out></td>
                                                        <td><c:out value="${s.getAccID()}"></c:out></td>
                                                        <td><c:out value="${s.getAccID()}"></c:out></td>
                                                        <td>              
                                                    <c:url  var="update" value="mainController">
                                                        <c:param name="sid" value="${s.getId()}"></c:param>

                                                        <c:param name="action" value="updateStudent"></c:param>
                                                    </c:url>
                                                    <a href="${update}">Update</a>
                                                    </td>
                                                    <td>              
                                                    <c:url  var="delete" value="mainController">
                                                        <c:param name="sid" value="${s.getId()}"></c:param>

                                                        <c:param name="action" value="deleteStudent"></c:param>
                                                    </c:url>
                                                    <a href="${delete}">Delete</a>
                                                    </td>

                                                    </tr>
                                                </c:forEach>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- /#page-content-wrapper -->

                        </div>
                        <!-- /#wrapper -->
                        <script language="javascript" src="js/adminPage.js"></script>
                        <footer>
                            <p>Team</p>
                            <p>FPT University</p>
                        </footer>
                        </body>
                        </html>