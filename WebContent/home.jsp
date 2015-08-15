<%@ page language="java" contentType="application/xml" import = "uts.wsd.application.NewsApplication, uts.wsd.model.Author, uts.wsd.model.Articles, uts.wsd.model.Article"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="xsl/home.xsl"?>
 
<% 	
    NewsApplication app  = (NewsApplication)getServletContext().getAttribute("app");
    Author loggedIn = (Author)session.getAttribute("author");
    Articles articles= app.getPublicallyVisibleArticles();
    String loginError = (String)request.getAttribute("loginError");
%>	 
     <root>
     <% if (loggedIn != null) {
    	 articles = app.getArticles();
     %>
     <loggedIn><%=loggedIn.getEmail()%> </loggedIn>
     <%} else {
     %>
     <loggedIn></loggedIn> 
     <%}%>
     
     <% if (loginError != null) {%>
     <loginError><%=loginError%></loginError>
     <%} else {%>
     <loginError></loginError>
     <%}
      %>
     
     <articles> <%
	for (Article article : articles.getArticles())
	{
		  %>
			<article id = "${article.id}">
				<title> <%=article.getTitle()%> </title>
				<publishedDate> <%=article.getPublishedDate()%> </publishedDate>
				<author> <%=article.getAuthor().getName()%> </author>
				<authorEmail><%=article.getAuthor().getEmail()%></authorEmail>
				<category> <%=article.getCategory()%> </category>
				<shortText> <%=article.getShortText()%> </shortText>
	    	</article>
	      <% 
	}
	%> </articles>
	   </root>