package flight_ticket_booking_servlet_project.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import flight_ticket_booking_servlet_project.connection.FlightConnection;
import flight_ticket_booking_servlet_project.dto.Admin;

public class AdminDao {

	Connection connection = FlightConnection.getFlightConnection();
	
	// Insert Admin------------------------------------------------------------------------
	public Admin insertAdmin(Admin admin) {
			
		String insert = "insert into admin (adminId, adminEmail, adminPassword) values(?,?,?)";
			
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(insert);
				
			preparedStatement.setInt(1, admin.getAdminId());
			preparedStatement.setString(2, admin.getAdminEmail());
			preparedStatement.setString(3, admin.getAdminPassword());
				
			preparedStatement.execute();
				
			return admin;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
			
	}
	
	// delete Admin----------------------------------------------------------------
	public void deleteAdmin(int adminId) {
		
		String delete = "delete from admin where adminId=?";
		
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(delete);
			
			preparedStatement.setInt(1, adminId);
			
			preparedStatement.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// Display method--------------------------------------------------------------
	public List<Admin> getAllAdmin(){
		String display = "SELECT * from admin";
	try {
		PreparedStatement preparedStatement = connection.prepareStatement(display);
		
		ResultSet resultset = preparedStatement.executeQuery();
		List<Admin> list = new ArrayList<Admin>();
		
		while(resultset.next()) {
			Admin admin = new Admin();
			admin.setAdminId(resultset.getInt("adminId"));
			admin.setAdminEmail(resultset.getString("adminEmail"));
			admin.setAdminPassword(resultset.getString("adminPassword"));
			list.add(admin);
		}
		
		return list;
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
	}
	
	
	// getBy Email-----------------------------------------------------------------------
	public Admin getAdminByEmail(String email) {
		List<Admin> admins = getAllAdmin();
		for (Admin admin : admins) 
		{
			if(email.equals(admin.getAdminEmail()))
			{
				return admin;
			}
		}
		return null;
	}
}
