<%-- 
    Document   : dropdowntest
    Created on : Apr 7, 2018, 10:44:32 PM
    Author     : SHIVANI
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connectionClass.connection"%>
<%
    if(session.getAttribute("loginemail")==null)
        response.sendRedirect("u_login.jsp");
    String usr = ""+ session.getAttribute("loginemail");
 Connection con = connection.Connect(session);
 String sql = "select * from cars";
PreparedStatement ps= con.prepareStatement(sql);
   
  ResultSet rs =  ps.executeQuery();
  
     %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  while(rs.next()){ %>
            <div><%= rs.getString("car_name")%></div>
        <% } %>
    </body>
</html>
