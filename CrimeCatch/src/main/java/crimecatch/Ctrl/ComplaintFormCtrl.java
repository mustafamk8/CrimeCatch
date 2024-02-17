package crimecatch.Ctrl;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import crimecatch.dto.ComplaintForm;
import crimecatch.model.CrimeCatchModel;



@MultipartConfig
@WebServlet("/ComplaintFormCtrl")
public class ComplaintFormCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String crimeType = request.getParameter("crimeType");
		String timing = request.getParameter("time");
		int noOfPeople = Integer.parseInt(request.getParameter("noOfPeople"));
		String location = request.getParameter("location");
		String description = request.getParameter("description");
		Part file  =request.getPart("image");
		Part file2  =request.getPart("image2");
		Part file3  =request.getPart("image3");
		String pincode = request.getParameter("pincode");
		
		
		String imageFileName = file.getSubmittedFileName(); // get selected file name
		String imageFileName2 = file2.getSubmittedFileName();
		String imageFileName3 = file3.getSubmittedFileName();
		System.out.println("Selected image file name : " + imageFileName);
		
		//C:\Users\Smart\eclipse-workspace2\CrimeCatch\src\main\webapp\images
		String uploadPath = "C:/Users/Smart/eclipse-workspace2/CrimeCatch/src/main/webapp/images/"+imageFileName;
		String uploadPath2 = "C:/Users/Smart/eclipse-workspace2/CrimeCatch/src/main/webapp/images/"+imageFileName2;
		String uploadPath3 = "C:/Users/Smart/eclipse-workspace2/CrimeCatch/src/main/webapp/images/"+imageFileName3;
		
		try {
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();
			
			byte[] data1 = new byte[is.available()];
			is.read(data1);
			fos.write(data1);
			fos.close();
			}catch(Exception e) {
			e.printStackTrace();
		}
		try {
			FileOutputStream fos2 = new FileOutputStream(uploadPath2);
			InputStream is2 = file2.getInputStream();
			
			byte[] data2 = new byte[is2.available()];
			is2.read(data2);
			fos2.write(data2);
			fos2.close();
			}catch(Exception e) {
			e.printStackTrace();
		}
		try {
			FileOutputStream fos3 = new FileOutputStream(uploadPath3);
			InputStream is3 = file3.getInputStream();
			
			byte[] data3 = new byte[is3.available()];
			is3.read(data3);
			fos3.write(data3);
			fos3.close();
			}catch(Exception e) {
			e.printStackTrace();
		}
		
		ComplaintForm cm = new ComplaintForm(crimeType,timing,noOfPeople,location,description,imageFileName,imageFileName2,imageFileName3,pincode);
		CrimeCatchModel model = new CrimeCatchModel();
		
		int i = model.createComplaintForm(cm);
		
		if(i!=0) {
			RequestDispatcher rd = request.getRequestDispatcher("complaintForm.html");
			request.setAttribute("msg", "complaint file success");
			rd.forward(request, response);
		}
		
		
		
	}

}
