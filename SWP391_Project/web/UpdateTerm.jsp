<%-- 
    Document   : UpdateMajor
    Created on : Jun 12, 2022, 7:25:37 PM
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
                        ${requestScope.SEMESTER.semesterID}
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <input value="${requestScope.SEMESTER.semesterName}" type="text" name="semesterName">
                    </td>
                    <td>
                        <p style="color: red; ">${requestScope.ERROR.semesterName}</p>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <!--Mấy ông sửa cái này lại nha tui demo thôi_-->
                        <input class="button" type="submit" name="action" value="UpdateTerm">
                        <input type="hidden" name="semesterID" value="${requestScope.SEMESTER.semesterID}">
                    </td>
                </tr>
            </table>
        </form>

        <footer style="background-color: #f86c24;">
            <p>Team</p>
            <p>FPT University</p>
        </footer>


    </body>
</html>
