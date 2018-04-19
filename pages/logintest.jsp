<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connectionClass.connection"%>
<%
    Connection con = connection.Connect(session);
    String sql = "insert into login values('Avi','123')";
    PreparedStatement ps= con.prepareStatement(sql);
    ps.executeQuery();

%>