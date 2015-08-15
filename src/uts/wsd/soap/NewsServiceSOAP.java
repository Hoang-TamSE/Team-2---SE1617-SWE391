package uts.wsd.soap;

import java.io.IOException;

import javax.annotation.Resource;
import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.servlet.ServletContext;
import javax.xml.bind.JAXBException;
import javax.xml.ws.WebServiceContext;
import javax.xml.ws.handler.MessageContext;

import uts.wsd.application.NewsApplication;
import uts.wsd.model.Article;
import uts.wsd.model.Articles;

/**
 * Implementation of the news service endpoint. Allows to retrieve all articles
 * and to delete an article.
 * 
 * @author Christian Neurohr
 * 
 */
@WebService(endpointInterface = "uts.wsd.soap.NewsServiceEndpoint")
public class NewsServiceSOAP implements NewsServiceEndpoint {

	@Resource
	private WebServiceContext context;

	/**
	 * returns an instance of the news application
	 * 
	 * @return
	 * @throws JAXBException
	 * @throws IOException
	 */
	private NewsApplication getNewsApp() throws JAXBException, IOException {
		// The web server can handle requests from different clients in
		// parallel.
		// These are called "threads".
		//
		// We do NOT want other threads to manipulate the application object at
		// the same
		// time that we are manipulating it, otherwise bad things could happen.
		//
		// The "synchronized" keyword is used to lock the application object
		// while
		// we're manpulating it.
		ServletContext application = (ServletContext) context
				.getMessageContext().get(MessageContext.SERVLET_CONTEXT);
		synchronized (application) {
			NewsApplication newsApp = (NewsApplication) application
					.getAttribute("newsApp");
			if (newsApp == null) {
				newsApp = new NewsApplication();
				newsApp.setArticlesFilePath(application
						.getRealPath("WEB-INF/articles.xml"));
				newsApp.setAuthorsFilePath("WEB-INF/authors.xml");
				application.setAttribute("newsApp", newsApp);
			}
			return newsApp;
		}
	}

	/**
	 * @return all articles
	 */
	@Override
	@WebMethod
	public Articles getArticles() {
		try {
			return getNewsApp().getArticles();
		} catch (JAXBException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return new Articles();
	}

	/**
	 * deletes article with the given id if it exists
	 * 
	 * @param id
	 * @return deleted article or null if not found
	 */
	@Override
	@WebMethod
	public Article deleteArticle(long id) {
		try {
			return getNewsApp().deleteArticle(id);
		} catch (JAXBException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
