package uts.wsd.model;

import java.io.Serializable;
import java.util.ArrayList;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "authors")
public class Authors implements Serializable {

	private static final long serialVersionUID = 3L;

	@XmlElement(name = "author")
	private ArrayList<Author> authors;

	public Authors() {
		this.authors = new ArrayList<Author>();
	}

    public Author login(String email, String password) {
        // For each author in the list...
    	for (Author author : authors) {
            if (author.getEmail().equals(email) && author.getPassword().equals(password))
                return author; // Login correct. Return this author.
        }
        return null; // Login incorrect. Return null.
    }
    public Author getAuthor(String email) {
            // For each author in the list...
            for (Author author : authors) {
                if (author.getEmail().equals(email))
                    return author; // Login correct. Return this author.
            }
            return null; // Login incorrect. Return null.
    }
    
	/**
	 * @param author
	 *            the author to add
	 */
	public void addAuthor(Author author) {
		this.authors.add(author);
	}
}
