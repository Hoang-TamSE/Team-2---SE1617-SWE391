<%-- 
    Document   : UpdateStudent
    Created on : Jun 3, 2022, 11:10:32 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student</title>
        <link rel="stylesheet" type="text/css" href="css/cssforadmin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Play&amp;display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <h1>ADMIN HOME PAGE</h1> <!-- tiêu đề -->
        </header>
        
        <%@include file="MenuAdmin.jsp" %>
        
        <form action="MainController" method="GET">
            <table class="table table-responsive table-bordered table-hover">
                <tr>
                    <td>ID</td>
                    <td>
                        ${requestScope.STUDENT.userID}
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        ${requestScope.STUDENT.email}
                    </td>
                </tr>
                <tr>
                    <td>Full name</td>
                    <td>
                        <input value="${requestScope.STUDENT.name}" type="text" name="name">
                    </td>
                    <td>
                        <p style="color: red; ">${requestScope.ERROR.name}</p>
                    </td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>
                        <input value="${requestScope.STUDENT.phoneNumber}" type="text" name="phoneNumber">
                    </td>
                    <td>
                        <p style="color: red; ">${requestScope.ERROR.phoneNumber}</p>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <input value="${requestScope.STUDENT.address}" type="text" name="address">
                    </td>
                   
                </tr>
                <tr>
                    <td>Semester</td>
                    <td>
                        <input value="${requestScope.STUDENT.semesterID}" type="text" name="semesterID">
                    </td>
                    <td>
                        <p style="color: red; ">${requestScope.ERROR.semesterID}</p>
                    </td>
                </tr>
                <tr>
                    <td>Major</td>
                    <td>
                        <input value="${requestScope.STUDENT.majorID}" type="text" name="majorID">
                    </td>
                    <td>
                        <p style="color: red; ">${requestScope.ERROR.majorID}</p>
                    </td>
                </tr>
                <tr>
                    <td>Narrow</td>
                    <td>
                        <input value="${requestScope.STUDENT.narrowID}" type="text" name="narrowID">
                    </td>
                    <td>
                        <p style="color: red; ">${requestScope.ERROR.narrowID}</p>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input class="button" type="submit" name="action" value="UpdateStudent">
                        <input type="hidden" name="userID" value="${requestScope.STUDENT.userID}">
                        <input type="hidden" name="email" value="${requestScope.STUDENT.email}">
                    </td>
                </tr>
            </table>
        </form>
        
        <footer>
            <p>Team</p>
            <p>FPT University</p>
        </footer>
        
        
    </body>
</html>
