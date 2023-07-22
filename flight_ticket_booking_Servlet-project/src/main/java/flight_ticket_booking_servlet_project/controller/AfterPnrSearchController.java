package flight_ticket_booking_servlet_project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/userPnr")
public class AfterPnrSearchController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession httpSession = req.getSession();
		int num1 = Integer.parseInt(req.getParameter("num1"));
		int num2 = Integer.parseInt(req.getParameter("num2"));
		int sum =  Integer.parseInt(req.getParameter("sum"));
		int sum2 = num1+num2;
		Long pnr = Long.parseLong(req.getParameter("pnr"));
		req.setAttribute("num1", num1);
		req.setAttribute("num2", num2);
		httpSession.setAttribute("pnr", pnr);
		if(sum==sum2)
		{
			RequestDispatcher dispatcher = req.getRequestDispatcher("user-flight-pnr.jsp");
			dispatcher.forward(req, resp);
		}else {
			
			req.setAttribute("msg", "Wrong captcha");
			RequestDispatcher dispatcher = req.getRequestDispatcher("user-pnr.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
