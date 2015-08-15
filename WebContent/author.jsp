<%@page contentType="application/xml" import="uts.wsd.application.NewsApplication, uts.wsd.model.Author"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="xsl/author.xsl"?>
 
<%
	
	Author author = (Author)request.getAttribute("loggedIn");
%>
<root>

   <%
	Author loggedIn = (Author)session.getAttribute("author");
     %>
	
	<% if (loggedIn != null) {%>
	<loggedIn><%=loggedIn.getEmail()%></loggedIn>
	<loggedInName><%=loggedIn.getName()%></loggedInName>
    <%}%><% else { %>
     <loggedIn></loggedIn>
     <loggedInName></loggedInName>
     <%}%>


<author>
	<email><%=author.getEmail()%></email>
    <name><%=author.getName()%></name>
    <dob><%=author.getDOB()%></dob>
    <biography><%=author.getBiography()%></biography>
</author>

</root>