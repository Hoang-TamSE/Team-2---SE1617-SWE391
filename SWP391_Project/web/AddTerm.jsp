<%-- 
    Document   : AddTerm
    Created on : Jun 8, 2022, 11:17:47 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Term</title>
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
        
        <form action="MainController" method="post">
            <table class="table table-responsive table-bordered table-hover">
                <tr>
                    <td></td>
                    <td style="font-weight: bold;font-size: large">ADD TERM</td>
                </tr>
                <tr>
                    <td>ID</td>
                    <td>
                        <input value="${requestScope.SEMESTER.semesterID}" type="text" name="semesterID">
                    </td>
                    <td>
                        <p style="color: red; ">${requestScope.ERROR.semesterID}</p>
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
                <tr style="text-align: center;">
                    <td colspan="2">
                        <input class="button" type="submit" name="action" value="AddTerm">
                    </td>
                </tr>
            </table>
        </form>
        
        <footer>
            <p>Team</p>
            <p>FPT University</p>
        </footer>
        
        
    </body>
    
    <style>
        tr td
        {
            padding-left: 20px;
            padding-top: 10px;
            padding-bottom: 10px;
            
        }

        tr td input
        {
            border:none;
            border-bottom: 2px solid black;
            width: 220px;
        }
        table
        {
            margin: auto;
            border: 3px solid black;
            transition: 0.5s;
            background-color: #fff;
            -webkit-border-radius:15px;
            border-radius: 15px;
            border-collapse: separate;
        }
        .button
        {
            border:2px solid black;
            background-color: white;
            width: 31%;
            text-align: center;
        }
        
    </style>
</html>

