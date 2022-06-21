<%-- 
    Document   : UpdateInformation
    Created on : Jun 12, 2022, 7:25:06 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upate Information</title>
        <link rel="stylesheet" href="css/admincss.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed jumbotron">

        <%@include file="HeaderStudent.jsp" %>

        <div id="layoutSidenav_content">

            <main class="container-fluid">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i>Update Information</h1>


                <div class="room container-fluid px-4">    
                    <div class="tab-content ">
                        <form action="MainController" method="GET">
                            <table class="">
                                <tr>
                                    <td>ID</td>
                                    <td>
                                        <input value="" name="id" readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Email</td>
                                    <td>
                                        <input value="" name="email" readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Full name</td>
                                    <td>
                                        <input value="" name="fullname" readonly>
                                    </td>                  
                                </tr>
                                <tr>
                                    <td>Phone</td>
                                    <td>
                                        <input value="" type="text" name="phone">
                                    </td>
                                </tr>
                                <tr>
                                    <td>Address</td>
                                    <td>
                                        <input value="" type="text" name="address">
                                    </td>                
                                </tr>
                                <tr>
                                    <td>Semester</td>
                                    <td>
                                        <input value="" name="semester" readonly>
                                    </td> 
                                </tr>
                                <tr>
                                    <td>Major</td>
                                    <td>
                                        <input value="" name="major" readonly>
                                    </td>

                                </tr>
                                <tr>
                                    <td>Narrow</td>
                                    <td>
                                        <input value="" name="narrow" readonly>
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
                    </div>


                </div>
            </main>
            <%@include file="Footer.jsp" %>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>

</body>
</html>
