package uts.wsd.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlElementWrapper;
import javax.xml.bind.annotation.XmlRootElement;

import uts.wsd.utils.DateUtils;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "database")
public class Articles implements Serializable {

	private static final long serialVersionUID = 1L;
	@XmlElement(name = "nextPossibleId")
	private int nextPossibleId;

	@XmlElementWrapper(name = "articles")
	@XmlElement(name = "article")
	private ArrayList<Article> articles;

	public Articles(ArrayList<Article> articles) {
		this.articles = articles;
	}

	public Articles() {
		this.articles = new ArrayList<Article>();
	}

	/**
	 * @return the articles
	 */
	public ArrayList<Article> getArticles() {
		return articles;
	}

	/**
	 * @param articles
	 *            the articles to set
	 */
	public void setArticles(ArrayList<Article> articles) {
		this.articles = articles;
	}

	/**
	 * @param article
	 *            the article to add
	 */
	public int getNextPossibleId() {
		return nextPossibleId++;
	}

	public void setNextPossibleId(int id) {
		nextPossibleId = id;
	}

	public void addArticle(Article article) {
		this.articles.add(article);
	}

	public Article getArticle(long id) {
		// For each article in the list...
		for (Article article : articles) {
			if (article.getId() == id)
				return article; // Id match. Return this article.
		}
		return null; // Id mismatch. Return null.
	}

	/**
	 * @param id
	 *            the id of the article to remove
	 * @return removed article or null if it not existed
	 */
	public Article removeArticle(long id) {
		Article remove = null;
		for (Article article : articles) {
			if (article.getId() == id) {
				remove = article;
			}
		}
		if (remove != null) {
			this.articles.remove(remove);
		}
		return remove;
	}

	public Articles filterPublishedBefore(Date date) {
		Articles result = new Articles();
		for (Article article : this.articles) {
			if (!DateUtils.isAfterDay(article.getPublishedDate(), date)) {
				// not after means same day or before
				result.addArticle(article);
			}
		}
		return result;
	}

	public Articles filterPublishedAfter(Date date) {
		Articles result = new Articles();
		for (Article article : this.articles) {
			if (!DateUtils.isBeforeDay(article.getPublishedDate(), date)) {
				// not before means same day or after
				result.addArticle(article);
			}
		}
		return result;
	}

	public Articles filterCategory(String category) {
		Articles result = new Articles();
		for (Article article : this.articles) {
			if (article.getCategory().equals(category)) {
				result.addArticle(article);
			}
		}
		return result;
	}

	@Override
	public String toString() {
		String result = "";
		for (Article article : articles) {
			result += article.toString() + "\n";
		}
		return result;
	}

}
