package util;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webservice.WebServiceHelper;

/**
 * Servlet implementation class ChartQuery
 */
@WebServlet("/ChartQuery")
public class ChartQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChartQuery() {
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
		String type = request.getParameter("type");
		String stockCode = request.getParameter("stockCode");
		WebServiceHelper wsh = new WebServiceHelper();
		if("history".equals(type)){
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			GregorianCalendar date = new GregorianCalendar();
			String endDate = sdf.format(date.getTime());
			date.add(Calendar.YEAR, -5);
			String startDate = sdf.format(date.getTime());
			response.getWriter().println(wsh.getHistoryPrice(stockCode, startDate, endDate));
		}else if("realtime".equals(type)){
			response.getWriter().println(wsh.getTodayRealtime(stockCode));
		}
	}

}
