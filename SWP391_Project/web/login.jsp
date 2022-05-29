<%-- 
    Document   : login
    Created on : May 26, 2022, 11:17:54 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
        <link rel="stylesheet" href="mycss.css" type="text/css"/>
    </head>
    <body>
        <header>
            <h1>Navbar</h1>
        </header>
        <section>
            <div class="left">
                <p>abs</p>
            </div>
            <div class="right">
            <form action="mainController" mehod="post" class="login">              
                <table>                   
                    <tr>
                        <td>Email</td><td><input type="text" name="txtemail"></td>
                    </tr>
                    <tr>
                        <td>Password</td><td><input type="text" name="txtpassword"></td>
                    </tr>
                    <tr>
                        <td  colspan="2"><input class="button" type="submit" value="login" name="action"></td>
                    </tr>
                    <tr>
                        <td  colspan="2"><input type="checkbox" value="savelogin>" name="savelogin">Stay signed in</td>
                    </tr>
                </table>
            </form>
                </div>
        </section>
        
    <style>
        body
        {
            background-color: orange;
        }
        .bg
        {

        }
        section
        {
            width: 90%;
            background-color: white;    
            height: 500px;
        }
        .left
        {
            width: 45%;
            float:left;
            clear: both;
            background-color: white;
            margin-left: 5%;
        }
        .right
        {
            margin-right: 5%;
            width: 45%;
            float: right;
            background-color: white;
        }
    </style>
    
    </body>
    
</html>
