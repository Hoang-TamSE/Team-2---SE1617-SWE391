<%-- 
    Document   : Specialization
    Created on : May 29, 2022, 9:29:04 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Specialization</title>
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

        <div>
            <h1>Specialization Management</h1>
            <form action="search" method="post">
                Major:
                <select name="major">
                    <c:forEach var="m" items="${majorList}">
                        <option ${majorID == m.id?"selected":""}value="${m.id}">${m.name}</option>
                    </c:forEach>
                </select>
                <input type="submit" value="search">
            </form>
            <table class="table table-responsive table-bordered table-hover">
                <tbody>
                    <tr>
                        <td>ID</td>
                        <td>Name</td>
                    </tr>
                    <c:forEach var="s" items="${specializationList}">
                        <tr>
                            <td>${s.id}</td>
                            <td>${s.name}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <footer>
            <p>Team</p>
            <p>FPT University</p>
        </footer>
        
    </body>
</html>
