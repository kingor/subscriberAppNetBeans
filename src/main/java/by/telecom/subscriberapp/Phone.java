/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp;

import by.telecom.subscriberapp.Subscriber;

/**
 *
 * @author Family_P
 */
public class Phone {
    private Long id;
    private Subscriber subscriber;
    private String number;
    private String security;
    private String adsl;
    
    public Long getId(){
        return id;
    }
    
    public void setId(Long aId){
        id = aId;
    }
    
    public String getNumber(){
        return number;
    }
    
    public void setNumber(String aNumber){
        number= aNumber;
    }
    
    public String getSecurity(){
        return security;
    }
    
    public void setSecurity(String aSecurity){
        security = aSecurity;
    }
    
    public String getAdsl(){
        return adsl;
    }
    
    public void setAdsl(String aAdsl){
        adsl = aAdsl;
    }
    
    public Subscriber getSubscriber(){
        return subscriber;
    }
    
    public void setSubscriber(Subscriber aSubscriber) {
        subscriber = aSubscriber;
    }
}
