package net.maymadi.login.web;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import net.maymadi.login.model.UserModel;
import net.maymadi.login.database.LoginDao;

/**
 * 
 */

@WebServlet("/login")
public class LoginUserServlet extends HttpServlet {
    private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        UserModel userModel = new UserModel();
        userModel.setUsername(username);
        userModel.setPassword(password);

        try {
            if (loginDao.validate(userModel)) {
                HttpSession session = request.getSession();
                session.setAttribute("username",username);
                session.setAttribute("name",loginDao.getUser(userModel).getName());
                session.setAttribute("usertype",loginDao.getUser(userModel).getUserType());
                response.sendRedirect("loginsuccess.jsp");
            } else {
                HttpSession session = request.getSession();
                if(session.getAttribute("language").equals("mdr")) {
                	session.setAttribute("login-error", "密码或用户名不正确！");
                }else {
                	session.setAttribute("login-error", "Password or Username is incorrect!");
                }
                
                response.sendRedirect("login.jsp");

            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}