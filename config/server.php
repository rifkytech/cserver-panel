<?php
// 1. Connect ke database
$sqlconn=@($GLOBALS["___mysqli_ston"] = mysqli_connect("localhost", "root", "whoami2002", NULL, 3306));
// 2. Pilih database
date_default_timezone_set("Asia/Jakarta");
((bool)mysqli_query( $sqlconn, "USE " . "cserver"));
$mode = "lokal"; // pilih 'lokal' atau 'pusat'
?>
