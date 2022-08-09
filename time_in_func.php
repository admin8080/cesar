<?php


  include "functions/connect.php";
	extract($_POST);
		$datetime = date("Y-m-d h:i:sa");
$run1= mysql_query("insert into tbl_timein(datetime,user_idnum) values('$datetime','$user_idnum')");
	

							if($run1==true)
								 {
								    echo '<script language="javascript">';
								    echo 'alert("Successfully Added")';
								    echo '</script>';
								    echo '<meta http-equiv="refresh" content="0;url=index.php" />';
								 }
				



?>