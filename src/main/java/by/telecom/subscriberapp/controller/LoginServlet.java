package by.telecom.subscriberapp.controller;

import by.telecom.subscriberapp.DAO.DaoFactory;
import by.telecom.subscriberapp.User;
import java.io.IOException;
import java.util.Collection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String login = request.getParameter("login");
    String password = request.getParameter("password");
    String ResultPage;
    int flag = 0;
    
    List<User> listUser = null;
    listUser = DaoFactory.getUserDao().getByLogin(login);
    
    HttpSession session = request.getSession();
    
    User User = (User) session.getAttribute("user");
    
    if (User == null)
      User = new User();
    
    if (!listUser.equals(null)) {
        for (User user : listUser) 
            if (user.getPassword().equals(password))
                flag = 1;
    }
    else    {
      ResultPage = "/login.jsp";
      User.SetError("Incorrect user name - " + login);
      session.setAttribute("user", User);
    }
    
    if (flag == 1)
    {
      User.Login(login);
      ResultPage = "/index.jsp";
      session.setAttribute("user", User);
    }
    else
    {
      ResultPage = "/login.jsp";
      User.SetError("Incorrect user name - " + login);
      session.setAttribute("user", User);
    } 
    
    ServletContext SC = getServletContext();
    RequestDispatcher Disp = SC.getRequestDispatcher(ResultPage);
    Disp.forward(request, response);
  }
  
  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
    try
    {
      String IsLogout = request.getParameter("logout");
      
      HttpSession session = request.getSession();
      
      String ResultPage;
      UserInfo User = (UserInfo) session.getAttribute("user");
      
      if (User == null)
        User = new UserInfo();
      
      if (IsLogout != null)
        if (IsLogout.equals("true"))
          User.Logout();
      
      ResultPage = "/login.jsp";
      
      session.setAttribute("user", User);
      
      ServletContext SC = getServletContext();
      RequestDispatcher Disp = SC.getRequestDispatcher(ResultPage);
      Disp.forward(request, response);
    }
    catch (Throwable theException)
    {
      theException.printStackTrace();
    }
  }

}
 