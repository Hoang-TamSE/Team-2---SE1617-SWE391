package uts.wsd.rest;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.xml.bind.JAXBException;

import uts.wsd.application.NewsApplication;
import uts.wsd.model.Articles;

/**
 * 
 * REST web service for the news application. Allows to retrieve articles
 * optionally filtered by category, start date and/or end date.
 * 
 * @author Christian Neurohr
 * 
 */
@Path("/newsService")
public class NewsServiceREST {
	@Context
	private ServletContext application;

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
	 * Outputs hello world to test if web service is working
	 * 
	 * @return
	 */
	@Path("hello")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String hello() {
		return "Hello World";
	}

	/**
	 * Returns articles optionally filtered by category, start date and/or end
	 * date
	 * 
	 * @param category
	 * @param startDate
	 * @param endDate
	 * @return
	 */
	@Path("articles")
	@GET
	@Produces(MediaType.APPLICATION_XML)
	public Articles getArticles(@QueryParam("category") String category,
			@QueryParam("startDate") String startDate,
			@QueryParam("endDate") String endDate) {
		try {
			Articles articles = getNewsApp().getArticles();

			// specify the date format
			DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");

			// filter by category if given
			if (category != null) {
				articles = articles.filterCategory(category);
			}
			// filter by start date if given
			if (startDate != null) {
				Date date;
				try {
					date = dateFormat.parse(startDate);
					articles = articles.filterPublishedAfter(date);
				} catch (ParseException e) {
					e.printStackTrace();
				}
			}
			// filter by end date if given
			if (endDate != null) {
				Date date;
				try {
					date = dateFormat.parse(endDate);
					articles = articles.filterPublishedBefore(date);
				} catch (ParseException e) {
					e.printStackTrace();
				}
			}
			// return (filtered) articles
			return articles;
		} catch (JAXBException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return new Articles();
	}

}
