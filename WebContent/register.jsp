<%@ page language="java" contentType="application/xml" import="uts.wsd.model.Author, java.util.Date"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="xsl/register.xsl"?>
 
<%
	Author loggedIn = (Author)session.getAttribute("author");
    String emailError = (String)request.getAttribute("emailError");
    String nameError = (String)request.getAttribute("nameError");
    String passwordError = (String)request.getAttribute("passwordError");
    
    String email = (String)request.getAttribute("email");
    String name = (String)request.getAttribute("name");
    String password = (String)request.getAttribute("password");
    String biography = (String)request.getAttribute("biography");
    Date dOB = (Date)request.getAttribute("dOB");
    
    
%>

<register>

    <% if (loggedIn != null) {%>
	<loggedIn> <%=loggedIn.getEmail()%> </loggedIn>
    <%}%><% else { %>
     <loggedIn></loggedIn>
     <%}%>
     
     <% if (emailError != null) {%>
	<emailError> <%=emailError%> </emailError>
    <%}%><% else { %>
     <emailError></emailError>
     <%}%>
     
     <% if (passwordError != null) {%>
	<passwordError> <%=passwordError%> </passwordError>
    <%}%><% else { %>
     <passwordError></passwordError>
     <%}%>
     
     <% if (nameError != null) {%>
	<nameError> <%=nameError%> </nameError>
    <%}%><% else { %>
     <nameError></nameError>
     <%}%>
     
      <% if (email != null) {%>
	<email> <%=email%> </email>
    <%}%><% else { %>
     <email></email>
     <%}%>
     
     <% if (name != null) {%>
	<name> <%=name%> </name>
    <%}%><% else { %>
     <name></name>
     <%}%>
     
     <% if (dOB != null) {%>
	<dOB> <%=dOB%> </dOB>
    <%}%><% else { %>
     <dOB></dOB>
     
     <% if (biography != null) {%>
	<biography> <%=biography%> </biography>
    <%}%><% else { %>
     <biography></biography>
     <%}%>
     <%}%>
</register>
