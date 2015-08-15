package uts.wsd.soap;

import javax.jws.WebMethod;
import javax.jws.WebService;

import uts.wsd.model.Article;
import uts.wsd.model.Articles;

/**
 * Interface for SOAP web service endpoint for the news application. Allows to
 * retrieve all articles and to delete an article.
 * 
 * @author Christian Neurohr
 * 
 */
@WebService
public interface NewsServiceEndpoint {

	/**
	 * @return all articles
	 */
	@WebMethod
	public Articles getArticles();

	/**
	 * deletes article with the given id if it exists
	 * 
	 * @param id
	 * @return deleted article or null if not found
	 */
	@WebMethod
	public Article deleteArticle(long id);
}
