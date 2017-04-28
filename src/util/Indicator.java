package util;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webservice.WebServiceHelper;

/**
 * Servlet implementation class Indicator
 */
@WebServlet("/Indicator")
public class Indicator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Indicator() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String stockCode = request.getParameter("stockCode");
		String indicatorType = request.getParameter("indicatorType");
		String interval = request.getParameter("interval");
		WebServiceHelper wsh = new WebServiceHelper();
		String result=wsh.predictNext_Indicator(stockCode, indicatorType, interval);
		
		response.getWriter().println(result);
	}

}
