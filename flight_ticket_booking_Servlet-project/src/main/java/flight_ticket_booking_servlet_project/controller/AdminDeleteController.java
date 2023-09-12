package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flight_ticket_booking_servlet_project.dto.Admin;
import flight_ticket_booking_servlet_project.service.AdminService;

@SuppressWarnings("serial")
@WebServlet("/deleteAdmin")
public class AdminDeleteController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Admin admin = new Admin();	
		AdminService adminService = new AdminService();
		
		int id = Integer.parseInt(req.getParameter("adminId"));
		
		adminService.deleteAdmin(id);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
		dispatcher.include(req, resp);
	}
}
