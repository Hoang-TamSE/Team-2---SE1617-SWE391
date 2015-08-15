package uts.wsd.servlets;

import uts.wsd.model.Articles;
import uts.wsd.model.Author;
import uts.wsd.application.NewsApplication;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteArticleServlet
 */
public class DeleteArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteArticleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Author author = (Author)request.getSession().getAttribute("author");

    	if (author != null) { 
    			
    	long articleId = Long.parseLong(request.getParameter("id"));
        
    	NewsApplication app = (NewsApplication)getServletContext().getAttribute("app");
    	app.getArticles().removeArticle(articleId);
    	app.updateArticlesXml();
    	
    	Articles authorArticles = app.getArticles(author);
    	request.getSession().setAttribute("authorArticles", authorArticles);

    	RequestDispatcher dispatcher = request.getRequestDispatcher("authorHome.jsp");
		dispatcher.forward(request, response);
    		
    	} else { 
    		RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
		   	dispatcher.forward(request, response);
    	}
	}
}




