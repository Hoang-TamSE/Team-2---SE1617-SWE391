<%-- 
    Document   : adminPage
    Created on : May 23, 2022, 5:09:51 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
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
            <h1>Welcome Admin</h1>

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
