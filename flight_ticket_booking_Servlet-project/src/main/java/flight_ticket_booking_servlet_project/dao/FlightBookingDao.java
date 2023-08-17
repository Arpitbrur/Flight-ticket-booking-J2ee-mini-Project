package flight_ticket_booking_servlet_project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import flight_ticket_booking_servlet_project.connection.FlightConnection;
import flight_ticket_booking_servlet_project.dto.FlightBookingDetails;

public class FlightBookingDao {

	Connection connection =FlightConnection.getFlightConnection();
	
	public FlightBookingDetails saveBookingDetails(FlightBookingDetails bookingDetails) {
		
		String insertQuery = "insert into flightbookdetails values(?,?,?,?,?,?,?,?,?)";

		try {
			PreparedStatement preparedStatement = connection.prepareStatement(insertQuery);
			
			preparedStatement.setLong(1, bookingDetails.getPnr());
			preparedStatement.setString(2, bookingDetails.getName());
			preparedStatement.setString(3, bookingDetails.getEmail());
			preparedStatement.setLong(4, bookingDetails.getPhone());
			preparedStatement.setInt(5, bookingDetails.getAge());
			preparedStatement.setString(6, bookingDetails.getGender());
			preparedStatement.setDouble(7, bookingDetails.getPrice());
			preparedStatement.setInt(8, bookingDetails.getFlightNumber());
			preparedStatement.setString(9, bookingDetails.getUserEmail());

			preparedStatement.execute();
			
			return bookingDetails;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	/*
	 * getBookedflightBypnr
	 */
	public FlightBookingDetails getBookedflightBypnr(Long pnr)
	{
		String query = "select * from flightbookdetails where pnr = ?";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(query);
			preparedStatement.setLong(1, pnr);
			ResultSet resultSet = preparedStatement.executeQuery();
			FlightBookingDetails bookingDetails = new FlightBookingDetails();
			while(resultSet.next())
			{
				bookingDetails.setPnr(resultSet.getLong("pnr"));
				bookingDetails.setName(resultSet.getString("name"));
				bookingDetails.setEmail(resultSet.getString("email"));
				bookingDetails.setPhone(resultSet.getLong("phone"));
				bookingDetails.setAge(resultSet.getInt("age"));
				bookingDetails.setGender(resultSet.getString("gender"));
				bookingDetails.setPrice(resultSet.getDouble("price"));
				bookingDetails.setFlightNumber(resultSet.getInt("flightNumber"));
				bookingDetails.setUserEmail(resultSet.getString("user_email"));
			}
			return bookingDetails;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
}
