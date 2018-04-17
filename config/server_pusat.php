<?php
// 1. Connect ke database
//$sqlconn=mysql_connect("localhost:3306","root","");
// 2. Pilih database
include "ipserver.php";
//tambahkan IPPublic ke Remote mysql di CPanel hosting
$link = @($GLOBALS["___mysqli_ston"] = mysqli_connect($host_name,  $user_name,  $password));
((bool)mysqli_query( $link, "USE " . beesmartv3)) or die('Koneksi2 CBT SMAN 1 JORONG belum di setting');
//echo "Koneksi Terbuka";

date_default_timezone_set("Asia/Jakarta");
((bool)mysqli_query( $sqlconn, "USE " . beesmartv3));


?>
