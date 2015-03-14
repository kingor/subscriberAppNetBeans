package by.telecom.subscriberapp.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Family_P
 */
public class UserInfo {
  String   UserName  = "";
  String  ErrorText  = "";
  boolean  LoginFlag = false;
  
  public UserInfo()
  {
    ;
  }
  
  public String GetUser()
  {
    return UserName;
  }
  
  public void Login(String TheUser)
  {
    LoginFlag = true;
    ErrorText = "";
    UserName = TheUser;
  }
  
  public void SetError(String TheText)
  {
    ErrorText = TheText;
  }
  
  public String GetError()
  {
    return ErrorText;
  }
  
  public String IsLogin()
  {
    if (LoginFlag)
      return "true";
    return "false";
  }
  
  public void Logout()
  {
    LoginFlag = false;
    UserName = "";
    ErrorText = "";
  }
}
