<%-- 
    Document   : SendApplication
    Created on : Jun 15, 2022, 6:16:09 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Application</title>
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
        <h1>Send Appication</h1>
        <table>
            <tr>
                <td>Application Type</td>
                <td>
                    <select>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Purpose</td>
                <td>
                    <textarea></textarea>
                </td>
            </tr>
            <tr>
                <td>File Attach</td>
                <td>
                    <form style="margin-top:3%;" method="POST" action="MainController" enctype="multipart/form-data" >
                        <input  type="file" name="file">
                        <input style="border:3px solid black" type="submit" value="Upload" name="action">
                    </form>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <input class="button" type="submit" name="action" value="Send">                       
                </td>
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
