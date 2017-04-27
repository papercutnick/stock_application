/**
 * WebService_IntServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package getData;

public class WebService_IntServiceLocator extends org.apache.axis.client.Service implements getData.WebService_IntService {

    public WebService_IntServiceLocator() {
    }


    public WebService_IntServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public WebService_IntServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for interact
    private java.lang.String interact_address = "http://54.148.123.99:8080/axis/services/interact";

    public java.lang.String getinteractAddress() {
        return interact_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String interactWSDDServiceName = "interact";

    public java.lang.String getinteractWSDDServiceName() {
        return interactWSDDServiceName;
    }

    public void setinteractWSDDServiceName(java.lang.String name) {
        interactWSDDServiceName = name;
    }

    public getData.WebService_Int getinteract() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(interact_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getinteract(endpoint);
    }

    public getData.WebService_Int getinteract(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            getData.InteractSoapBindingStub _stub = new getData.InteractSoapBindingStub(portAddress, this);
            _stub.setPortName(getinteractWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setinteractEndpointAddress(java.lang.String address) {
        interact_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (getData.WebService_Int.class.isAssignableFrom(serviceEndpointInterface)) {
                getData.InteractSoapBindingStub _stub = new getData.InteractSoapBindingStub(new java.net.URL(interact_address), this);
                _stub.setPortName(getinteractWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("interact".equals(inputPortName)) {
            return getinteract();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("urn:stock_service", "WebService_IntService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("urn:stock_service", "interact"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("interact".equals(portName)) {
            setinteractEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
