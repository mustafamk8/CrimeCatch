package crimecatch.Ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import crimecatch.dto.AddTips;
import crimecatch.model.CrimeCatchModel;

@WebServlet("/AddTipsCtrl")
public class AddTipsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String type = request.getParameter("crime_type");
		String description = request.getParameter("crime_description");
		
		AddTips ad = new AddTips(type, description);
		CrimeCatchModel model = new CrimeCatchModel();
		int i = model.createAddTips(ad);
		if(i!=0) {
			RequestDispatcher rd = request.getRequestDispatcher("addtips.jsp");
			request.setAttribute("msg", "Safety tips added successfully");
			rd.forward(request, response);
		}
		
		
	}

}
