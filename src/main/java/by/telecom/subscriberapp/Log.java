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
 * @param id Уникальный номер лога
 * @param user Пользователь 
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
    
    public Log updateSubscriber(User user, String aName, 
            String aNameNew, String aAddress, String aAddressNew) {
        this.createLog(user, "Update");
        comment = commentConcat(comment, "ФИО: ", aName, aNameNew);
        comment = commentConcat(comment, "Адрес: ", aAddress, aAddressNew);
        return this;
    }
    
    public  Log updatePhone(User user, Subscriber subscriber, 
            String aNumber, String aNumberNew, 
            String aBand, String aBandNew,
            String aSecurity, String aSecurityNew,
            String aAdsl, String aAdslNew) {
        this.createLog(user, "Update");
        comment = comment.concat(subscriber.getName());
        comment = commentConcat(comment, "Номер: ", aNumber, aNumberNew);
        comment = commentConcat(comment, "Громполоса: ", aBand, aBandNew);
        comment = commentConcat(comment, "Защита: ", aSecurity, aSecurityNew);
        comment = commentConcat(comment, "ADSL: ", aAdsl, aAdslNew);
        return this;
    }
       
    public Log updateUser(User user, 
            String aLogin, String aLoginNew, 
            String aPassword, String aPasswordNew,
            String aName, String aNameNew,
            Integer aCategory, Integer aCategoryNew) {
        this.createLog(user, "Update");
        comment = commentConcat(comment, "Логин: ", aLogin, aLoginNew);
        comment = commentConcat(comment, "Пароль: ", aPassword, aPasswordNew);
        comment = commentConcat(comment, "Имя: ", aName, aNameNew);
        comment = commentConcat(comment, "Категория: ", aCategory.toString(), 
                aCategoryNew.toString());
        return this;
    }
    
    public Log createSubscriber(User user, String aName,
            String aAddress) {     
        return this.updateSubscriber(user, aName, "   ", aAddress, "   ");
    } 
    
    public  Log createUser(User user, String aLogin, 
            String aName, Integer aCategory) {
        return this.updateUser(user, aLogin, "   ", aName, "   ", "", "", -1, aCategory);
    }
    
    public  Log createPhone(User user, Subscriber subscriber, String aNumber, 
            String aBand, String aSecurity, String aAdsl) {
        return this.updatePhone(user, subscriber, aNumber, "   ", 
                aBand, "   ", aSecurity, "   ", aAdsl, "   ");
    }
    
    public Log deleteSubscriber(User user, String aName, String aAddress) {       
        return this.updateSubscriber(user, aName, "   ", aAddress, "   ");
    }
    
    public Log deletePhone(User user, Subscriber subscriber, String aNumber, 
            String aBand, String aSecurity, String aAdsl) {
        
        return this.updatePhone(user, subscriber, aNumber, "   ", 
                aBand, "   ", aSecurity, "   ", aAdsl, "   ");
    }
    
    public Log deleteUser(User user, String aLogin, 
                                String aName, Integer aCategory) {
        
        return this.updateUser(user, aLogin, "   ", aName, "   ", "", "", -1, aCategory);
    }
    
    public Log login(User user, 
            String remoteAddr) {
        this.createLog(user, "Login");
        comment = commentConcat(comment, "Ip адрес: ", remoteAddr, "   "); 
        return this;
    }
    
    public Log logout(User user, 
            String remoteAddr) {
        this.createLog(user, "Logout");
        comment = commentConcat(comment, "Ip адрес: ", remoteAddr, "   "); 
        return this;
    }
    
    public Log loginError(User user, 
            String remoteAddr) {
        this.createLog(user, "Login Error");
        comment = commentConcat(comment, "Ip адрес: ", remoteAddr, "   "); 
        return this;
    }
    
    private static String commentConcat(String aComment, String aType, 
            String aName, String aNameNew){
        if (!aName.equals(aNameNew)) {
            aComment = aComment.concat(aType)
                    .concat(aName)
                    .concat("--->")
                    .concat(aNameNew)
                    .concat("   ");
        }
        return aComment;
    }
    
    public Log createLog( User aUser, String aType){
        user = aUser;
        date = new Date();
        type = aType;
        comment = "";
        return this;
    }
}
