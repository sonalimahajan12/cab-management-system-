<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="connectionClass.connection"%>
<%
    if(session.getAttribute("loginemail")==null)
        response.sendRedirect("u_login.jsp");
    String usr = ""+ session.getAttribute("loginemail");
 Connection con = connection.Connect(session);
 
 String sql = "select * from user_registration where EMAIL_ID=? ";
PreparedStatement ps= con.prepareStatement(sql);
    ps.setString(1, ""+ usr);
  ResultSet rs =  ps.executeQuery();
  rs.next();
     %>

<!DOCTYPE html>
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
               
             window.location = 'u_login.jsp';
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

  <div class="container-fluid" style="height: 1000px; overflow-y: scroll;">
      <div class="col-md " style="height:700px;width:100%;float:right;"><br><br><br><br><br><h1 style="margin-left:400px; ">Payment</h1><hr>
  
         <button type="button" class="btn btn-secondary" data-toggle="collapse" data-target="#demo">Show Bill </button><br><br>
  <div id="demo" class="collapse">
            <p> Distance Between Them   <input type="text" style="margin-left:40px;margin-right: 80px;width:190px;" name="lname" disabled value="<%=rs.getString("SOURCE") %>"></p><br>
            <p> Fare  <input type="text" style="margin-left:182px;margin-right: 80px;width:190px;" name="lname" disabled></p><br>
            <p>Source Location <input type="text" style="margin-left:182px;margin-right: 80px;width:190px;" name="sname" disabled> </p><br>
            <p>Destination Location <input type="text" style="margin-left:182px;margin-right: 80px;width:190px;" name="dname" disabled></p><br>
            
<a href="bill.jsp" class="btn btn-primary ">Generate The Bill</a>
<br><br><br>


  </div><br><br>
  </div>
       <br><br>

      </div>
    <br><br>
<ul style="height:600px; width:300px;">
    <li><img src="hada.jpeg" style="margin-left:90px;" class="img-thumbnail" alt="Cinque Terre" width="104" height="86"> </li>
  <li><a class="active" style="height:60px;width:300px;" href="user_payment.jsp">Payment</a></li>
  <li><a style="height:60px;width:300px;" href="USER_PROFILE.jsp">Profile</a></li>
  <li><a style="height:60px;width:300px;" href="user_trips.jsp">My Trips</a></li>
  <li><a style="height:60px;width:300px;" href="user_fareride.jsp">Fare Rides</a></li>
  <li><a style="height:60px;width:300px;" onclick="logout()">Logout?</a>
</ul>


	

</body>
</html>