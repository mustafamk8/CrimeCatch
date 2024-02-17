package crimecatch.Ctrl;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import crimecatch.dto.AddTips;
import crimecatch.model.CrimeCatchModel;


@WebServlet("/ViewAdminTipsCtrl")
public class ViewAdminTipsCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CrimeCatchModel model = new CrimeCatchModel();
		ArrayList<AddTips> list = model.getAllSafetyTips();
		
		
		RequestDispatcher rd = request.getRequestDispatcher("viewtips.jsp");
		request.setAttribute("LIST", list);
		rd.forward(request, response);
	
	}

	

}
