/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package by.telecom.subscriberapp.model;

/**
 *
 * @author ASUP8
 */
public class User {
    private Long id;
    private String login;
    private String password;
    private String name;
    private Integer category;
    
    public User() {
    
    }
    
    public Long getId(){
        return id;
    }
    
    public void setId(Long aId){
        id = aId;
    }
    
    public String getLogin(){
        return login;
    }
    
    public void setLogin(String aLogin){
        login = aLogin;
    }
    
    public String getPassword(){
        return password;
    }
    
    public void setPassword(String aPassword){
        password = aPassword;
    }
    
    public String getName(){
        return name;
    }
    
    public void setName(String aName){
        name = aName;
    }
    
    public Integer getCategory(){
        return category;
    }
}
