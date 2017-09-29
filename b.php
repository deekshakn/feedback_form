<html>
<head>
<style>
body{
	 background-image:url("texture.jpg");
}
</style>

<meta http-equiv="refresh" content="5; url=login.html" />
<head>
<body>
<?php

	if (!array_key_exists('firstname', $_POST)) {die("No POST data!");}
   $conn=new mysqli("localhost","root","password","nmit");
   
   if($conn->connect_error)
   {
	   die("connection failed:".$conn->connect_error);
   }
   $sql1="select usn from project where usn='".$_POST["usn"]."'";
   $res=$conn->query($sql1);
   if($res->num_rows>0)
   {
	   echo "usn alrdy exists!";
   }
   
   else
   {
   $sql="insert into project values('".$_POST["firstname"]."','".$_POST["lastname"]."','".$_POST["usn"]."','".$_POST["mailid"]."',".$_POST["phno"].",'".$_POST["pswrd"]."')";
   if($conn->query($sql)==TRUE)
   {
echo "your record is submitted!";
   }
   else
   {
	   echo "error: ".$sql."<br/>".$conn->error;
   }
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