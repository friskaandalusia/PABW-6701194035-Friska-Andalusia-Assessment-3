<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class KonsumenSeeder extends Seeder
{
    public function run()
    {
        $data = [
            [
                'nama'    => 'Friska',
                'alamat'    => 'Perumnas Podomoro',
                'no_ktp'  => '12345',
                'foto'    => 'friska.jpeg'
            ]
        ];
        $this->db->table('customer')->insertBatch($data);
    }
}
