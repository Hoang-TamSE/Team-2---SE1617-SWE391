<%@ page language="java" contentType="application/xml" import = "uts.wsd.application.NewsApplication, uts.wsd.model.Author, uts.wsd.model.Articles, uts.wsd.model.Article"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="xsl/authorHome.xsl"?>

<% 
	Author author = (Author)session.getAttribute("author");
	Articles articles = (Articles)session.getAttribute("authorArticles");
%>
	 <root>
	 <loggedIn><%=author.getEmail()%></loggedIn>
	<loggedInName> <%=author.getName()%> </loggedInName>
	 <articles> <%
	for (Article article : articles.getArticles())
	{
		%> 
			<article id = "<%=article.getId()%>">
				<title> <%=article.getTitle()%> </title>
				<publishedDate> <%=article.getPublishedDate()%> </publishedDate>
				<category> <%=article.getCategory()%> </category>
				<shortText> <%=article.getShortText()%> </shortText>
				<text> <%=article.getText()%> </text>
				<publicallyVisible> <%=article.publicallyVisible()%> </publicallyVisible>
				<authorName><%=article.getAuthorName() %></authorName>
			</article> 
	    <%
	}
	%> </articles>
	   </root>   

