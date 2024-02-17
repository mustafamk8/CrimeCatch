package crimecatch.dto;

public class AddTips {

	private int id;
	private String crimeType;
	private String description;
	
	
	
	public AddTips() {
		
	}
	public AddTips(String crimeType, String description) {
		
		this.crimeType = crimeType;
		this.description = description;
	}
	public AddTips(int id, String crimeType, String description) {
		
		this.id = id;
		this.crimeType = crimeType;
		this.description = description;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCrimeType() {
		return crimeType;
	}
	public void setCrimeType(String crimeType) {
		this.crimeType = crimeType;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
}
