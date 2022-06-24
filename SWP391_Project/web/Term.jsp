<%-- 
    Document   : Term
    Created on : Jun 8, 2022, 7:47:02 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Term Management</title>
        <link rel="stylesheet" href="css/admincss.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed jumbotron">

        <%@include file="Header.jsp" %>

        <div id="layoutSidenav_content">

            <main class="container-fluid">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i>Term Management</h1>     
                <div class="room container-fluid px-4">    
                    <div class="tab-content ">
                        <a href="AddTerm.jsp">
                            <button class="btnadd">Add Term: <i class="fa-solid fa-circle-plus"></i></button>
                        </a>

                        <form style="margin-bottom: 5px;" action="MainController">
                            <input id="inputsearch" type="text" name="search" placeholder="Search..." value="${requestScope.SEARCH}">
                            <input type="hidden" value="SearchTerm" name="action"/>
                            <input class="btnsearch" type="submit" value="Search">
                        </form>
                        <table class="table table-responsive table-bordered table-hover">
                            <tr>
                                <th scope="col">ID</th>
                                <th scope="col">Name</th>
                                <th scope="col">Edit</th>
                                <th scope="col">Delete</th>
                            </tr>
                            <c:forEach var="t" items="${requestScope.LIST_Semesters}">
                                <tr>
                                    <td><c:out value="${t.semesterID}"></c:out></td>
                                    <td><c:out value="${t.semesterName}"></c:out></td>

                                        <td>              
                                        <c:url  var="update" value="MainController">
                                            <c:param name="semesterID" value="${t.semesterID}"></c:param>
                                            <c:param name="action" value="PageUpdateTerm"></c:param>
                                        </c:url>
                                        <a href="${update}"><i class="fas fa-edit"></i></a>
                                    </td>
                                    <td>              
                                        <c:url  var="delete" value="MainController">
                                            <c:param name="semesterID" value="${t.semesterID}"></c:param>
                                            <c:param name="action" value="DeleteTerm"></c:param>
                                        </c:url>
                                        <a href="${delete}"><i class="fas fa-trash"></i></a>
                                    </td>

                                </tr>
                            </c:forEach>
                        </table>
                        <c:if test="${not empty requestScope.SUCCESS}">
                            <p style="color: lightgreen">${requestScope.SUCCESS}</p>
                        </c:if>
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

