<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class editcustomer extends Seeder
{
    public function run()
    {
        $this->db->table('customer')->updateBatch($data);
    }
}
function ubah_customer($data){
    global $conn;
    // ambil data dari tiap elemen dalam form
    $no_ktp = htmlspecialchars($data["no_ktp"]);
    $nama_customer = htmlspecialchars($data["nama_customer"]);
    $nohp_customer = htmlspecialchars($data["nohp_customer"]);
    $alamat_customer = htmlspecialchars($data["alamat_customer"]);
    $jenkel_customer = htmlspecialchars($data["jenkel_customer"]);
    $tgllahir_customer = htmlspecialchars($data["tgllahir_customer"]);
    $foto_customerLama = htmlspecialchars($data["foto_customerLama"]);

    // cek apakah user pilih gambar baru atau tidak
    if ($_FILES['foto_customer']['error'] === 4){
        $foto_customer = $foto_customerLama;
    } else {
        $foto_customer = upload_customer();
    }

    // query update data
    $query = "UPDATE customer SET nama_customer='$nama_customer',nohp_customer='$nohp_customer',alamat_customer='$alamat_customer', tgllahir_customer='$tgllahir_customer',jenkel_customer='$jenkel_customer',foto_customer='$foto_customer' WHERE no_ktp = $no_ktp";
    mysqli_query($conn, $query);
    return mysqli_affected_rows($conn);

}
