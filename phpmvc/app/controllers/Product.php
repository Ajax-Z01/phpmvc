<?php


class Product extends Controller {
    public function index(){

        $data['judul'] = 'Product';
        $data['product'] = $this->model('Product_model')->getProduct();
        $this->view('templates/header', $data);
        $this->view('Product/index', $data);
        $this->view('templates/footer');
    }
}