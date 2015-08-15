package uts.wsd.servlets;

import java.io.IOException;

import uts.wsd.application.NewsApplication;
import uts.wsd.model.Author;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HomeServlet
 */
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() throws ServletException {
		NewsApplication app = new NewsApplication();
		String articlesFilePath = getServletContext().getRealPath("WEB-INF/articles.xml"); 
		String authorsFilePath = getServletContext().getRealPath("WEB-INF/authors.xml"); 
		app.setArticlesFilePath(articlesFilePath);
		app.setAuthorsFilePath(authorsFilePath); 	
		getServletContext().setAttribute("app", app);
	}    

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			Author author = (Author)request.getSession().getAttribute("author");
			
			if (author == null)	
			{	
				
				RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				rd.forward(request, response);
			}else
			{	
				RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				rd.forward(request, response);
				}	
	}
}
