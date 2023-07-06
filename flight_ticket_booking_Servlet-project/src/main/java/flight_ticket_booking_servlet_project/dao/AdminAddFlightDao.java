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
				
				addFlight.setFlightNumber(resultSet.getInt("flightNumber"));
				addFlight.setFlightName(resultSet.getString("flightName"));
				addFlight.setFlightSource(resultSet.getString("flightSource"));
				addFlight.setFlightDestination(resultSet.getString("flightDestination"));
				addFlight.setFlightDepartureTime(resultSet.getTime("flightDepartureTime"));
				addFlight.setFlightArrivalTime(resultSet.getTime("flightArrivalTime"));
				addFlight.setFlightEconomyPrice(resultSet.getDouble("flightEconomyPrice"));
				addFlight.setFlightBusinessPrice(resultSet.getDouble("flightBusinessPrice"));
			
				addFlights.add(addFlight);
			}
	
			return addFlights;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
	// delete flight--------------------------------------------------------------------------
	public int deleteFlight(int flightNumber) {
		String query = "Delete from flightdetails where flightNumber=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, flightNumber);
			return preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	
	// update flight------------------------------------------------------------------------------
	public int updateFlight(AdminAddFlight addFlight) {
		String query = "Update flightdetails set flightNumber=?, flightSource=?, flightDestination=?, flightDepartureTime=?, flightArrivalTime=?, flightEconomyPrice=?, flightBusinessPrice=?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, addFlight.getFlightName());
			preparedStatement.setString(2, addFlight.getFlightSource());
			preparedStatement.setString(3, addFlight.getFlightDestination());
			preparedStatement.setTime(4, addFlight.getFlightDepartureTime());
			preparedStatement.setTime(5, addFlight.getFlightArrivalTime());
			preparedStatement.setDouble(6, addFlight.getFlightEconomyPrice());
			preparedStatement.setDouble(7, addFlight.getFlightBusinessPrice());
			
			return preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	} 
	
	
	//get flightBy SourceToDestination------------------------------------------------------------
	public List<AdminAddFlight> getFlightBySourceToDestination(String Source, String Destination){
		
		List<AdminAddFlight> addFlights = getAllFlight();
		List<AdminAddFlight> filterFlightDetails = new ArrayList<AdminAddFlight>();
		
		for(AdminAddFlight adminaAddFlight: addFlights) {
			if((adminaAddFlight.getFlightSource().equalsIgnoreCase(Source)) && adminaAddFlight.getFlightDestination().equalsIgnoreCase(Destination)) {
				
				filterFlightDetails.add(adminaAddFlight);
			}
		}
		return filterFlightDetails;
	}
}
