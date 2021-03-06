/*
 * Created on 18 ���� 2015 ( Time 10:36:32 )
 * Generated by Telosys Tools Generator ( version 2.1.1 )
 */
package com.mmm.bean;

import java.io.Serializable;

import javax.validation.constraints.*;

import java.util.Date;

public class BizProductImage implements Serializable {

    private static final long serialVersionUID = 1L;

    //----------------------------------------------------------------------
    // ENTITY PRIMARY KEY ( BASED ON A SINGLE FIELD )
    //----------------------------------------------------------------------
    @NotNull
    @Size( min = 1, max = 32 )
    private String sysId;

    //----------------------------------------------------------------------
    // ENTITY DATA FIELDS 
    //----------------------------------------------------------------------    
    @Size( max = 40 )
    private String sysUpdatedBy;


    private Date sysUpdatedOn;

    @Size( max = 40 )
    private String sysCreatedBy;


    private Date sysCreatedOn;

    @Size( max = 32 )
    private String sysDomain;


    private Boolean active;

    @NotNull
    @Size( min = 1, max = 32 )
    private String productId;

    @NotNull
    @Size( min = 1, max = 255 )
    private String url;

    @NotNull
    private Integer sequence;



    //----------------------------------------------------------------------
    // GETTER & SETTER FOR THE KEY FIELD
    //----------------------------------------------------------------------
    public void setSysId( String sysId ) {
        this.sysId = sysId ;
    }

    public String getSysId() {
        return this.sysId;
    }


    //----------------------------------------------------------------------
    // GETTERS & SETTERS FOR FIELDS
    //----------------------------------------------------------------------
    public void setSysUpdatedBy( String sysUpdatedBy ) {
        this.sysUpdatedBy = sysUpdatedBy;
    }
    public String getSysUpdatedBy() {
        return this.sysUpdatedBy;
    }

    public void setSysUpdatedOn( Date sysUpdatedOn ) {
        this.sysUpdatedOn = sysUpdatedOn;
    }
    public Date getSysUpdatedOn() {
        return this.sysUpdatedOn;
    }

    public void setSysCreatedBy( String sysCreatedBy ) {
        this.sysCreatedBy = sysCreatedBy;
    }
    public String getSysCreatedBy() {
        return this.sysCreatedBy;
    }

    public void setSysCreatedOn( Date sysCreatedOn ) {
        this.sysCreatedOn = sysCreatedOn;
    }
    public Date getSysCreatedOn() {
        return this.sysCreatedOn;
    }

    public void setSysDomain( String sysDomain ) {
        this.sysDomain = sysDomain;
    }
    public String getSysDomain() {
        return this.sysDomain;
    }

    public void setActive( Boolean active ) {
        this.active = active;
    }
    public Boolean getActive() {
        return this.active;
    }

    public void setProductId( String productId ) {
        this.productId = productId;
    }
    public String getProductId() {
        return this.productId;
    }

    public void setUrl( String url ) {
        this.url = url;
    }
    public String getUrl() {
        return this.url;
    }

    public void setSequence( Integer sequence ) {
        this.sequence = sequence;
    }
    public Integer getSequence() {
        return this.sequence;
    }


    //----------------------------------------------------------------------
    // toString METHOD
    //----------------------------------------------------------------------
 
        public String toString() { 
        StringBuffer sb = new StringBuffer(); 
        sb.append(sysId);
        sb.append("|");
        sb.append(sysUpdatedBy);
        sb.append("|");
        sb.append(sysUpdatedOn);
        sb.append("|");
        sb.append(sysCreatedBy);
        sb.append("|");
        sb.append(sysCreatedOn);
        sb.append("|");
        sb.append(sysDomain);
        sb.append("|");
        sb.append(active);
        sb.append("|");
        sb.append(productId);
        sb.append("|");
        sb.append(url);
        sb.append("|");
        sb.append(sequence);
        return sb.toString(); 
    } 


}
