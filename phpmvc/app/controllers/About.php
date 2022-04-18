<?php

class About extends Controller {

    public function index ($nama = 'Nice Food', $bidang = 'Makanan'){

        $data['nama'] = $nama;
        $data['bidang'] = $bidang;
        
        $data['judul'] = 'About me';
        $this->view ('templates/header', $data);
        $this->view('About/index', $data);
        $this->view ('templates/footer');
    }
    
}