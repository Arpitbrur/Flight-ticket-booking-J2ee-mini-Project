package flight_ticket_booking_servlet_project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import flight_ticket_booking_servlet_project.connection.FlightConnection;
import flight_ticket_booking_servlet_project.dto.User;

public class UserDao {

	Connection connection = FlightConnection.getFlightConnection();
	
	// Insert user------------------------------------------------------------------------------
	public User insertUser(User user) {
		
		String insert = "insert into user (userName,userEmail, userPassword) values(?,?,?)";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(insert);
			preparedStatement.setString(1, user.getUserName());
			preparedStatement.setString(2, user.getUserEmail());
			preparedStatement.setString(3, user.getUserPassword());
			
			preparedStatement.execute();
			return user;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
	// User display----------------------------------------------------------------------------
	public List<User> displayAllUser(){
		String displayUser = "SELECT * from user";
		List<User> users = new ArrayList<User>();
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(displayUser);
			
		ResultSet resultSet =	preparedStatement.executeQuery();
		
		while (resultSet.next()) {
			User user = new User();
			
			user.setUserId(resultSet.getInt("userId"));
			user.setUserName(resultSet.getString("userName"));
			user.setUserEmail(resultSet.getString("userEmail"));
			user.setUserPassword(resultSet.getString("userPassword"));
			
			users.add(user);
		}
		return users;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
	
	// getUserByEmail--------------------------------------------------------------------------------
	public User getUserByEmail(String email) {
		
		List<User> users = displayAllUser();
	
	for (User user : users) {
		if(email.equals(user.getUserEmail())){
			return user;
		}
	}
	return null;
	}
	
	// delete user----------------------------------------------------------------------------------
	public void deleteUser(int userId) {
		
		connection = FlightConnection.getFlightConnection();
		
		String delete ="delete from user where userId=?";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(delete);
			preparedStatement.setInt(1, userId);
			
			preparedStatement.execute();
			
			System.out.println("Data deleted Successfully......");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
