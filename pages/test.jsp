<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connectionClass.connection"%>
<%
     
    String usr = ""+ session.getAttribute("loginemail");
 Connection con = connection.Connect(session);
 
 //String source = request.getParameter("indication_subject");
 //   String destination = request.getParameter("indication_subject");
   String  source = "Mangalore";
   String destination = "NITK";
 String sql = "select * from distance where (SOURCE=? and DESTINATION = ?) or (SOURCE=? and DESTINATION = ?)";
PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1, ""+ source);
    ps.setString(2, ""+ destination);
    ps.setString(3, ""+ destination);
    ps.setString(4, ""+ source);
  ResultSet rs =  ps.executeQuery();
  rs.next();
  out.print(rs.getString(1));
    %>
