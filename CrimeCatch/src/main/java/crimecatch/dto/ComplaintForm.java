package crimecatch.dto;

import java.sql.Date;

public class ComplaintForm {

	private int cid;
	private String crimeType;
	private String timing;
	private int noOfPeople;
	private String location;
	private String description;
	private Date date;
	private String image;
	private String image2;
	private String image3;
	private String pincode;
	
	
	public ComplaintForm() {
		
	}
	
	public ComplaintForm(String crimeType, String timing, int noOfPeople, String location, String description,
			String image,String image2, String image3,String pincode) {
		super();
		this.crimeType = crimeType;
		this.timing = timing;
		this.noOfPeople = noOfPeople;
		this.location = location;
		this.description = description;
		this.image = image;
		this.image2 = image2;
		this.image3 = image3;
		this.pincode = pincode;
	}


	public ComplaintForm(String crimeType, String timing, int noOfPeople, String location, String description,
			Date date, String image,String image2, String image3,String pincode) {
	
		this.crimeType = crimeType;
		this.timing = timing;
		this.noOfPeople = noOfPeople;
		this.location = location;
		this.description = description;
		this.date = date;
		this.image = image;
		this.image2 = image2;
		this.image3 = image3;
		this.pincode = pincode;
	}


	public ComplaintForm(int cid, String crimeType, String timing, int noOfPeople, String location,
			String description, Date date, String image,String image2, String image3,String pincode) {
		
		this.cid = cid;
		this.crimeType = crimeType;
		this.timing = timing;
		this.noOfPeople = noOfPeople;
		this.location = location;
		this.description = description;
		this.date = date;
		this.image = image;
		this.image2 = image2;
		this.image3 = image3;
		this.pincode = pincode;
	}
	
	
	

	
	public String getImage2() {
		return image2;
	}

	public void setImage2(String image2) {
		this.image2 = image2;
	}

	public String getImage3() {
		return image3;
	}

	public void setImage3(String image3) {
		this.image3 = image3;
	}

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCrimeType() {
		return crimeType;
	}
	public void setCrimeType(String crimeType) {
		this.crimeType = crimeType;
	}
	public String getTiming() {
		return timing;
	}
	public void setTiming(String timing) {
		this.timing = timing;
	}
	public int getNoOfPeople() {
		return noOfPeople;
	}
	public void setNoOfPeople(int noOfPeople) {
		this.noOfPeople = noOfPeople;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	
	
	
	
}
