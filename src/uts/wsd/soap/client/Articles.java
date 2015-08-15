/**
 * Articles.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package uts.wsd.soap.client;

public class Articles  implements java.io.Serializable {
    private int nextPossibleId;

    private uts.wsd.soap.client.Article[] articles;

    public Articles() {
    }

    public Articles(
           int nextPossibleId,
           uts.wsd.soap.client.Article[] articles) {
           this.nextPossibleId = nextPossibleId;
           this.articles = articles;
    }


    /**
     * Gets the nextPossibleId value for this Articles.
     * 
     * @return nextPossibleId
     */
    public int getNextPossibleId() {
        return nextPossibleId;
    }


    /**
     * Sets the nextPossibleId value for this Articles.
     * 
     * @param nextPossibleId
     */
    public void setNextPossibleId(int nextPossibleId) {
        this.nextPossibleId = nextPossibleId;
    }


    /**
     * Gets the articles value for this Articles.
     * 
     * @return articles
     */
    public uts.wsd.soap.client.Article[] getArticles() {
        return articles;
    }


    /**
     * Sets the articles value for this Articles.
     * 
     * @param articles
     */
    public void setArticles(uts.wsd.soap.client.Article[] articles) {
        this.articles = articles;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Articles)) return false;
        Articles other = (Articles) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            this.nextPossibleId == other.getNextPossibleId() &&
            ((this.articles==null && other.getArticles()==null) || 
             (this.articles!=null &&
              java.util.Arrays.equals(this.articles, other.getArticles())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        _hashCode += getNextPossibleId();
        if (getArticles() != null) {
            for (int i=0;
                 i<java.lang.reflect.Array.getLength(getArticles());
                 i++) {
                java.lang.Object obj = java.lang.reflect.Array.get(getArticles(), i);
                if (obj != null &&
                    !obj.getClass().isArray()) {
                    _hashCode += obj.hashCode();
                }
            }
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Articles.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://soap.wsd.uts/", "articles"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("nextPossibleId");
        elemField.setXmlName(new javax.xml.namespace.QName("", "nextPossibleId"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("articles");
        elemField.setXmlName(new javax.xml.namespace.QName("", "articles"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://soap.wsd.uts/", "article"));
        elemField.setMinOccurs(0);
        elemField.setNillable(false);
        elemField.setItemQName(new javax.xml.namespace.QName("", "article"));
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
