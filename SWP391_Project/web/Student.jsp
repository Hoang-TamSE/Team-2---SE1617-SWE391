<%-- 
    Document   : Student
    Created on : May 28, 2022, 9:21:21 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/cssforadmin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Play&amp;display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <h1>ADMIN HOME PAGE</h1> <!-- tiêu đề -->
        </header>
        <div id="dp_menu" class="dp_menu">
            <button><span>MENU</span></button>
            <ul class="main-menu" style="display:none">
                <li><a href="Student.jsp">Student</a></li>
                <li><a href="#about">Supporter</a></li>
                <li><a href="#events">Specialization</a></li>
                <li><a href="#team">Term</a></li>            
                <li><a href="#services">Register form</a></li>
                <li><a href="#contact">Notification</a></li>
                <li><a href="#followme">Logout</a></li>
            </ul>
        </div>

        <div>
            <h1>Student Management</h1>
            <form action="mainController" method="post">
                <input type="text" name="txtSearch">
                <input type="submit" value="Search" name="action">
            </form>
            <h1></h1>
            <table class="table">
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
        <footer>
            <p>Team</p>
            <p>FPT University</p>
        </footer>
                    <script>
            $(document).ready(function () {
                $("button").click(function () {
                    $("#dp_menu > ul").toggle(500);
                    $("#dp_menu").toggleClass("show");
                });
            });
        </script>
    </body>
</html>
