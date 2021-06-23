<?php

session_start();

if (!isset($_SESSION["login"])){
	header("Location: login.php");
	exit;
}

require 'functions.php';


$id_optrip = $_GET["id"];


if( hapus_customer($id_customer) > 0){
	echo "<script>alert('data berhasil dihapus!');
					  document.location.href = 'customer.php';
			  </script>";	  
	} else {
		echo "<script>alert('data gagal dihapus!');
					  document.location.href = 'customer.php';
			  </script>";
	}
?>