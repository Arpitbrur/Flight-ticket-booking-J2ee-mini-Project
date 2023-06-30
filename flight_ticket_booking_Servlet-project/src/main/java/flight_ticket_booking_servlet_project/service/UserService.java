package flight_ticket_booking_servlet_project.service;

import java.util.List;

import flight_ticket_booking_servlet_project.dao.UserDao;
import flight_ticket_booking_servlet_project.dto.User;

public class UserService {

	UserDao dao = new UserDao();
	
	// Insert user------------------------------------------------------------------------------
	public User insertUser(User user) {
		return dao.insertUser(user);
		
	}
	
	// User display----------------------------------------------------------------------------
	public List<User> displayAllUser(){
		return dao.displayAllUser();
	}	
	
	// getUserByEmail--------------------------------------------------------------------------------
	public User getUserByEmail(String email) {
		return dao.getUserByEmail(email);
	}
	
	// delete user----------------------------------------------------------------------------------
	public void deleteUser(int userId) {
		dao.deleteUser(userId);
	}	
}
