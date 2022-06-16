<%-- 
    Document   : Supporter
    Created on : May 29, 2022, 4:55:41 PM
    Author     : user
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supporter Management</title>
        <link rel="stylesheet" type="text/css" href="css/cssforadmin.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Play&amp;display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/9b6cd90630.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <header>
            <h1>ADMIN HOME PAGE</h1> <!-- tiêu đề -->
        </header>
        <%@include file="MenuAdmin.jsp" %>

        <div>
            <h1>Supporter Management</h1>
            
            <form action="MainController" method="post">
                <input type="text" name="search" value="<%= (request.getParameter("txtsearch") == null) ? "" : request.getParameter("txtsearch")%>">
                <select name="searchby">
                    <option value="byname">By id</option>
                    <option value="bycate">By name</option>
                </select>
                <input type="submit" value="SearchSupporter" name="action" >
            </form>
            <a href="AddSupporter.jsp">
                <button style="border-radius: 5px">Add Supporter: <i class="fa-solid fa-circle-plus"></i></button>
            </a> 
            
            <table class="table table-responsive table-bordered table-hover">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Email</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Address</th>
                    <th scope="col">Role</th>
                    <th scope="col">Major</th>
                    <th scope="col">Update</th>
                    <th scope="col">Delete</th>
                </tr>
                <c:forEach var="sp" items="${requestScope.LIST_Supporters}">
                    <tr>
                        <td><c:out value="${sp.userID}"></c:out></td>
                        <td><c:out value="${sp.name}"></c:out></td>
                        <td><c:out value="${sp.email}"></c:out></td>
                        <td><c:out value="${sp.phoneNumber}"></c:out></td>
                        <td><c:out value="${sp.address}"></c:out></td>
                        <td><c:out value="${sp.roleID}"></c:out></td>
                        <td><c:out value="${sp.majorID}"></c:out></td>  
                        <td>
                            <c:url  var="update" value="MainController">
                                <c:param name="userID" value="${sp.userID}"></c:param>
                                <c:param name="action" value="PageUpdateSupporter"></c:param>
                            </c:url>
                            <a href="${update}"><i class="fas fa-edit"></i></a>
                        </td>
                        <td>              
                            <c:url  var="delete" value="MainController">
                                <c:param name="userID" value="${sp.userID}"></c:param>
                                <c:param name="action" value="DeleteSupporter"></c:param>
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
        <footer>
            <p>Team</p>
            <p>FPT University</p>
        </footer>

    </body>
</html>
