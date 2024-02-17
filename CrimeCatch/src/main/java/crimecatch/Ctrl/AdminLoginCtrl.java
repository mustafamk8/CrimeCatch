package crimecatch.Ctrl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/AdminLoginCtrl")
public class AdminLoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String pwd = request.getParameter("password");
		
		if(username.equals("admin") && pwd.equals("admin")) {
			HttpSession session = request.getSession();
			session.setAttribute("user", username);
			response.sendRedirect("adminHome.jsp");
			
		}else {
			HttpSession session = request.getSession();
			session.setAttribute("login-failed", "invalid credentials");
			response.sendRedirect("adminpage.jsp");
		}
		
	}

}
