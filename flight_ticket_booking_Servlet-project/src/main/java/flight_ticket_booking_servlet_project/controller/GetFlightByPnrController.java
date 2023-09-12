package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@SuppressWarnings("serial")
@WebServlet(value="/pnrClass")
public class GetFlightByPnrController extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int num1 = (int) (Math.floor(Math.random()*90)+10);
		int num2 = (int) (Math.floor(Math.random()*90)+10);
		
		req.setAttribute("num1", num1);
		req.setAttribute("num2", num2);
		RequestDispatcher dispatcher = req.getRequestDispatcher("user-pnr.jsp");
		dispatcher.forward(req, resp);
	}
}
