<%@page import="java.sql.PreparedStatement"%>
<%@page import="connectionClass.connection"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = connection.Connect(session);
  //   String user = request.getParameter("uname");
  //  String pwd = request.getParameter("pwd");
  String x = request.getParameter("txt");
 // String x = "33";
   // String sql = "insert into user_registration values(11111,'aaaa','asss','ddd','ddllldddd',55555,66666)";
   String sql = "insert into LOGIN values(?)";
    PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1, x);
    ps.executeQuery();
   out.print(x);
%>