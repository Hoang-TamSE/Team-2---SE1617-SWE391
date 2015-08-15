package uts.wsd.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uts.wsd.application.NewsApplication;
import uts.wsd.model.Article;
import uts.wsd.model.Author;

/**
 * Servlet implementation class ArticleServlet
 */
public class ArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArticleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	long id = 0;
	String loginError = null;
	
	if (request.getMethod().equalsIgnoreCase("post")) {
		id = Long.parseLong((String)request.getAttribute("id"));
		loginError = (String)request.getAttribute("loginError");
	}
	else {
		id = Long.parseLong(request.getParameter("id"));
		loginError = request.getParameter("loginError");
	}
	
	NewsApplication app = (NewsApplication)getServletContext().getAttribute("app");
	Article article = app.getArticles().getArticle(id);

	
	request.setAttribute("article", article);
	request.setAttribute("loginError", loginError);
    RequestDispatcher rd = request.getRequestDispatcher("article.jsp");
	rd.forward(request, response);
}
}
