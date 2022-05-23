<%-- 
    Document   : adminPage
    Created on : May 23, 2022, 5:09:51 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/adminPage.css" />
</head>
<body>
  <header>
    <h1>ADMIN HOME PAGE</h1>
    <img src="images/fptlogo.png" width="20%">
  </header>
  <div class="left"> <!--Menu-->
    <details>
      <summary>Student</summary>
      <a href="#">Student list</a>
      <a href="#">Student management</a>
    </details>
    <details>
      <summary>Supporter</summary>
      <a href="#">Supporter list</a>
      <a href="#">Supporter management</a>
    </details>
    <a href="#">Specialization</a>
    <a href="#">Term</a>
    <a href="#">Register form</a>
    
    <a href="#">Notification</a>
    <a href="#">Log out</a>
  </div>
  <div class="right"> <!--Hiện thông tin từ menu qua đây-->
    <p>Display information here</p>
  </div>
  <footer> <!--Thông tin nhóm,....-->
    <p>Footer here!</p>
    <p>Team 4</p>
  </footer>
</body>
</html>
