package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flight_ticket_booking_servlet_project.dto.AdminAddFlight;
import flight_ticket_booking_servlet_project.service.AdminAddFlightService;

@WebServlet("/admin-add-flight")
public class AdminAddFlightController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		AdminAddFlight addFlight = new AdminAddFlight();
		AdminAddFlightService addFlightService = new AdminAddFlightService();

		int flightNumber = Integer.parseInt(req.getParameter("flightNumber"));
		String flightName = req.getParameter("flightName");
		String flightSource = req.getParameter("source");
		String flightDestination = req.getParameter("destination");
		String flightDepartureTime = req.getParameter("departure-time");
		String flightArrivalTime = req.getParameter("arrival-time");
		double flightEconomyPrice = Double.parseDouble(req.getParameter("ticketEconomyPrice"));
		double flightBusinessPrice = Double.parseDouble(req.getParameter("ticketBusinessPrice"));
//		String ticketClass = req.getParameter("ticketType");
		
		DateFormat dateFormat = new SimpleDateFormat("HH:mm");
		Time time = null;
		Time time2 = null;
		
		try {
			time = new Time(dateFormat.parse(flightDepartureTime).getTime());
			time2 = new Time(dateFormat.parse(flightArrivalTime).getTime());

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		addFlight.setFlightNumber(flightNumber);
		addFlight.setFlightName(flightName);
		addFlight.setFlightSource(flightSource);
		addFlight.setFlightDestination(flightDestination);
		addFlight.setFlightDepartureTime(time);
		addFlight.setFlightArrivalTime(time2);
		addFlight.setFlightEconomyPrice(flightEconomyPrice);
		addFlight.setFlightBusinessPrice(flightBusinessPrice);
		
		addFlightService.saveAdminFlight(addFlight);
		
		
		
//		System.out.println("flightNumber:- "+flightNumber);
//		System.out.println("flightName:- "	+flightName);	
//		System.out.println("flightSource:- "+flightSource);
//		System.out.println("flightDestination:- "+flightDestination);
//		System.out.println("departureTime:- "+departureTime);
//		System.out.println("arrivalTime:- "+arrivalTime);
//		System.out.println("flightTicketprice:- "+flightEconomyPrice);
//		System.out.println("flightTicketprice:- "+flightBusinessPrice);
//		System.out.println("ticketClass:- "+ticketClass);
		
		
		
	}
}