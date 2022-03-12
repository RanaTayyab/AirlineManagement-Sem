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
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jsoup.Jsoup;
import org.jsoup.safety.Whitelist;
 
//import javax.servlet.ServletContext;
 
/**
 * Servlet implementation class testClass
 */
public class testClass extends HttpServlet {

      @Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
            
            
             response.setContentType("text/html;charset=UTF-8");
            String email= Jsoup.clean(request.getParameter("name_user"),Whitelist.basic()); 
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
 
        
        @Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
            
            
             response.setContentType("text/html;charset=UTF-8");
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