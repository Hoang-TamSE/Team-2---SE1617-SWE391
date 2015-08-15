package uts.wsd.soap.client;

public class NewsServiceSOAPProxy implements uts.wsd.soap.client.NewsServiceSOAP {
  private String _endpoint = null;
  private uts.wsd.soap.client.NewsServiceSOAP newsServiceSOAP = null;
  
  public NewsServiceSOAPProxy() {
    _initNewsServiceSOAPProxy();
  }
  
  public NewsServiceSOAPProxy(String endpoint) {
    _endpoint = endpoint;
    _initNewsServiceSOAPProxy();
  }
  
  private void _initNewsServiceSOAPProxy() {
    try {
      newsServiceSOAP = (new uts.wsd.soap.client.NewsServiceSOAPServiceLocator()).getNewsServiceSOAPPort();
      if (newsServiceSOAP != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)newsServiceSOAP)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)newsServiceSOAP)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (newsServiceSOAP != null)
      ((javax.xml.rpc.Stub)newsServiceSOAP)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public uts.wsd.soap.client.NewsServiceSOAP getNewsServiceSOAP() {
    if (newsServiceSOAP == null)
      _initNewsServiceSOAPProxy();
    return newsServiceSOAP;
  }
  
  public uts.wsd.soap.client.Articles getArticles() throws java.rmi.RemoteException{
    if (newsServiceSOAP == null)
      _initNewsServiceSOAPProxy();
    return newsServiceSOAP.getArticles();
  }
  
  public uts.wsd.soap.client.Article deleteArticle(long arg0) throws java.rmi.RemoteException{
    if (newsServiceSOAP == null)
      _initNewsServiceSOAPProxy();
    return newsServiceSOAP.deleteArticle(arg0);
  }
  
  
}