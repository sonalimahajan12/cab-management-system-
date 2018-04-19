<%@page import="java.sql.PreparedStatement"%>
<%@page import="connectionClass.connection"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = connection.Connect(session);
     String Rname = request.getParameter("Rname");
     String Rdate = request.getParameter("Rdate");
     String Raddr = request.getParameter("Raddr");
     String Remail = request.getParameter("Remail");
     String Rpwd = request.getParameter("Rpwd");
     String Rmob = request.getParameter("Rmob");
     String Rcity = request.getParameter("Rcity");
    /* out.print(Rname);
     out.print(Rdate);
     out.print(Raddr);
     out.print(Remail);
     out.print(Rpwd);
     out.print(Rcity);
     out.print(Rmob);
     */
  //  String pwd = request.getParameter("pwd");
  //String x = request.getParameter("txt");
 // String x = "33";
    String sql = "insert into user_registration values(?,?,?,?,?,'loged out',?)";
 //  String sql = "insert into registration values(?)";
    PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1, Rname);
    ps.setString(2, Rpwd);
    ps.setString(3, Raddr);
    ps.setString(4, Remail);
    ps.setString(5, Rmob);
    ps.setString(6, Rcity);
    ps.executeQuery();
   out.print("success");
%>