package uts.wsd.servlets;

import uts.wsd.model.Articles;
import uts.wsd.model.Author;
import uts.wsd.model.Authors;
import uts.wsd.application.NewsApplication;

import java.io.IOException;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
}

    /**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			if (!request.getMethod().equalsIgnoreCase("POST")) {
		    
				RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
				rd.forward(request, response);
			}
			else 	
				doPost(request, response);
	}
    
    /**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String dOB = request.getParameter("dOB");
		String biography = request.getParameter("biography");
		String pattern = "[0-9a-zA-Z\\._]+@[a-z-]+(\\.[a-z-]+)+";
		Pattern r = Pattern.compile(pattern);
		
		Matcher m = r.matcher(email);
		String emailError = null;
		String nameError = null;
		String passwordError = null;
		
		request.setAttribute("email", email);
  	    request.setAttribute("dOB", dOB);
  	    request.setAttribute("biography", biography);
  	    request.setAttribute("name", name);
  	    
		boolean error = false;
	      if (email == "") {
	    	  emailError = "Email blank";
	    	  error = true;
	      }
	      else if (!m.matches()) {
	    	  emailError = "Email invalid format";
	    	  error = true;
	      }
	  
	      if (password == "") {
	    	  passwordError = "Password blank";
	    	  error = true;
	      }
	      if (name == "") {
	    	  nameError = "Name blank";
	    	  error = true;
	      }
	      
	      if (error) {
	    	  request.setAttribute("emailError", emailError);
	    	  request.setAttribute("passwordError", passwordError);
	    	  request.setAttribute("nameError", nameError);
	    	  RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
			  rd.forward(request, response);
			  return;
	      }
	    	  

		NewsApplication app = (NewsApplication)getServletContext().getAttribute("app");
		Authors authors = app.getAuthors();
		Author author = authors.getAuthor(email);
		
		if (author == null) { 
		   		
			author = new Author(email, name, password, dOB, biography);
			app.getAuthors().addAuthor(author);
			request.getSession().setAttribute("author", author);
			Articles authorArticles = app.getArticles(author);
	    	request.getSession().setAttribute("authorArticles", authorArticles);
			app.updateAuthorsXml();
			RequestDispatcher rd = request.getRequestDispatcher("authorHome.jsp");
			rd.forward(request, response);
	    }
		else
		{	
			emailError = "Email already existes.";
			request.setAttribute("emailError", emailError);
			RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		}	
  }
}
