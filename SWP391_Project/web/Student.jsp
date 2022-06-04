<%-- 
    Document   : Student
    Created on : May 28, 2022, 9:21:21 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Manager Page</title>
        <link rel="stylesheet" type="text/css" href="css/cssforadmin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
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
                <li><a href="MainController?action=Search">Student</a></li>
                <li><a href="Supporter.jsp">Supporter</a></li>
                <li><a href="Specialization.jsp">Specialization</a></li>
                <li><a href="#team">Term</a></li>            
                <li><a href="#services">Register form</a></li>
                <li><a href="#contact">Notification</a></li>
                <li><a href="#followme">Logout</a></li>
            </ul>
        </div>

        <div>
            <h1>Student Management</h1>
            <form action="MainController" method="post">
                <input type="text" name="search" value="${requestScope.search}">
                <input type="submit" value="Search" name="action">
            </form>
            <h1></h1>
            <table class="table table-responsive table-bordered table-hover">
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
                <c:forEach var="s" items="${requestScope.LIST_Students}">
                    <tr>
                        <td><c:out value="${s.userID}"></c:out></td>
                        <td><c:out value="${s.name}"></c:out></td>
                        <td><c:out value="${s.email}"></c:out></td>
                        <td><c:out value="${s.phoneNumber}"></c:out></td>
                        <td><c:out value="${s.address}"></c:out></td>
                        <td><c:out value="${s.roleID}"></c:out></td>
                        <td><c:out value="${s.semesterID}"></c:out></td>
                        <td><c:out value="${s.majorID}"></c:out></td>
                        <td><c:out value="${s.narrowID}"></c:out></td>
                   
                    <td>              
                    <c:url  var="update" value="MainController">
                        <c:param name="action" value="updateStudent"></c:param>
                    </c:url>
                    <a href="${update}">Update</a>
                    </td>
                    <td>              
                    <c:url  var="delete" value="MainController">
                        <c:param name="action" value="deleteStudent"></c:param>
                        <c:param name="userID" value="${s.userID}"></c:param>
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
