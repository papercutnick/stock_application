package webservice;

import java.rmi.RemoteException;

import javax.xml.rpc.ServiceException;

import getData.WebService_Int;
import getData.WebService_IntService;
import getData.WebService_IntServiceLocator;

public class WebServiceHelper {
		WebService_Int wi;
		
		public WebServiceHelper(){
			WebService_IntService wis = new WebService_IntServiceLocator();
			try {
				wi = wis.getinteract();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				wi=null;
			}
		}
		
		//Show the list of all companies in the database along with their latest stock price (real time latest stock price)
		public String getAllLatestPrice(){
			try {
				return wi.getAllLatestPrice();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return e.getMessage();
			}
		}
		
		//Get the highest stock price of any company in the last ten days.
		public String getHighestPriceInTenDays(String stockCode){
			try {
				return wi.getHighestPriceInTenDays(stockCode);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return e.getMessage();
			}
		}
		
		//Average stock price of any company in the latest one year.
		public String getAvgPriceInOneYear(String stockCode){
			try {
				return wi.getAvgPriceInOneYear(stockCode);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return e.getMessage();
			}
		}
		
		//Lowest stock price for any company in the latest one year.
		public String getLowestPriceInOneYear(String stockCode){
			try {
				return wi.getLowestPriceInOneYear(stockCode);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return e.getMessage();
			}
		}
		
		//List the ids of companies along with their name who have the average stock price lesser than the lowest of
		//any of the Selected Company in the latest one year.
		public String getNamesHaveLowerAvgThan(String stockCode){
			try {
				return wi.getNamesHaveLowerAvgThan(stockCode);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return e.getMessage();
			}
		}
		
		//get real time data
		public String getTodayRealtime(String stockCode){
			try {
				return wi.getTodayRealtime(stockCode);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return e.getMessage();
			}
		}
		
		//get real time data
		public String getHistoryPrice(String stockCode, String startDate, String endDate){
			try {
				return wi.getHistoryPrice(stockCode, startDate, endDate);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return e.getMessage();
			}
		}
		
		//get prediction
		public String predictNext_Indicator(String stockCode, String method, String flag){
			try {
				return wi.predictNext_Indicator(stockCode, method, flag);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return e.getMessage();
			}
		}
}
