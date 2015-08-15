package uts.wsd.servlets;

import sun.net.www.http.HttpClient;
import uts.wsd.model.Author;
import uts.wsd.model.Authors;
import uts.wsd.application.NewsApplication;
import uts.wsd.model.Articles;





import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	    String email = request.getParameter("email");  
	    String password = request.getParameter("password");  
	    
	    NewsApplication app = (NewsApplication)getServletContext().getAttribute("app");
	    Authors authors = app.getAuthors();
	    Author author = authors.login(email, password);
	    

	    if (author != null) { 
	       		
	    	request.getSession().setAttribute("author", author);
	    	Articles authorArticles = app.getArticles(author);
	    	request.getSession().setAttribute("authorArticles", authorArticles);
	    	RequestDispatcher rd = request.getRequestDispatcher("authorHome.jsp");  
	        rd.forward(request,response);
	    }  
	    else {
	    	String loginError = "Login Error";
	    	String namePage = request.getParameter("namePage");
	        
	    	if (namePage.matches("[0-9]+"))
	    	{   
	    			    		
	    		request.setAttribute("id", namePage);
	    		namePage = "ArticleServlet";
	    	}
	    	
	    			request.setAttribute("loginError", loginError);
	                
	    	
	        RequestDispatcher rd = request.getRequestDispatcher(namePage);  
	        rd.forward(request,response);  
	    }  
	}
}
