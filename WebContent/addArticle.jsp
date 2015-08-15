<%@ page language="java" contentType="application/xml" import="uts.wsd.model.Author"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="xsl/addArticle.xsl"?>

<root>

   	   <%
	Author author = (Author)session.getAttribute("author");
     %>
	
		
	<loggedIn> <%=author.getEmail()%> </loggedIn>
	<loggedInName> <%=author.getName()%> </loggedInName>
    
	<fields>
	<field>
		<title>Title</title> 
        <type>text</type>
        <name>title</name>		
	</field>
	<field>
		<title>Category</title>
        <type>text</type>
        <name>category</name>		
	</field>
	<field>
		<title>Short text</title>
        <type></type>
        <name>shortText</name>		
	</field>
	<field>
		<title>Generate dummy text</title> 
        <type>checkbox</type>
        <name>generateText</name>		
	</field>
	<field>
		<title>Full text</title>
        <type></type>
        <name>text</name>		
	</field>
	<field>
		<title>Biography</title>
        <type></type>
        <name>biography</name>		
	</field>
	<field>
		<title>Publically visible</title> 
        <type>checkbox</type>
        <name>publicallyVisible</name>		
	</field>
	</fields>
</root>