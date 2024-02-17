package crimecatch.Ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import crimecatch.dto.ComplaintForm;
import crimecatch.model.CrimeCatchModel;

/**
 * Servlet implementation class InformationLinkCtrl
 */
@WebServlet("/InformationLinkCtrl")
public class InformationLinkCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		CrimeCatchModel model = new CrimeCatchModel();
		
	//	ComplaintForm cm = model.getAllComplaint(id);
		ComplaintForm cm = model.getPlaceDetails(id);
		if (cm != null) {
			RequestDispatcher rd = request.getRequestDispatcher("information2.jsp");
			
			request.setAttribute("ADDPLACE", cm);
			rd.forward(request, response);
		}
			
	}

	
}
