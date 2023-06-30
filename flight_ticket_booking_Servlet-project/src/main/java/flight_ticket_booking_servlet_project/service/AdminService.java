package flight_ticket_booking_servlet_project.service;

import java.util.List;

import flight_ticket_booking_servlet_project.dao.AdminDao;
import flight_ticket_booking_servlet_project.dto.Admin;

public class AdminService {

	AdminDao adminDao = new AdminDao();
	
	// Insert Admin------------------------------------------------------------------------
	public Admin insertAdmin(Admin admin) {
		return adminDao.insertAdmin(admin);
	}
	
	// delete Admin----------------------------------------------------------------
	public void deleteAdmin(int adminId) {
		adminDao.deleteAdmin(adminId);
	}	
		
	// Display method--------------------------------------------------------------
	public List<Admin> getAllAdmin(){
		return adminDao.getAllAdmin();
	}

	// getBy Email-----------------------------------------------------------------------
	public Admin getAdminByEmail(String email) {
		return adminDao.getAdminByEmail(email);
	}	
	
}
