<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class tambahcustomer extends Seeder
{
    public function run()

    {
        $this->db->table('customer')->insertBatch($data);
    }
}
function register($data){
    global $conn;

$no_ktp = mysqli_real_escape_string($conn, $data["no_ktp"]);
$nama_customer = mysqli_real_escape_string($conn, $data["nama_customer"]);
$username_customer = strtolower(stripslashes($data["username_customer"]));
$password_customer = mysqli_real_escape_string($conn, $data["password_customer"]);
$password2 = mysqli_real_escape_string($conn, $data["password2"]);
$nohp_customer = mysqli_real_escape_string($conn, $data["nohp_customer"]);
$alamat_customer = mysqli_real_escape_string($conn, $data["alamat_customer"]);
$jenkel_customer = mysqli_real_escape_string($conn, $data["jenkel_customer"]);
$tgllahir_customer = mysqli_real_escape_string($conn, $data["tgllahir_customer"]);
$foto_customer = mysqli_real_escape_string($conn, $data["foto_customer"]);


$result = mysqli_query($conn, "SELECT username_customer FROM customer WHERE username_customer = '$username_customer'");

if(mysqli_fetch_assoc($result)){
echo "<script>
    alert('username sudah terdaftar');
</script>";
return false;
}
//cek konfirmasi password
if ($password_customer !== $password2){
echo "<script>
    alert('password tidak sesuai');
</script>";
return false;
}

// enkripsi password

$password_customer = password_hash($password_customer, PASSWORD_DEFAULT);


// tambahkan user baru ke database
mysqli_query($conn, "INSERT INTO customer VALUES('','$nama_customer','$username_customer','$password_customer','$nohp_customer','$alamat_customer','$jenkel_customer','$tgllahir_customer','$foto_customer')");

return mysqli_affected_rows($conn);
}

