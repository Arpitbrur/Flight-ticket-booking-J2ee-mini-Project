package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flight_ticket_booking_servlet_project.dao.AdminAddFlightDao;
import flight_ticket_booking_servlet_project.dto.AdminAddFlight;
import flight_ticket_booking_servlet_project.service.AdminAddFlightService;

@SuppressWarnings("serial")
@WebServlet("/admin-edit-flight")
public class AdminUpdateFlightController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int flightNumber = Integer.parseInt(req.getParameter("flightNumber"));
		String flightName = req.getParameter("flightName");
		String source = req.getParameter("source");
		String destination = req.getParameter("destination");
		String depTime = req.getParameter("departure-time");
		String arrTime = req.getParameter("arrival-time");
		double ecoTicketPrice = Double.parseDouble(req.getParameter("ticketEconomyPrice"));
		double bussTicketPrice = Double.parseDouble(req.getParameter("ticketBusinessPrice"));
		
		AdminAddFlight addFlight = new AdminAddFlight();
		
		DateFormat dateFormat = new SimpleDateFormat("HH:mm");
		Time time =null;
		Time time2 = null;
		
		try {
			time = new Time(dateFormat.parse(depTime).getTime());
			time2 = new Time(dateFormat.parse(arrTime).getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
		
		List<AdminAddFlight> addFlights = new ArrayList<AdminAddFlight>();
		addFlights = addFlightDao.getAllFlight();
		
		for (AdminAddFlight adminAddFlight : addFlights) {
			
			if(adminAddFlight.getFlightNumber()!= flightNumber) {
				addFlight.setFlightNumber(flightNumber);
			}else {
				req.setAttribute("flightNumber", "Flight Number is already present");
			}
		}
		
		addFlight.setFlightName(flightName);
		addFlight.setFlightSource(source);
		addFlight.setFlightDestination(destination);
		addFlight.setFlightDepartureTime(time);
		addFlight.setFlightArrivalTime(time2);
		addFlight.setFlightEconomyPrice(ecoTicketPrice);
		addFlight.setFlightBusinessPrice(bussTicketPrice);
		
		AdminAddFlightService addFlightService = new AdminAddFlightService();
		
		addFlightService.updateFlight(addFlight);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("admin-flight-detail.jsp");
		dispatcher.forward(req, resp);
		
	}
}
