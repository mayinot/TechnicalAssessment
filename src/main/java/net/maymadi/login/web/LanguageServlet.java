package net.maymadi.login.web;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


/**
 * 
 */

@WebServlet("/language")
public class LanguageServlet extends HttpServlet {

  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String language = request.getParameter("language");
        HttpSession session = request.getSession();
        if(language.equals("eng")) {
        	session.setAttribute("language", "eng");
        	response.sendRedirect("login.jsp");
        }else if(language.equals("mdr")) {
        	session.setAttribute("language", "mdr");
        	response.sendRedirect("login.jsp");
        }
        if(language.equals("eng-ls")) {
        	session.setAttribute("language", "eng");
        	response.sendRedirect("loginsuccess.jsp");
        }else if(language.equals("mdr-ls")) {
        	session.setAttribute("language", "mdr");
        	response.sendRedirect("loginsuccess.jsp");
        }
        if(language.equals("eng-rp")) {
        	session.setAttribute("language", "eng");
        	response.sendRedirect("restricted.jsp");
        }else if(language.equals("mdr-rp")) {
        	session.setAttribute("language", "mdr");
        	response.sendRedirect("restricted.jsp");
        }

        
    }
}