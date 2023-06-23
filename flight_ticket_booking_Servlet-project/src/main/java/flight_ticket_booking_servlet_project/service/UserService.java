package flight_ticket_booking_servlet_project.service;

import flight_ticket_booking_servlet_project.dao.UserDao;
import flight_ticket_booking_servlet_project.dto.User;

public class UserService {

	UserDao dao = new UserDao();
	
	// Insert user------------------------------------------------------------------------------
	public User insertUser(User user) {
		return dao.insertUser(user);
		
	}
}
