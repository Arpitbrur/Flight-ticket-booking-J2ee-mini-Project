package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flight_ticket_booking_servlet_project.dto.Admin;
import flight_ticket_booking_servlet_project.service.AdminService;


@WebServlet("/adminInsert")
public class AdminInsertController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Admin admin = new Admin();
		
		int id = Integer.parseInt(req.getParameter("adminId"));
		String email = req.getParameter("adminEmail");
		String pass = req.getParameter("adminPassword");
		
		admin.setAdminId(id);
		admin.setAdminEmail(email);
		admin.setAdminPassword(pass);
		
		AdminService adminService = new AdminService();
		
//		System.out.println(id);
//		System.out.println(email);
//		System.out.println(pass);
//		
		adminService.insertAdmin(admin);
	}
}
