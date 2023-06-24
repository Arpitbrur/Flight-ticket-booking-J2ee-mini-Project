package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import flight_ticket_booking_servlet_project.dto.User;
import flight_ticket_booking_servlet_project.service.UserService;

@WebServlet("/userLogin")
public class UserLoginController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		
		String email = req.getParameter("userEmail");
		String userpass = req.getParameter("userPassword");
		
		UserService service = new UserService();
		User user = service.getUserByEmail(email);
		
		if(user!= null) {
			if(userpass.equals(user.getUserPassword())) {
				httpSession.setAttribute("email", user.getUserEmail());
				RequestDispatcher dispatcher = req.getRequestDispatcher("user-home.jsp");
				dispatcher.forward(req, resp);
			}else {
				req.setAttribute("passMsg", "invalid password");
				RequestDispatcher dispatcher = req.getRequestDispatcher("user-login.jsp");
				dispatcher.forward(req, resp);
			}
		}else {
			req.setAttribute("emailMsg", "invalid-email");
			RequestDispatcher dispatcher = req.getRequestDispatcher("user-login.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
