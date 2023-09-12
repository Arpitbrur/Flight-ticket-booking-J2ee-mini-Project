package flight_ticket_booking_servlet_project.service;

import flight_ticket_booking_servlet_project.dao.AdminAddFlightDao;
import flight_ticket_booking_servlet_project.dto.AdminAddFlight;

public class AdminAddFlightService {

	AdminAddFlightDao addFlightDao = new AdminAddFlightDao();
	
	// Insert flight-----------------------------------------------------------------------
	public AdminAddFlight saveAdminFlight(AdminAddFlight addFlight) {
		return addFlightDao.saveAdminFlight(addFlight);
	}
	
	// delete flight--------------------------------------------------------------------------
	public int deleteFlight(int flightNumber) {
		return addFlightDao.deleteFlight(flightNumber);
	}	
	
	// update flight------------------------------------------------------------------------------
	public int updateFlight(AdminAddFlight addFlight) {
		return addFlightDao.updateFlight(addFlight);
	}	
	
	// updateFlightNumberByNull----------------------------------------------------------------------
	public int updateFlightNumberByNull(int FlightNumber) {
		return addFlightDao.updateFlightNumberByNull(FlightNumber);
	}	
}
