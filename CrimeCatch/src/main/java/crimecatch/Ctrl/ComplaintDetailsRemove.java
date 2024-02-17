package crimecatch.Ctrl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import crimecatch.dto.ComplaintForm;
import crimecatch.model.CrimeCatchModel;


@WebServlet("/ComplaintDetailsRemove")
public class ComplaintDetailsRemove extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer crimeid = Integer.parseInt(request.getParameter("crime_id"));
		CrimeCatchModel model = new CrimeCatchModel();
		boolean f = model.deleteReports(crimeid);
		ArrayList<ComplaintForm> list = model.getAllComplaint();
		
		RequestDispatcher rd = null;

		if (f) {
			rd = request.getRequestDispatcher("viewreports.jsp");
			request.setAttribute("msg", "Complaint deleted");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		} else {
			rd = request.getRequestDispatcher("viewreports.jsp");
			request.setAttribute("msg", "Complaint not deleted");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
		
	}

	

}
