<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connectionClass.connection"%>
<% 
  /*  String user = request.getParameter("uname");
    String pwd = request.getParameter("pwd");
    */ 
    
   
  
    Connection con = connection.Connect(session);
    String sql = "select EMAIL_ID  from USER_REGISTRATION where EMAIL_ID = ? and PASSWORD=?";
    String user = request.getParameter("uname");
    String pwd = request.getParameter("pwd");
    
   // out.print(pwd);
    //String user = "ak@gmail.com";
   // String pwd ="123";
    
    PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1, user);
    ps.setString(2, pwd);
    ResultSet rs = ps.executeQuery();
    
    
 /* while(rs.next())
    {
        String user1 = ""+rs.getObject("EMAIL_ID");
        out.print("<div height=100px width=50px>");
        out.print(user1);
        out.print("</div>");
    }
*/
   if(rs.next())
   {
       session.setAttribute("loginemail", user);
       
      response.sendRedirect("USER_PROFILE.jsp");
      
   }
   else
   {
      response.sendRedirect("u_login.jsp");
   }
   
%>