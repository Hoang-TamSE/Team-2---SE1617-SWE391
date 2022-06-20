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
        <link rel="stylesheet" href="css/admincss.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed jumbotron">

        <%@include file="HeaderStudent.jsp" %>

        <div id="layoutSidenav_content">

            <main class="container-fluid">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i>Send Application</h1>


                <div class="room container-fluid px-4">    
                    <div class="tab-content ">
                        <form action="MainController" method="GET">
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
                        </form>
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
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</body>
</html>
