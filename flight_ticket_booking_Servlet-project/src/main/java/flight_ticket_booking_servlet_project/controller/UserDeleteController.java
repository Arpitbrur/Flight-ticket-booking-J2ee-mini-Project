package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flight_ticket_booking_servlet_project.dto.User;
import flight_ticket_booking_servlet_project.service.UserService;

@SuppressWarnings("serial")
@WebServlet("/deleteUser")
public class UserDeleteController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		User user = new User();
		UserService service = new UserService();
		
		int id = Integer.parseInt(req.getParameter("userId"));
		
		service.deleteUser(id);
		RequestDispatcher dispatcher = req.getRequestDispatcher("user-home.jsp");
		dispatcher.include(req, resp);
	}
	
}
