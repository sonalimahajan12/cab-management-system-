<%-- 
    Document   : newjsploc1
    Created on : Apr 14, 2018, 3:02:15 AM
    Author     : SHIVANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
 <%  while(rs.next()){ %>
            <option><%= rs.getString(2)%></option>
        <% } rs.close(); ps.close(); %>


    </body>
</html>
