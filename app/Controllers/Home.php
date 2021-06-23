<?php

namespace App\Controllers;

use \App\Models\customer;
use \App\Models\editcustomer;
use \App\Models\hapuscustomer;
use \App\Models\tambahcustomer;

class Home extends BaseController
{
    public function index()
    {
        $customer = new customer();
        $customer = $customer->findAll();

        $data = [
            'title' => 'List Customer',
            'paket' => $customer
        ];

        return view('pages/home', $data);
    }


    public function tambahcustomer()
    {
        $data = [
            'title' => 'Tambah Data Customer'
        ];
        return view('pages/tambahcustomer', $data);
    }

