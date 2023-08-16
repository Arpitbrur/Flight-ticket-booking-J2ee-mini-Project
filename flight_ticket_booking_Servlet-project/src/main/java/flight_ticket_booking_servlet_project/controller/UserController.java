package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flight_ticket_booking_servlet_project.dto.User;
import flight_ticket_booking_servlet_project.service.UserService;

@SuppressWarnings("serial")
@WebServlet("/userRegister")
public class UserController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		User user = new User();
		
		String name = req.getParameter("userName");
		String email = req.getParameter("userEmail");
		String password = req.getParameter("userPassword");
		String confirmPassword = req.getParameter("confirmUserPassword");
		
		user.setUserName(name);
		user.setUserEmail(email);
		user.setUserPassword(password);
		
		UserService service = new UserService();

		if(password.equals(confirmPassword)) {
			service.insertUser(user);
			RequestDispatcher dispatcher = req.getRequestDispatcher("user-login.jsp");
			dispatcher.forward(req, resp);
		}else {
			req.setAttribute("msg", "mismatch-password");
			RequestDispatcher dispatcher = req.getRequestDispatcher("user-registration.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
