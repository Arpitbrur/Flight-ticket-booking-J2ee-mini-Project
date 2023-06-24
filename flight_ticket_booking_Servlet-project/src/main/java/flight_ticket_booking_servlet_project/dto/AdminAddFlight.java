package flight_ticket_booking_servlet_project.dto;

import java.sql.Time;

public class AdminAddFlight {

	private int flightNumber ; 
	private String flightName;
	private String flightSource;			
	private String flightDestination ;
	private Time flightDepartureTime ;
	private Time flightArrivalTime ;
	private double flightEconomyPrice ;
	private double flightBusinessPrice ;
	
	public int getFlightNumber() {
		return flightNumber;
	}
	public void setFlightNumber(int flightNumber) {
		this.flightNumber = flightNumber;
	}
	public String getFlightName() {
		return flightName;
	}
	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}
	public String getFlightSource() {
		return flightSource;
	}
	public void setFlightSource(String flightSource) {
		this.flightSource = flightSource;
	}
	public String getFlightDestination() {
		return flightDestination;
	}
	public void setFlightDestination(String flightDestination) {
		this.flightDestination = flightDestination;
	}
	
	

	public Time getFlightDepartureTime() {
		return flightDepartureTime;
	}
	public void setFlightDepartureTime(Time flightDepartureTime) {
		this.flightDepartureTime = flightDepartureTime;
	}
	public Time getFlightArrivalTime() {
		return flightArrivalTime;
	}
	public void setFlightArrivalTime(Time flightArrivalTime) {
		this.flightArrivalTime = flightArrivalTime;
	}
	public double getFlightEconomyPrice() {
		return flightEconomyPrice;
	}
	public void setFlightEconomyPrice(double flightEconomyPrice) {
		this.flightEconomyPrice = flightEconomyPrice;
	}
	public double getFlightBusinessPrice() {
		return flightBusinessPrice;
	}
	public void setFlightBusinessPrice(double flightBusinessPrice) {
		this.flightBusinessPrice = flightBusinessPrice;
	}
	
	
}
