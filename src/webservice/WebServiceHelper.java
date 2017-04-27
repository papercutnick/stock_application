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
		
		public String getLatestPrice(String id){
			try {
				return wi.getLatestPrice(id);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return e.getMessage();
			}
		}
}
