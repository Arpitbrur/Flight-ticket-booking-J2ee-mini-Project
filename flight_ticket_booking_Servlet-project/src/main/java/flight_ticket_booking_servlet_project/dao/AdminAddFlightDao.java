package flight_ticket_booking_servlet_project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import flight_ticket_booking_servlet_project.connection.FlightConnection;
import flight_ticket_booking_servlet_project.dto.AdminAddFlight;

public class AdminAddFlightDao {

	Connection connection = FlightConnection.getFlightConnection();
	
	// Insert flight-----------------------------------------------------------------------
	public AdminAddFlight saveAdminFlight(AdminAddFlight addFlight) {
		
		String addFlightQuery = "insert into flightDetails values(?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(addFlightQuery);
			
			preparedStatement.setInt(1, addFlight.getFlightNumber());
			preparedStatement.setString(2, addFlight.getFlightName());
			preparedStatement.setString(3, addFlight.getFlightSource());
			preparedStatement.setString(4, addFlight.getFlightDestination());
			preparedStatement.setTime(5, addFlight.getFlightDepartureTime());
			preparedStatement.setTime(6, addFlight.getFlightArrivalTime());
			preparedStatement.setDouble(7, addFlight.getFlightEconomyPrice());
			preparedStatement.setDouble(8, addFlight.getFlightBusinessPrice());
			
			preparedStatement.execute();
			return addFlight;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return null;
	}
	
	// display All flight-------------------------------------------------------------------
	public List<AdminAddFlight> getAllFlight(){
		
		String query = "SELECT * from flightdetails";
		
		List<AdminAddFlight> addFlights = new ArrayList<AdminAddFlight>();
		
		try {
			 PreparedStatement preparedStatement = connection.prepareStatement(query);
			 
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				AdminAddFlight addFlight = new AdminAddFlight();
				
				addFlight.setFlightNumber(resultSet.getInt(""));
				addFlight.setFlightSource(resultSet.getString(""));
				addFlight.setFlightDestination(resultSet.getString(""));
				addFlight.setFlightArrivalTime(resultSet.getTime(""));
				addFlight.setFlightDepartureTime(resultSet.getTime(""));
				addFlight.setFlightEconomyPrice(resultSet.getDouble(""));
				addFlight.setFlightBusinessPrice(resultSet.getDouble(""));
			
				addFlights.add(addFlight);
			}
	
			return addFlights;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
}
