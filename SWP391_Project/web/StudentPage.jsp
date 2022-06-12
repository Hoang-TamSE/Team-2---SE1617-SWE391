<%-- 
    Document   : StudentPage
    Created on : Jun 12, 2022, 7:24:02 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Page</title>
        <link rel="stylesheet" type="text/css" href="css/cssforadmin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Play&amp;display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <h1>STUDENT HOME PAGE</h1> <!-- tiêu đề -->
        </header>
        <%@include file="MenuStudent.jsp" %>

        <div>
            <h1>Welcome </h1>
        </div>
        <h3>You information</h3>
        <form action="MainController" method="GET">
            <table class="table table-responsive table-bordered table-hover">
                <tr>
                    <td>ID</td>
                    <td>
                        <input value="" name="id" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input value="" name="id" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Full name</td>
                    <td>
                        <input value="" name="id" readonly>
                    </td>                  
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>
                        <input value="" name="id" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <input value="" name="id" readonly>
                    </td>                
                </tr>
                <tr>
                    <td>Semester</td>
                    <td>
                        <input value="" name="id" readonly>
                    </td> 
                </tr>
                <tr>
                    <td>Major</td>
                    <td>
                        <input value="" name="id" readonly>
                    </td>
                    
                </tr>
                <tr>
                    <td>Narrow</td>
                    <td>
                        <input value="" name="id" readonly>
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