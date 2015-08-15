package uts.wsd.application;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Serializable;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

import uts.wsd.model.Article;
import uts.wsd.model.Articles;
import uts.wsd.model.Author;
import uts.wsd.model.Authors;

public class NewsApplication implements Serializable {

	private static final long serialVersionUID = 2L;
	private String articlesFilePath;
	private String authorsFilePath;

	private Articles articles;
	private Authors authors;

	/**
	 * @return the users.xml file path
	 */
	public String getArticlesFilePath() {
		return articlesFilePath;
	}

	/**
	 * @param articlesFilePath
	 *            the users.xml file path to set
	 */
	public void setArticlesFilePath(String articlesFilePath) {
		this.articlesFilePath = articlesFilePath;
		loadArticles();
	}

	/**
	 * Load articles from articles.xml file
	 */
	private void loadArticles() {
		try {
			JAXBContext jc = JAXBContext.newInstance(Articles.class);
			Unmarshaller u = jc.createUnmarshaller();

			FileInputStream fin = new FileInputStream(articlesFilePath);
			articles = (Articles) u.unmarshal(fin);
			fin.close();
			System.out.println("ARTICLES: " + articles);
		} catch (JAXBException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @return the authors.xml file path
	 */
	public String getAuthorsFilePath() {
		return authorsFilePath;
	}

	/**
	 * @param authorsFilePath
	 *            the authors.xml file path to set
	 */
	public void setAuthorsFilePath(String authorsFilePath) {
		this.authorsFilePath = authorsFilePath;
		System.out.println("authors file path: " + authorsFilePath);
		loadAuthors();
	}

	/**
	 * Load authors from authors.xml file
	 */
	private void loadAuthors() {
		try {
			JAXBContext jc = JAXBContext.newInstance(Authors.class);
			Unmarshaller u = jc.createUnmarshaller();

			FileInputStream fin = new FileInputStream(authorsFilePath);
			authors = (Authors) u.unmarshal(fin);
			fin.close();
		} catch (JAXBException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * @return the articles
	 */
	public Articles getArticles() {
		return articles;
	}

	/**
	 * @return the articles publised by specific author
	 */
	public Articles getArticles(Author author) {
		Articles articles = new Articles();
		for (Article article : this.articles.getArticles()) {
			Author tempAuthor = article.getAuthor();

			if (tempAuthor.equals(author)) {
				articles.addArticle(article);
			}
		}
		return articles;
	}

	/**
	 * @return the articles that are visible to public
	 */
	public Articles getPublicallyVisibleArticles() {
		Articles articles = new Articles();
		for (Article article : this.articles.getArticles()) {
			if (article.publicallyVisible()) {
				articles.addArticle(article);
			}
		}
		return articles;
	}

	/**
	 * @param articles
	 *            the articles to set
	 */
	public void setArticles(Articles articles) {
		this.articles = articles;
		updateArticlesXml();
	}

	/**
	 * @return the authors
	 */
	public Authors getAuthors() {
		return authors;
	}

	/**
	 * @param authors
	 *            the authors to set
	 */
	public void setAuthors(Authors authors) {
		this.authors = authors;
		updateAuthorsXml();
	}

	public Article deleteArticle(long id) {
		Article article = this.articles.removeArticle(id);
		updateArticlesXml();
		return article;
	}

	public void updateAuthorsXml() {
		// convert objects to XML...
		try {
			JAXBContext jc = JAXBContext.newInstance(Authors.class);
			Marshaller m = jc.createMarshaller();
			m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
			m.marshal(authors, new File(authorsFilePath));
			loadAuthors();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateArticlesXml() {
		// convert objects to XML...
		try {
			JAXBContext jc = JAXBContext.newInstance(Articles.class);
			Marshaller m = jc.createMarshaller();
			m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
			m.marshal(articles, new File(articlesFilePath));
			loadArticles();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
