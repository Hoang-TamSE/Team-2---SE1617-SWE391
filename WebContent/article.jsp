<%@page contentType="application/xml" import="uts.wsd.application.NewsApplication, uts.wsd.model.Article, uts.wsd.model.Author"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="xsl/article.xsl"?>
 
<%
	Article article = (Article) request.getAttribute("article");
    String loginError = (String)request.getAttribute("loginError");
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
     
     <% if (loginError != null) {%>
     <loginError><%=loginError%></loginError>
     <%} else {%>
     <loginError></loginError>
     <%}
      %>

<article id = "<%=article.getId()%>">
	<title> <%=article.getTitle()%> </title>
    <publishedDate> <%=article.getPublishedDate()%> </publishedDate>
    <author> <%=article.getAuthor().getName()%> </author>
    <authorEmail><%=article.getAuthor().getEmail()%></authorEmail>
    <category> <%=article.getCategory()%> </category>
    <shortText> <%=article.getShortText()%> </shortText>
    <text> <%=article.getText()%> </text>
</article>

</root>