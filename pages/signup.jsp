<!DOCTYPE html>
<html lang="en">
<head>
  <title>Sign-In</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="jquery-1.11.1.min.js"></script>
  <script type="text/javascript">

      function Rreg()
      {
          var Rn = $("#Rname").val();
          var Rd = $("#Rdate").val();
          var Ra = $("#Raddr").val();
          var Rm = $("#Rmob").val();
          var Re = $("#Remail").val();
          var Rp = $("#Rpwd").val();
          var Rc = $("#Rcpwd").val();
          var Rt = $("#Rcity").val();
          
        
         var url = "regMgr.jsp?Rname=" + Rn + "&Rdate=" + Rd + "&Raddr=" + Ra+ "&Rmob=" + Rm+ "&Remail=" + Re+ "&Rpwd=" + Rp+ "&Rcity=" + Rt;
         //   var url = "reg.jsp?Rdate=" + Rd;
        var xhr = new XMLHttpRequest();
               xhr.open("GET",url,true);
                xhr.onreadystatechange = function() {doReg(xhr);};
                xhr.send();
         
      }
      function doReg(xhr)
            {
                if(xhr.readyState !=4)
                {//alert();
                    return;
                }
               
             $("#a").html(xhr.responseText);
            }
  </script>

  <style>
  	img {
    border: 1px solid #ddd;
    border-radius: 4px;
    padding: 5px;
    width: 150px;
   }
img:hover {
    box-shadow: 0 0 2px 1px rgba(0, 140, 186, 0.5);
}
h4 {
    text-shadow: 3px 1px blue;
}
  </style>
</head>

<body style="background-image:url('bc1.jpg') ">
    <div id="a"></div>
	 <h1><img src="logo.png" alt="Paris" style="width:150px; display: block;margin-left: auto;
    margin-right: auto;"></h1>
    <hr>
	<div class="container-fluid">
<div class="col-sm-5 container-fluid" style="background-color:white; height:400px; width:380px;float:left; border: 10px dotted red;padding:35px;background-clip: padding-box;">
<h1>Driver</h1><br>
<p>Find everything you need to track your success on the road.</p>
  <!--<button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">
    Driver Sign-up 
  </button><pre></pre>-->
  <a href="d_login.jsp" class="btn btn-info" role="button">Driver Sign-in </a>
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      	  <div class="modal-header">
          <h4 class="modal-title">Driver Sign-up Form</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
         <div class="modal-body">
      <input type="text"  placeholder="Name" style="color:black; height:35px;" name="name" required><br></br>
      <input type="date"   placeholder="DD/MM/YYYY" style="color:black; height:35px;width:212px; " name="date" required><br></br>
       <input type="text"  placeholder="Address" style="color:black; height:35px;" name="Address" required><br></br>
   <input type="number" style="color:black; height:35px;" placeholder="License-No(6 Digits) " maxlength="6" pattern="[A-Za-z]{3}" >
<br>
 
   <input type="number" style="color:black; height:35px;" placeholder="Phone-No(10 Digits) " maxlength="10" pattern="[A-Za-z]{3}"><br><br>
<input type="password" class="form-control" id="pwd" style="color:black;width:212px;"placeholder="Enter password"><br>
<form>
    <input type="email" class="form-control" style="color:black;width:212px;" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </form><br>
    <div class="form-gro"></label>
      <select class="form-control"  style ="color:black; text-align:center; width:212px;" id="sel1">
        <option >Mangalore</option>d
        <option>Surathkal</option>
        <option>Nanthoor</option>
        <option>Uduppi</option>
      </select></div><br>    
     <form action="#" onsubmit="if(document.getElementById('agree').checked) { return true; } else { alert('Please indicate that you have read and agree to the Terms and Conditions and Privacy Policy'); return false; }">

<input type="checkbox" name="checkbox" value="check" id="agree" /> I have read and agree to the Terms and Conditions and Privacy Policy<br><br>
<input type="submit" class="btn btn-success" style="float:center; height:35px;width:212px;" name="submit" value="Submit" /><br>
</form>
        </div>         
         </div>
    </div>
  </div>
  
</div>

    </div>
<div class="container-fluid">
<div class="col-sm-5 container-fluid" style="background-color:white; height:400px; width:370px;float:right; border: 10px dotted red;
    padding:35px;
    background-clip: padding-box;"><h1>Rider</h1><br></br>
    <p>Manage your payment options, review trip history, and more.</p>
    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal2">Rider Sign-up </button>
    <pre></pre> 
     <div class="modal fade" id="myModal2">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">User Sign-Up</h4>
          <button type="button" class="close" data-dismiss="modal"></button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
<input id="Rname" type="text"  placeholder="Name" style="color:black; height:35px;" name="name" required><br></br>
      <input id="Rdate" type="date"   placeholder="DD/MM/YYYY" style="color:black; height:35px;width:212px; " name="date" required><br></br>
       <input id="Raddr" type="text"  placeholder="Address" style="color:black; height:35px;" name="Address" required><br></br>
     
    
   
 
       <input id="Rmob" type="number" style="color:black; height:35px;" placeholder="Phone-No(10 Digits) " maxlength="10" pattern="[A-Za-z]{3}" >
<br>

    <input id="Remail" type="email" class="form-control" style="color:black;width:212px;" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  <br>
  <input id="Rpwd" type="password" class="form-control" id="pwd" style="color:black;width:212px;"placeholder="password"><br>
    <input id="Rcpwd" type="password" class="form-control" id="pwd" style="color:black;width:212px;"placeholder="Confirm password"><br>
 
  <div class="form-gro">
      <select id="Rcity" class="form-control"  style ="color:black; text-align:center; width:212px;" id="sel1">
        <option >Mangalore</option>
        <option>Surathkal</option>
        <option>Nanthoor</option>
        <option>Uduppi</option>
      </select></div><br>    
    

<input type="checkbox" name="checkbox" value="check" id="agree" /> I have read and agree to the Terms and Conditions and Privacy Policy<br><br>
<input type="button" class="btn btn-success" style="float:center; height:35px;width:212px;" onclick="Rreg()" name="submit" value="Submit" /><br>
          Modal body..
        </div>
        
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        
      </div>
    </div>
  </div>
    <a href="u_login.jsp" class="btn btn-info" role="button">Rider sign-in </a>
<br></br><br></br><br></br><br></br><br></br>
    </div><h1 style="color: red; text-decoration-color: white; text-align: center;text-shadow: 20px;"><b>Connect with us</b></h1></div></div>
</body>
</html>