package crimecatch.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import crimecatch.dto.AddTips;
import crimecatch.dto.ComplaintForm;

public class CrimeCatchModel {

	
	public static Connection createConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crimecatch", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;
	}
	
	
	public int createComplaintForm(ComplaintForm cm) {
		Connection con = null;
		int i = 0;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("insert into complaintForm(crimeType, timing , noOfPeople,location ,description ,image,image2,image3,pincode) values(?,?,?,?,?,?,?,?,?)");
			
			ps.setString(1, cm.getCrimeType());
			ps.setString(2, cm.getTiming());
			ps.setInt(3, cm.getNoOfPeople());
			ps.setString(4, cm.getLocation());
			ps.setString(5, cm.getDescription());
			ps.setString(6, cm.getImage());
			ps.setString(7, cm.getImage2());
			ps.setString(8, cm.getImage3());
			ps.setString(9, cm.getPincode());
			
			i = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return i;
	}
	
	
	public ArrayList<ComplaintForm> getAllComplaint(){
		ArrayList<ComplaintForm> list = new ArrayList();
		Connection con = null;
		ComplaintForm c =null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from complaintForm");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				c = new ComplaintForm();
				c.setCid(rs.getInt("cid"));
				c.setCrimeType(rs.getString("crimeType"));
				c.setTiming(rs.getString("timing"));
				c.setNoOfPeople(rs.getInt("noOfPeople"));
				c.setLocation(rs.getString("location"));
				c.setDescription(rs.getString("description"));
				c.setDate(rs.getDate("date"));
				c.setImage(rs.getString("image"));
				c.setImage2(rs.getString("image2"));
				c.setImage3(rs.getString("image3"));
				
				list.add(c);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	
	public boolean deleteReports(Integer crimeid) {
		boolean f = false;
		Connection con = null;
		try {
			con = createConnection();
			String query = "delete from complaintForm where cid = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, crimeid);
			int x = ps.executeUpdate();
			
			if(x==1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	
	
public ComplaintForm getPlaceDetails(int id) {
		
		Connection con = null;
		ComplaintForm cm = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from complaintForm where cid = ?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				cm = new ComplaintForm(rs.getInt("cid"),rs.getString("crimetype"),rs.getString("timing"),rs.getInt("noOfPeople"),
						rs.getString("location"),rs.getString("description"),rs.getDate("date"),rs.getString("image"),rs.getString("image2"),rs.getString("image3"),rs.getString("pincode"));
				
				
//			 ad = new AddPlace(rs.getInt("placeId"),rs.getString("placeName"),rs.getString("placeLocation"),rs.getString("placeDescription")
//						,rs.getString("placeTimings"),rs.getString("placeFamous1"),rs.getString("placeFamous2"),rs.getString("placeFamous3"),
//						rs.getString("placeFamous4"),rs.getString("placeFamous5"),rs.getString("image1"),rs.getString("image2"),rs.getString("image3"));
///		
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cm;
	}
	
	public int createAddTips(AddTips ad) {
		int i = 0;
		Connection con = null;
		try {
			con = createConnection();
PreparedStatement ps = con.prepareStatement("insert into addtips(crimetype,description) values(?,?)");
			
			ps.setString(1, ad.getCrimeType());
			ps.setString(2,ad.getDescription());
			
			i = ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return i;
	}
	
	
	public ArrayList<AddTips> getAllSafetyTips(){
		ArrayList<AddTips> list = new ArrayList();
		Connection con = null;
		AddTips ad = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from addtips");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				ad = new AddTips();
				ad.setCrimeType(rs.getString("crimetype"));
				ad.setDescription(rs.getString("description"));
				
				list.add(ad);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	public boolean deleteTips(Integer tipid) {
		boolean f = false;
		Connection con = null;
		try {
			con = createConnection();
			String query = "delete from addtips where id = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, tipid);
			int x = ps.executeUpdate();
			
			if(x==1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	
	
	
}
