<?php

class Product extends Controller
{
    public function index()
    {
        $data['judul'] = 'Product';
        $data['product'] = $this->model('ProductModel')->getAllProduct();
        $this->view('templates/header', $data);
        $this->view('product/index', $data);
        $this->view('templates/footer');
    }
}
