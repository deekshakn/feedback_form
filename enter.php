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
  if (empty($_POST["branch1"])) {
    $questerr = "not answered!";
	echo $questerr;
  } else {
    $quest = test_input($_POST["branch1"]);
  }
function test_input($data)
 {
  return $data;
}
?>
 </body>
 </html>