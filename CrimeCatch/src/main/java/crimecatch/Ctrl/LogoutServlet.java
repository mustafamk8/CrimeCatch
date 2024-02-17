package crimecatch.Ctrl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutServlet
 */
@WebServlet("/LogoutServlet")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			
			HttpSession session2 = request.getSession();
			session2.setAttribute("Logout-Msg", "Logout Successfully..");
			//session.invalidate(); // delete/destroy session from all sessions
			response.addHeader("pragma", "no-cache");
			response.addHeader("cache-control", "no-store");
			response.addHeader("expire", "0");
			session2.invalidate();
			response.sendRedirect("adminpage.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	

}
