package uts.wsd.rest.client;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "feed")
public class Lipsum {

	@XmlElement(name = "lipsum")
	private String lipsum;

	@XmlElement(name = "generated")
	private String generated;

	@XmlElement(name = "donateLink")
	private String donateLink;

	@XmlElement(name = "creditLink")
	private String creditLink;

	@XmlElement(name = "creditName")
	private String creditName;

	public String getLipsum() {
		return lipsum;
	}

	public void setLipsum(String lipsum) {
		this.lipsum = lipsum;
	}

	public String getGenerated() {
		return generated;
	}

	public void setGenerated(String generated) {
		this.generated = generated;
	}

	public String getDonateLink() {
		return donateLink;
	}

	public void setDonateLink(String donateLink) {
		this.donateLink = donateLink;
	}

	public String getCreditLink() {
		return creditLink;
	}

	public void setCreditLink(String creditLink) {
		this.creditLink = creditLink;
	}

	public String getCreditName() {
		return creditName;
	}

	public void setCreditName(String creditName) {
		this.creditName = creditName;
	}

}
