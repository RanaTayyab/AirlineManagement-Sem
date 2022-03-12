/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.MyDatabase;
import Model.RegisterUser;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;

/**
 *
 * @author Tayyab
 */

public class check_username_ajax extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String email= Jsoup.clean(request.getParameter("email"),Whitelist.basic()); 
            RegisterUser temp=new RegisterUser();
            temp.setEmail(email);
            MyDatabase db = (MyDatabase) getServletContext().getAttribute("db");
            temp.setMydatabase(db);
            boolean result= temp.already(email);
            
            PrintWriter out = response.getWriter();
            out.println(email);
             out.println("sssc");
            
            if(result==true)
            {
              out.println("ssslk");
            response.setContentType("text/plain");
            response.getWriter().write("Username Available!!");
             
            }
            else
            {
                out.println("sswess");
                 response.setContentType("text/plain");
                 response.getWriter().write("Already Exist!!");
                
            }
               String paerror="User Already Exist !";
               out.println("sss");
                            request.setAttribute("paerror", paerror);
                            RequestDispatcher d = request.getRequestDispatcher("signup.jsp");
                            d.forward(request, response);
        
    }

    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String email= Jsoup.clean(request.getParameter("email"),Whitelist.basic()); 
            RegisterUser temp=new RegisterUser();
            temp.setEmail(email);
            MyDatabase db = (MyDatabase) getServletContext().getAttribute("db");
            temp.setMydatabase(db);
            boolean result= temp.already(email);
            
            PrintWriter out = response.getWriter();
            out.println(email);
            
            if(result==true)
            {
             
            response.setContentType("text/plain");
            response.getWriter().write("Username Available!!");
             
            }
            else
            {
                 response.setContentType("text/plain");
                 response.getWriter().write("Already Exist!!");
                
            }
            
        
    }

    
}
