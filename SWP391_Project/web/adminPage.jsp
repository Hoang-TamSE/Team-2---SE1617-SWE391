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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/adminPage.css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

</head>
<body>
    <header>
        <h1>ADMIN HOME PAGE</h1> <!-- tiêu đề -->
    </header>
    <div id="wrapper">
        <div class="overlay"></div>
         
             <!-- Menu bên trái -->
         <nav class="navbar navbar-inverse fixed-top" id="sidebar-wrapper" role="navigation">
          <ul class="nav sidebar-nav">
            <div class="sidebar-header">
            <div class="sidebar-brand">
              <p style="color: white;">Menu</p>
            <li><a href="#home">Student</a></li>
            <li><a href="#about">Supporter</a></li>
            <li><a href="#events">Specialization</a></li>
            <li><a href="#team">Term</a></li>            
           <li><a href="#services">Register form</a></li>
           <li><a href="#contact">Notification</a></li>
           <li><a href="#followme">Logout</a></li>
           </ul>
       </nav>
            
     
             <!-- Page Content -->
             <div id="page-content-wrapper">
                 <button type="button" class="hamburger animated fadeInLeft is-closed" data-toggle="offcanvas">
                     <span class="hamb-top"></span>
                     <span class="hamb-middle"></span>
                     <span class="hamb-bottom"></span>
                 </button>
                 <div id="right" class="container">
                     <div class="row">
                         <div class="col-lg-8 col-lg-offset-2"> <!-- Nội dung chọn từ menu sẽ hiển thị ở đây -->
                             <h1>Display information here!</h1>
                             <p>Bacon ipsum dolor sit amet tri-tip shoulder 
                                 tenderloin shankle. Bresaola tail pancetta ball tip 
                                 doner meatloaf corned beef. Kevin pastrami tri-tip 
                                 prosciutto ham hock pork belly bacon pork loin 
                                 salami pork chop shank corned beef tenderloin 
                                 meatball cow. Pork bresaola meatloaf tongue, 
                                 landjaeger tail andouille strip steak tenderloin 
                                 sausage chicken tri-tip. Pastrami tri-tip kielbasa 
                                 sausage porchetta pig sirloin boudin rump meatball
                                 andouille chuck tenderloin biltong shank </p>
                         </div>
                     </div>
                 </div>
             </div>
             <!-- /#page-content-wrapper -->
     
         </div>
         <!-- /#wrapper -->
         <script language="javascript" src="js/adminPage.js"></script>
         <footer>
             <p>Team</p>
             <p>FPT University</p>
         </footer>
</body>
</html>
