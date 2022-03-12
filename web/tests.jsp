<%-- 
    Document   : tests
    Created on : Oct 30, 2017, 1:54:14 AM
    Author     : Tayyab
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
         <% 
               ResultSet rs = (ResultSet) session.getAttribute("rs");
               if(rs!=null)
               {
 
			while(rs.next()){
				out.println(rs.getString("arrival"));
                                out.println(rs.getString("departure"));
                                out.println(rs.getString("date"));
			}
		} 
               
           %>
        
    </body>
</html>
