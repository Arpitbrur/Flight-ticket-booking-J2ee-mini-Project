package flight_ticket_booking_servlet_project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import flight_ticket_booking_servlet_project.connection.FlightConnection;
import flight_ticket_booking_servlet_project.dto.User;

public class UserDao {

	Connection connection = FlightConnection.getFlightConnection();
	
	// Insert user------------------------------------------------------------------------------
	public User insertUser(User user) {
		
		String insert = "insert into user values(name,email,password) values(?,?,?)";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(insert);
			preparedStatement.setString(1, user.getUserName());
			preparedStatement.setString(1, user.getUserEmail());
			preparedStatement.setString(1, user.getUserPassword());
			
			preparedStatement.execute();
			return user;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
}
