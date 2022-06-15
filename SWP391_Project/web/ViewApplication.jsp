<%-- 
    Document   : ViewApplication
    Created on : Jun 15, 2022, 6:29:08 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Application</title>
        <link rel="stylesheet" type="text/css" href="css/cssforadmin.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Play&amp;display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
    </head>
    <header>
            <h1>STUDENT HOME PAGE</h1> <!-- tiêu đề -->
        </header>
        <%@include file="MenuStudent.jsp" %>

    <body>
        <h1>View Appication</h1>
        <table>
            <tr>
                <td>Purpose</td>
                <td>Create Date</td>
                <td>Process Note</td>
                <td>File</td>
                <td>Status</td>
                <td>Change Status Time</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
        <footer>
            <p>Team</p>
            <p>FPT University</p>
        </footer>
    </body>
    <style>
        table
        {
            border:2px solid black;
            margin: auto;
        }
        tr td
        {
          border: 2px solid black;
          padding: 15px;
        }
        textarea
        {
            width: 100%;
            height: 200px;
        }
    </style>
</html>
