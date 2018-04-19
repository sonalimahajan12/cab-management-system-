<%@page import="connectionClass.FilePages"%>
<%
    String user = "" + session.getAttribute("loginemail");
    String imag = FilePages.userimage(user);
    out.print(imag);
 %>
