

package flight_ticket_booking_servlet_project.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class FlightConnection {

	public static Connection getFlightConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/flight_ticket_booking_servlet-project";
			String user = "root";
			String pass = "Arpit@123";
			
		Connection connection = DriverManager.getConnection(url,user,pass);
		
		if(connection != null) {
			return connection;
		}else {
			System.out.println("Check your url, user, pass");
		}
		
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
