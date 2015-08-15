package uts.wsd.model;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;


@XmlAccessorType(XmlAccessType.FIELD)
public class Author implements Serializable {

	private static final long serialVersionUID = 4L;
	
	@XmlElement(name = "email")
	private String email;
	@XmlElement(name = "name")
	private String name;
	@XmlElement(name = "password")
	private String password;
	@XmlElement(name = "dOB")
	private String dOB;
	@XmlElement(name = "biography")
	private String biography;

	public Author() {
		super();
	}
	
	/**
	 * @param email
	 * @param name
	 * @param password
	 * @param dOB
	 * @param biography
	 */
	public Author(String email, String name, String password, String dOB,
			String biography) {
		super();
		this.email = email;
		this.name = name;
		this.password = password;
		this.dOB = dOB;
		this.biography = biography;
	}
	
    @Override
    public boolean equals(Object o)
    {
        if(o instanceof Author)
        {
            Author author = (Author)o;
            String email = author.getEmail();
            return email.equals(this.email); 
        }
        return false;
    }
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDOB() {
		return dOB;
	}

	public void setDOB(String dOB) {
		this.dOB = dOB;
	}

	public String getBiography() {
		return biography;
	}

	public void setBiography(String biography) {
		this.biography = biography;
	}
}
