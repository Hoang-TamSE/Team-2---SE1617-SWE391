package uts.wsd.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uts.wsd.application.NewsApplication;
import uts.wsd.model.Article;
import uts.wsd.model.Articles;
import uts.wsd.model.Author;
import uts.wsd.rest.client.LipsumClient;

/**
 * Servlet implementation class AddArticle
 */
public class AddArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddArticleServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		if (!request.getMethod().equalsIgnoreCase("POST")) {

			RequestDispatcher rd = request
					.getRequestDispatcher("addArticle.jsp");
			rd.forward(request, response);
		} else
			doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Author author = (Author) request.getSession().getAttribute("author");

		if (author != null) {

			String title = request.getParameter("title");
			String category = request.getParameter("category");
			String shortText = request.getParameter("shortText");
			String text = request.getParameter("text");

			boolean generateText = request.getParameter("generateText") != null;
			if (generateText && (text == null || text.length() == 0)) {
				text = LipsumClient.getText(5, LipsumClient.PARAGRAPHS);
			}

			String publicallyVisible = request
					.getParameter("publicallyVisible");

			if (publicallyVisible == null)
				publicallyVisible = "";

			Date publishedDate = new Date(System.currentTimeMillis());

			NewsApplication app = (NewsApplication) getServletContext()
					.getAttribute("app");
			long id = app.getArticles().getNextPossibleId();
			Article article = new Article(id, title, publishedDate, author,
					category, shortText, text, publicallyVisible);

			app.getArticles().addArticle(article);
			app.updateArticlesXml();

			Articles authorArticles = app.getArticles(author);
			request.getSession().setAttribute("authorArticles", authorArticles);

			RequestDispatcher dispatcher = request
					.getRequestDispatcher("authorHome.jsp");
			dispatcher.forward(request, response);

		} else {

			RequestDispatcher dispatcher = request
					.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);
		}
	}

}
