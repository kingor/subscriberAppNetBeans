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
    
    public static Log updateSubscriber(User user, String aName, 
            String aNameNew, String aAddress, String aAddressNew) {
        String comment = "";
        Log log = new Log();
        log.createLog(log, user, "Update");
        if (!aName.equals(aNameNew)) {
            comment = comment.concat("ФИО: ")
                    .concat(aName)
                    .concat("--->")
                    .concat(aNameNew)
                    .concat("   ");

        }
        if (!aAddress.equals(aAddressNew)) {
            comment = comment.concat("Адрес: ")
                    .concat(aAddress)
                    .concat("--->")
                    .concat(aAddressNew)
                    .concat("   ");
        }
        log.setComment(comment);
        return log;
    }
    
    public static Log updatePhone(User user, Subscriber subscriber, 
            String aNumber, String aNumberNew, 
            String aBand, String aBandNew,
            String aSecurity, String aSecurityNew,
            String aAdsl, String aAdslNew) {
        String comment = "Абонент: ";
        Log log = new Log();
        log.createLog(log, user, "Update");
        comment = comment.concat(subscriber.getName());
        comment = log.commentConcat(comment, "Номер: ", aNumber, aNumberNew);
        comment = log.commentConcat(comment, "Громполоса: ", aBand, aBandNew);
        comment = log.commentConcat(comment, "Защита: ", aSecurity, aSecurityNew);
        comment = log.commentConcat(comment, "ADSL: ", aAdsl, aAdslNew);

        log.setComment(comment);
        return log;
    }
    
    public static Log createSubscriber(User user, String aName, 
            String aAddress) {
        String comment = "";
        Log log = new Log();
        log.createLog(log, user, "Create");
        comment = comment.concat("ФИО: ")
                .concat(aName)
                .concat("   ");

        comment = comment.concat("Адрес: ")
                .concat(aAddress)
                .concat("   ");
        log.setComment(comment);
        return log;
    }
    
    public static Log createUser(User user, String aLogin, 
            String aName, Integer aCategory) {
        String comment = "";
        Log log = new Log();
        log.createLog(log, user, "Create");
        comment = comment.concat("Логин: ")
                .concat(aLogin)
                .concat("   ");

        comment = comment.concat("Имя: ")
                .concat(aName)
                .concat("   ");
        
        comment = comment.concat("Категория: ")
                .concat(aCategory.toString())
                .concat("   ");
        log.setComment(comment);
        return log;
    }
    
    public static Log updateUser(User user, 
            String aLogin, String aLoginNew, 
            String aPassword, String aPasswordNew,
            String aName, String aNameNew,
            Integer aCategory, Integer aCategoryNew) {
        String comment = "";
        Log log = new Log();
        log.createLog(log, user, "Update");
        comment = log.commentConcat(comment, "Логин: ", aLogin, aLoginNew);
        comment = log.commentConcat(comment, "Пароль: ", aPassword, aPasswordNew);
        comment = log.commentConcat(comment, "Имя: ", aName, aNameNew);
        comment = log.commentConcat(comment, "Категория: ", aCategory.toString(), aCategoryNew.toString());
        
        log.setComment(comment);
        return log;
    }
    
    public static Log deleteUser(User user, String aLogin, 
                                String aName, Integer aCategory) {
        String comment = "";
        Log log = new Log();
        log.createLog(log, user, "Delete");
        comment = log.commentConcat(comment, "Логин: ", aLogin, "");
        comment = log.commentConcat(comment, "Имя: ", aName, "");
        comment = log.commentConcat(comment, "Категория: ", 
                aCategory.toString(), "");
        
        log.setComment(comment);
        return log;
    }
    
    private String commentConcat(String aComment, String aType, 
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
    
    public Log createLog(Log log, User user, String type){
        log.setUser(user);
        log.setDate(new Date());
        log.setType(type);
        return log;
    }
}
