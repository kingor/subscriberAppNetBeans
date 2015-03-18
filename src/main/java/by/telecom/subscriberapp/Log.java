/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp;

import by.telecom.subscriberapp.Subscriber;
import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author ASUP8
 */
public class Log implements Serializable {
    private Long id;
    private User user;
    private Date date;
    private String type;
    private String comment;
    
    public Long getId(){
        return id;
    }
    
    public void setId(Long aId){
        id = aId;
    }  
 
    public User getUser(){
        return user;
    }
    
    public void setUser(User aUser){
        user = aUser;
    }
    
    public Date getDate(){
        return date;
    }
    
    public void setDate(Date aDate){
        date = aDate;
    }
    
    public String getType(){
        return type;
    }
    
    public void setType(String aType){
        type = aType;
    }
    
    public String getComment(){
        return comment;
    }
    
    public void setComment(String aComment){
        comment = aComment;
    }
    
    public void updateSubscriber(String aName, String aNameNew, String aAddress, String aAddressNew){
        if(!aName.equals(aNameNew))
            {
                comment = comment.concat("ФИО: ")
                        .concat(aName)
                        .concat("--->")
                        .concat(aNameNew)
                        .concat("   ");

            }
            if(!aAddress.equals(aAddressNew))
            {
                comment = comment.concat("Адрес: ")
                        .concat(aAddress)
                        .concat("--->")
                        .concat(aAddressNew)
                        .concat("   ");
            }
    }
}
