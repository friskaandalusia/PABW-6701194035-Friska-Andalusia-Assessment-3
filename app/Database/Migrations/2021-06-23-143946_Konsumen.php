<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Konsumen extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'NO.KTP'             => [
                'type'           => 'INT',
                'constraint'     => 11,
                'unsigned'       => true,
            ],
            'nama'       => [
                'type'           => 'VARCHAR',
                'constraint'     => 255,
            ]
        ]);
        $this->forge->addKey('NIP', true);
        $this->forge->createTable('customer');
    }

    public function down()
    {
        $this->forge->dropTable('customer');
    }
}
