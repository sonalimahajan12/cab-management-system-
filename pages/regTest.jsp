<%-- 
    Document   : regTest
    Created on : Mar 19, 2018, 7:57:51 PM
    Author     : SHIVANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="jquery-1.11.1.min.js"> </script>
        <script type="text/javascript">
            
            function call()
            {
                var u=$("#txt").val();
                var url = "regMgr.jsp?txt=" + u;// + "&gg = " + i;
                var xhr = new XMLHttpRequest();
                
                xhr.open("GET",url,true);
                xhr.onreadystatechange = function() {docall(xhr);};
                xhr.send();
                
            }
            function docall(xhr)
            {
                if(xhr.readyState !=4)
                {//alert();
                    return;
                }
              //  alert(xhr);
              $("#asdf").html(xhr.responseText);
            }
            
            function ccall()
            {
                var s = $("#ddate").val();
                alert(s);
            } 
        </script>
        <title>JSP Page</title>
    </head>
    <body onload="call()">
        <h1>Hello World!</h1>
        <div id="asdf"></div>
        <input id="txt" type ="text" placeholder="enter name" >
       <input id="ddate" type="date" >
        <input type="button" value="click" onclick="ccall()">
        
    </body>
</html>
