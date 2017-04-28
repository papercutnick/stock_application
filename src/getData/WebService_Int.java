/**
 * WebService_Int.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package getData;

public interface WebService_Int extends java.rmi.Remote {
    public java.lang.String getTodayRealtime(java.lang.String in0) throws java.rmi.RemoteException;
    public java.lang.String getLatestPrice(java.lang.String in0) throws java.rmi.RemoteException;
    public java.lang.String getAvgPriceInOneYear(java.lang.String in0) throws java.rmi.RemoteException;
    public java.lang.String getHighestPriceInTenDays(java.lang.String in0) throws java.rmi.RemoteException;
    public java.lang.String getNamesHaveLowerAvgThan(java.lang.String in0) throws java.rmi.RemoteException;
    public java.lang.String predictNext_Indicator(java.lang.String in0, java.lang.String in1, java.lang.String in2) throws java.rmi.RemoteException;
    public java.lang.String getHistoryPrice(java.lang.String in0, java.lang.String in1, java.lang.String in2) throws java.rmi.RemoteException;
    public java.lang.String getAllLatestPrice() throws java.rmi.RemoteException;
    public java.lang.String getLowestPriceInOneYear(java.lang.String in0) throws java.rmi.RemoteException;
}
