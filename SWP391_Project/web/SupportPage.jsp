<%-- 
    Document   : SupportAD
    Created on : Jun 28, 2022, 10:13:36 PM
    Author     : lamtr
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supporter Management</title>
        <link rel="stylesheet" href="css/admincss.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed jumbotron">

        <%@include file="HeaderSupport.jsp" %>

        <div id="layoutSidenav_content">

            <main class="container-fluid">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i>View Question</h1>
                <div class="room container-fluid px-4">    
                    <div class="tab-content ">

                        <table class="table table-responsive table-bordered table-hover">
                            <tr class="bg-light">
                                <th scope="col">ID</th>
                                <th scope="col">Title</th>
                                <th scope="col">Question</th>
                                <th scope="col">Sent Date</th>
                                <th scope="col">Reply</th>
                            </tr>
                            <!--Foreach -->
                            <tr>
                                <td>1</td>
                                <td>2</td>
                                <td>
                                    <details>
                                        <summary>Click</summary>
                                        <p>Hỏiiii</p>
                                    </details>
                                </td>
                                <td>4</td>
                                <td>
                                    <details>
                                        <summary>Click</summary>
                                        <div class="row">
                                            <div class="col-md-10">
                                                <textarea class="w-100" style="height: 75px;"></textarea>
                                            </div>
                                            <div class="col-md-2">
                                                <c:url  var="delete" value="MainController">
                                                    <c:param name="userID" value="${sp.userID}"></c:param>
                                                    <c:param name="action" value="DeleteSupporter"></c:param>
                                                </c:url>
                                                <a href="${delete}"><i class="fa-solid fa-reply"></i></a>
                                            </div>
                                        </div>
                                    </details>
                                </td>
                            </tr>
                            <!--Foreach -->
                        </table>
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
