package uts.wsd.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uts.wsd.application.NewsApplication;
import uts.wsd.model.Article;
import uts.wsd.model.Author;

/**
 * Servlet implementation class AuthorServlet
 */
public class AuthorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		System.out.println(email);
		NewsApplication app = (NewsApplication)getServletContext().getAttribute("app");
		Author author = app.getAuthors().getAuthor(email);
		
		request.setAttribute("loggedIn", author);
	    RequestDispatcher rd = request.getRequestDispatcher("author.jsp");
		rd.forward(request, response);
		
	}
}
