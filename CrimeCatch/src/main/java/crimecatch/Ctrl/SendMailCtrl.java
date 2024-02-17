package crimecatch.Ctrl;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import crimecatch.dto.ComplaintForm;
import crimecatch.model.CrimeCatchModel;


@WebServlet("/SendMailCtrl")
public class SendMailCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("crime_id"));
		CrimeCatchModel model = new CrimeCatchModel();
		
	//	ComplaintForm cm = model.getAllComplaint(id);
		ComplaintForm cm = model.getPlaceDetails(id);
		
		System.out.println("value in list : "+cm);
		
		if (cm != null) {
			System.out.println("preparing to send message");
			String message = "Crime Type : "+cm.getCrimeType()+"/n"+"Post Code : "+cm.getPincode()+"/n"+"Description : "+cm.getDescription();
			String subject = "Crime : "+cm.getCrimeType();
			String to = "mustafamk8605@gmail.com";
			String from = "mustafamk8205@gmail.com";
			
			sendEmail(message,subject,to,from);
			
			
			
			
//			RequestDispatcher rd = request.getRequestDispatcher("information2.jsp");
//			
//			request.setAttribute("ADDPLACE", cm);
//			rd.forward(request, response);
		}
			
	}
	
private static void sendEmail(String message,String subject,String to,String from) {
		
		// variable for gmail
		String host = "smtp.gmail.com";
		
		//get the system properties
		Properties properties = System.getProperties();
		System.out.println("properties : "+properties);
		
		//host set
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", "587");
		//properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		
		//step 1 : to get the session object
		Session session =  Session.getInstance(properties, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				
				return new PasswordAuthentication("mustafamk8205@gmail.com", "Khanbhai@1234");
			}			
		});
		
		//Session.setDebug(true);
		session.setDebug(true);
		
		// step 2 : compose the message [text,multimedia]
		MimeMessage m = new MimeMessage(session);
		
		try {
			m.setFrom(from);
			
			// adding recipent to message
			//m.addRecipients(Message.RecipientType.TO, new InternetAddress(to));
			m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			
			// adding subject to send mesasge
			m.setSubject(subject);
			
			//adding text to message
			m.setText(message);
			
			// step 3 : send the message using transport class
			Transport.send(m);
			
			System.out.println("sent success..........");
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
			
		
		
	}

}
