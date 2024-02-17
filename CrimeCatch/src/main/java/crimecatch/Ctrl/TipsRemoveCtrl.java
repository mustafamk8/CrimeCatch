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


@WebServlet("/TipsRemoveCtrl")
public class TipsRemoveCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Integer tipid = Integer.parseInt(request.getParameter("tip_id"));
		CrimeCatchModel model = new CrimeCatchModel();
		boolean f = model.deleteTips(tipid);
		
		ArrayList<AddTips> list = model.getAllSafetyTips();
		
		RequestDispatcher rd = null;

		if (f) {
			rd = request.getRequestDispatcher("viewtips.jsp");
			request.setAttribute("msg", "Safety Tips deleted");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		} else {
			rd = request.getRequestDispatcher("viewtips.jsp");
			request.setAttribute("msg", " Safety tips not deleted");
			request.setAttribute("LIST", list);
			rd.forward(request, response);
		}
		
	
	}

}
