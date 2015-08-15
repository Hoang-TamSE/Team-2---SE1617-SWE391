package uts.wsd.model;

import java.io.Serializable;
import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlAttribute;

@XmlAccessorType(XmlAccessType.FIELD)
public class Article implements Serializable {

	private static final long serialVersionUID = 1L;

	@XmlAttribute(name = "id")
	private long id;
	@XmlElement(name = "title")
	private String title;
	@XmlElement(name = "publishedDate")
	private Date publishedDate;
	@XmlElement(name = "author")
	private Author author;
	@XmlElement(name = "category")
	private String category;
	@XmlElement(name = "shortText")
	private String shortText;
	@XmlElement(name = "text")
	private String text;
	@XmlElement(name = "publicallyVisible")
	private String publicallyVisible;

	public Article() {
		super();
	}
	
	/**
	 * @param title
	 * @param publishedDate
	 * @param author
	 * @param category
	 * @param shortText
	 * @param text
	 * @param publicallyVisible
	 */
	public Article(long id, String title, Date publishedDate, Author author,
			String category, String shortText, String text, String publicallyVisible) {
		super();
		this.id = id;
		this.title = title;
		this.publishedDate = publishedDate;
		this.author = author;
		this.category = category;
		this.shortText = shortText;
		this.text = text;
		this.publicallyVisible= publicallyVisible;
	}
	
    @Override
    public boolean equals(Object o)
    {
        if(o instanceof Article)
        {
            Article article = (Article)o;
            long id = article.getId();
            return id == this.id; 
        }
        return false;
    }	

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}
	
	/**
	 * @param publicallyVisible
	 *            the publicallyVisible to set
	 */
	public void setPublicallyVisible(String publicallyVisible) {
		this.publicallyVisible = publicallyVisible;
	}
	
	/**
	 * @return the publicallyVisibile status
	 */
	public boolean publicallyVisible() {
		return !publicallyVisible.equals("");
	}

	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}

	/**
	 * @param title
	 *            the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}

	/**
	 * @return the publishedDate
	 */
	public Date getPublishedDate() {
		return publishedDate;
	}

	/**
	 * @param publishedDate
	 *            the publishedDate to set
	 */
	public void setPublishedDate(Date publishedDate) {
		this.publishedDate = publishedDate;
	}

	/**
	 * @return the author
	 */
	public Author getAuthor() {
		return author;
	}

	/**
	 * @param author
	 *            the author to set
	 */
	public void setAuthor(Author author) {
		this.author = author;
	}

	/**
	 * @return the category
	 */
	public String getCategory() {
		return category;
	}

	/**
	 * @param category
	 *            the category to set
	 */
	public void setCategory(String category) {
		this.category = category;
	}

	/**
	 * @return the shortText
	 */
	public String getShortText() {
		return shortText;
	}

	/**
	 * @param shortText
	 *            the shortText to set
	 */
	public void setShortText(String shortText) {
		this.shortText = shortText;
	}

	/**
	 * @return the text
	 */
	public String getText() {
		return text;
	}

	/**
	 * @param text
	 *            the text to set
	 */
	public void setText(String text) {
		this.text = text;
	}
	
	public String getAuthorName() {
		return author.getName();
	}

}
