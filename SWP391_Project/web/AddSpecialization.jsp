<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
        <script src="ckeditor/ckeditor.js"></script>
    </head>
    <body class="sb-nav-fixed jumbotron">

        <%@include file="Header.jsp" %>

        <div id="layoutSidenav_content">

            <main class="container-fluid">
                <h1 class="mt-4 col-md-4"><i class="fa fa-house"></i>Narrow Management</h1>


                <div class="room container-fluid px-4">    
                    <div class="tab-content ">
                        <form action="MainController">
                            <table class="">
                                <tr>
                                    <td></td>
                                    <td style="font-weight: bold;font-size: large">ADD NARROW</td>
                                </tr>
                                <tr>
                                    <td>ID</td>
                                    <td>
                                        <input value="${requestScope.NARROW.narrowID}" type="text" name="narrowID">
                                    </td>
                                    <td>
                                        <p style="color: red;">${requestScope.ERROR.narrowID}</p>
                                    </td>
                                </tr>

                                <tr>
                                    <td>Name</td>
                                    <td>
                                        <input value="${requestScope.NARROW.narrowName}" type="text" name="narrowName">
                                    </td>
                                    <td>
                                        <p style="color: red;">${requestScope.ERROR.narrowName}</p>
                                    </td>
                                </tr>
                                <tr>
                                    <td>LinkFLM</td>
                                    <td>
                                        <input value="${requestScope.NARROW.linkFLM}" type="text" name="linkFLM">
                                    </td>

                                </tr>
                                <tr>
                                    <td>Description</td>
                                    <td>
                                        <textarea style="width: 820px; height: 175px;" id="description"  type="text" name="description">${requestScope.NARROW.description}</textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>MajorID</td>
                                    <td>
                                        <select name="majorID">
                                            <c:forEach var="major" items="${requestScope.LIST_MAJOR}">
                                                <c:choose>
                                                    <c:when test="${requestScope.CURRENT_MAJORID == major.majorID}">
                                                        <option value="${major.majorID}" selected="true">${major.majorID}</option>
                                                    </c:when>    
                                                    <c:otherwise>
                                                        <option value="${major.majorID}">${major.majorID}</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </select>
                                    </td>
                                </tr>

                                <tr style="text-align: center;">
                                    <td colspan="2">
                                        <input type="hidden" name="action" value="AddNarrow"/>
                                        <input class="button" type="submit" value="Add Narrow">
                                    </td>
                                </tr>
                                <tr style="text-align: center;">
                                    <td colspan="2">
                                        <input class="button" type="reset" name="action" value="Reset">
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
    <script>
        CKEDITOR.replace('description');
    </script>

</body>
</html>