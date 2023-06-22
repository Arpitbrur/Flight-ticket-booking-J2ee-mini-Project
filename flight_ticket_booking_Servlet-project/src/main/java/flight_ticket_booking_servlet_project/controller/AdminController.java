package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import flight_ticket_booking_servlet_project.dto.Admin;
import flight_ticket_booking_servlet_project.service.AdminService;

@SuppressWarnings("serial")
@WebServlet("/loginAdmin")
public class AdminController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		
		String email = req.getParameter("adminEmail");
		String password	= req.getParameter("adminPassword");
		
		AdminService adminService  = new AdminService();
		
		Admin admin= adminService.getAdminByEmail(email);
		
		if(admin != null) {
			
			if(admin.getAdminPassword().equals(password)) {
				httpSession.setAttribute("adminEmail", admin.getAdminEmail());
				RequestDispatcher dispatcher = req.getRequestDispatcher("admin-add-flight.jsp");
				dispatcher.forward(req, resp);
			}else {
				req.setAttribute("pass", "invalid password");
				RequestDispatcher dispatcher = req.getRequestDispatcher("admin-login.jsp");
				dispatcher.forward(req, resp);
			}
		}else {
			req.setAttribute("message", "invalid email");
			RequestDispatcher dispatcher = req.getRequestDispatcher("admin-login.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
