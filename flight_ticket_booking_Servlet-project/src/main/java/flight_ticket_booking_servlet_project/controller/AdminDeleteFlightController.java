package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flight_ticket_booking_servlet_project.service.AdminAddFlightService;
@SuppressWarnings("serial")
@WebServlet("/deleteFlight")
public class AdminDeleteFlightController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		AdminAddFlightService addFlightService = new AdminAddFlightService();
		
		addFlightService.updateFlightNumberByNull(Integer.parseInt(req.getParameter("flightNumber")));
		addFlightService.deleteFlight(Integer.parseInt(req.getParameter("flightNumber")));
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("admin-flight-detail.jsp");
		dispatcher.forward(req, resp);
	}
	
}
