/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp.model;

/**
 *
 * @author Family_P
 */
public class Subscriber {
    private Long id;
    private String name;
    private String address;
    
    public Subscriber(){
        
    }
    
    public Long getId(){
        return id;
    }
    
    public void setId(Long aId){
        id = aId;
    }
    
    public String getName(){
        return name;
    }
    
    public void setName(String aName){
        name = aName;
    }
    
    public String getAddress(){
        return address;
    }
    
    public void setAddress(String aAddress){
        address = aAddress;
    }
}
