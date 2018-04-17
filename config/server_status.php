<?php
// 1. Connect ke database
//$sqlconn=mysql_connect("localhost:3306","root","");
// 2. Pilih database
include "ipserver.php";
 
$link = @($GLOBALS["___mysqli_ston"] = mysqli_connect($host_name,  $user_name,  $password));

if(!$link){
$status_konek = "0";
}
else {
$status_konek = "1";
((bool)mysqli_query( $link, "USE " . beesmartv3)) or die('Koneksi1 CBT SMAN 1 JORONG belum di setting');
//echo "Koneksi Terbuka";

}
date_default_timezone_set("Asia/Jakarta");
//mysql_select_db("beesmartv3", $sqlconn);
//tambahkan IPPublic ke Remote mysql di CPanel hosting


?>
