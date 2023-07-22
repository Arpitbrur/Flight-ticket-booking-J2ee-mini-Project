package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import flight_ticket_booking_servlet_project.dao.FlightBookingDao;
import flight_ticket_booking_servlet_project.dto.FlightBookingDetails;

@SuppressWarnings("serial")
@WebServlet("/flightBooking")
public class FlightBookingController extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		FlightBookingDetails bookingDetails = new FlightBookingDetails();
		
		FlightBookingDao bookingDao = new FlightBookingDao();
		
		long pnr = (long) Math.floor(Math.random() * 9000000000L) + 1000000000L;
		
		long phone = (long) Math.floor(Long.parseLong(req.getParameter("phone")));
		
		bookingDetails.setPnr(pnr);
		bookingDetails.setName(req.getParameter("name"));
		bookingDetails.setEmail(req.getParameter("email"));
		bookingDetails.setEmail(req.getParameter("email"));
		bookingDetails.setAge(Integer.parseInt(req.getParameter("age")));
		bookingDetails.setGender(req.getParameter("gender"));
		bookingDetails.setPhone(phone);
		bookingDetails.setPrice(Double.parseDouble(req.getParameter("price")));
		bookingDetails.setFlightNumber(Integer.parseInt(req.getParameter("number")));
		
		req.setAttribute("pnr", pnr);
		FlightBookingDetails details = bookingDao.saveBookingDetails(bookingDetails);
		
		if(details!=null)
		{
			RequestDispatcher dispatcher = req.getRequestDispatcher("user-flight-display.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
