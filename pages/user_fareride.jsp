<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="connectionClass.connection"%>
<%
 /*   if(session.getAttribute("loginemail")==null)
        response.sendRedirect("u_login.jsp");
    String usr = ""+ session.getAttribute("loginemail");
 Connection con = connection.Connect(session);
 String sql = "select * from user_registration where EMAIL_ID=? ";
PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1, ""+ usr);
  ResultSet rs =  ps.executeQuery();
  rs.next();
*/
     %>

<%
    if(session.getAttribute("loginemail")==null)
        response.sendRedirect("u_login.jsp");
    String usr = ""+ session.getAttribute("loginemail");
 Connection con = connection.Connect(session);
 
 String sql = "select * from cars";
PreparedStatement ps= con.prepareStatement(sql);

  ResultSet rs =  ps.executeQuery();
//rm.beforeFirst()
    %>
    
<html lang="en">
<head>
  <title>payment</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="jquery-1.11.1.min.js"></script>
  <script type="text/javascript">
      
      function getusername()
      {
           var url = "getusrname.jsp?";
         //   var url = "reg.jsp?Rdate=" + Rd;
            var xhr = new XMLHttpRequest();
               xhr.open("GET",url,true);
                xhr.onreadystatechange = function() {getusr(xhr);};
                xhr.send();
      }
      
      function getusr(xhr)
      {
          if(xhr.readyState !=4)
                {//alert();
                    return;
                }
               
             $("#usrname").html(xhr.responseText);
      }
      function logout()
      {
          var url = "logout.jsp?";
           var xhr = new XMLHttpRequest();
               xhr.open("GET",url,true);
                xhr.onreadystatechange = function() {lgout(xhr);};
                xhr.send();
      }
      function lgout(xhr)
      {
          if(xhr.readyState !=4)
                {//alert();
                    return;
                }
               Window.location = 'u_login.jsp';
      }
</script>
  <style>
    ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
} 


  </style>
   <script>
    function updateSelect(changedSelect, selectId) {
      var otherSelect = document.getElementById(selectId);
      for (var i = 0; i < otherSelect.options.length; ++i) {
        otherSelect.options[i].disabled = false;
      }
      if (changedSelect.selectedIndex == 0) {
        return;
      }
      otherSelect.options[changedSelect.selectedIndex].disabled = true;
    }
  </script>
</head>
<body onload="getusername()">

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
  <a class="navbar-brand"  style="margin-left:600px" href="HOMEPAGE1.htm"><img src="logo.png" alt="Paris" style="width:150px; border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
    width: 150px;
     margin-left:100px;  box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5); display: block; margin-left: auto;
    margin-right: auto;"></a>
    <div class="container-fluid">
  <img src="hada.jpeg" class="rounded-circle" style="margin-left:300px;" alt="Cinque Terre" width="70" height="50"> 
  </div>
  <div class="btn-group">
    <button id="usrname" type="button" class="btn btn-primary">u</button>
    <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
      <span class="caret"></span>
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="user_trips.jsp">My Trips</a>
      <a class="dropdown-item" href="USER_PROFILE.jsp">Profile</a>
       <a class="dropdown-item" href="user_payment.jsp">Payment</a>
        <a class="dropdown-item" href="user_fareride.jsp">Fare Rides</a>
             <a class="dropdown-item" href="#" onclick="logout()">Logout?</a>
    </div>
  </div>

</nav>

  <div class="container-fluid">
      <div class="col-md " style="height:700px;width:1000px;float:right;"><br><br><br><br><br><h1 style="margin-left:400px; ">Fare Rides</h1><hr>
 <form action="user_payment1.jsp">
         <p>  Types Of Car <select id="cartype" name="cartype"  style="width:190px;margin-left:110px;" id="sel1">
                 <%  while(rs.next()){ %>
            <option><%= rs.getString(2)%></option>
        <% } rs.close(); ps.close(); %>
        <!--<option>Sedan</option>
        <option>Hatchback</option>
         <option>SUV</option>
          <option>Outstation</option>-->
      </select>  </p><br>
         <% String sql1 = "select * from city_master";
                PreparedStatement ps1= con.prepareStatement(sql1);
                ResultSet rs1 =  ps1.executeQuery(); 
         
         %>
        
            
       <p> Pick-Up Location <select id="select_1"  onchange="updateSelect(this,'select_2'),updateSelect(this,'select_3'),updateSelect(this,'select_4'),updateSelect(this,'select_5');"   name="indication_subject1" style="width:190px;margin-left:85px;">
        <%  while(rs1.next()){ %>
            <option><%= rs1.getString(2)%></option>
        <% } rs1.close(); ps1.close();  
        
        String sql2 = "select * from city_master";
                PreparedStatement ps2= con.prepareStatement(sql2);
                ResultSet rs2 =  ps2.executeQuery(); 
        
        %>
        
      </select>  </p><br>
      <p> Destination Location <select id="select_2" name="indication_subject" onchange="updateSelect(this,'select_1','select_3','select_4','select_5');" style="width:190px;margin-left:60px;" >
        <%  while(rs2.next()){ %>
            <option><%= rs2.getString(2)%></option>
        <% } rs2.close(); ps2.close();  %>
       
      </select>  </p><br>
<br><br>
<input type="submit"> <a href="user_payment.jsp" class="btn btn-primary" style="margin-left:390px;width:190px;" role="button">Pay</a> 
         </form>
      </div>
    </div><br><br><br><br>
<ul style="height:600px;width:300px;">
  
  <img src="hada.jpeg" style="margin-left:90px;" class="img-thumbnail" alt="Cinque Terre" width="104" height="86"> 
  <br><br><br>
  <li><a  style="height:60px;width:300px;" href="user_payment.jsp">Payment</a></li>
  <li><a  style="height:60px;width:300px;" href="USER_PROFILE.jsp">Profile</a></li>
  <li><a style="height:60px;width:300px;" href="user_trips.jsp">My Trips</a></li>
  <li><a class="active" style="height:60px;width:300px;" href="user_fareride.jsp"></a>Fare Rides</li>
  <li><a style="height:60px;width:300px;" onclick="logout()">Logout?</a>
</ul>


  

</body>
</html>