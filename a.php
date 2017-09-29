<html>
<head>
<style>
body {
 background-image:url("texture.jpg");
 }
 </style>
 </head>
<body>
<?php
   $conn=new mysqli("localhost","root","password","nmit");
   
   if($conn->connect_error)
   {
	   die("connection failed:".$conn->connect_error);
   }
   $sql="select * from project where usn='".$_POST["usn"]."'";
   $res=$conn->query($sql);
   
      $sql1="select password from project where password='".$_POST["pswrd"]."'";
   $res2=$conn->query($sql1);
   
    if($res->num_rows>0) 
   {
	   while($row=$res->fetch_assoc())
	   {
		   echo "<center>welcome</center>"."<center>".$_POST["usn"]."</center>";
		   echo "<center>"."<table border=1>";
		   echo "<tr><td>first name</td><td>".$row["fname"]."</td></tr>";
		   echo "<tr><td>last name</td><td>".$row["lname"]."</td></tr>";
		   echo "<tr><td>usn</td><td>".$row["usn"]."</td></tr>";
		   echo "<tr><td>mailid</td><td>".$row["mail"]."</td></tr>";
		   echo "<tr><td>phno</td><td>".$row["phno"]."</td></tr>";
    	    echo "<tr><td>password</td><td>".$row["password"]."</td></tr>"."</center>";
		   
	   }
   }
   else
   {
	   echo "wrong user id! ";
	   echo "<p><a href='login.html'>click here to login again</a></p>";
   }
 ?>
 <br/>
 <br/>
 <p><center><a href="option.html"><h1>START FEEDBACK</h1></a></center</p>
 <br/>
 <br/>
 <marquee direction="left"><h3>click on "START FEEDBACK" if you are ready to give feeback!</h3></marquee>
 </body>
 </html>