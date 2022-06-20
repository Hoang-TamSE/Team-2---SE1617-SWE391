<%-- 
    Document   : AddSpecialization
    Created on : Jun 8, 2022, 11:28:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Narrow</title>
        <link rel="stylesheet" href="css/admincss.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed jumbotron">

        <%@include file="Header.jsp" %>

        <div id="layoutSidenav_content">

            <main class="container-fluid">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i>Narrow Management</h1>


                <div class="room container-fluid px-4">    
                    <div class="tab-content ">
                        <form action="mainController" method="post">
                            <table class="">
                                <tr>
                                    <td></td>
                                    <td style="font-weight: bold;font-size: large">ADD NARROW</td>
                                </tr>
                                <tr>
                                    <td>ID</td>
                                    <td>
                                        <input value="" type="text" name="">
                                    </td>
                                </tr>

                                <tr>
                                    <td>Name</td>
                                    <td>
                                        <input value="" type="text" name="">
                                    </td>
                                </tr>

                                <tr style="text-align: center;">
                                    <td colspan="2">
                                        <input class="button" type="submit" name="action" value="Add">
                                    </td>
                                </tr>
                            </table>
                        </form>

                        <footer>
                            <p>Team</p>
                            <p>FPT University</p>
                        </footer>
                    </div>


                </div>
            </main>
            <footer class="bg-dark">
                <p>Team</p>
                <p>FPT University</p>
            </footer>
        </div>
    </div>


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
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</body>
</html>