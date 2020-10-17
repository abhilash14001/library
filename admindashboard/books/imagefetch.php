<?php

	include "../include/config.php";

$fetchbook = $library->selectData($con, "*", "lmsbook where bookid = '$_POST[id]'");

  foreach($fetchbook as $fet){
		  $bookimage =  $fet['bookimage'];
		  
		  }
		  $bimage = explode(", ", $bookimage);
	echo '<h4><p><center>'.$fet['bookdesc'].'</center></p></h4>';
	echo '<div class="row">';
	if(!empty($bookimage)){
foreach($bimage as $bm){
	
echo '

  <div class="column">
             
  <img src = "thumbnail_images/'.$bm.'" width="100%" height="100px"> 

</div>

';  }
	}
echo '</div>'; 
 
	  ?>
	   