<?php
class Product_model{

    //private $dbh; //database handler
    //private $stmt; //statment

    //public function __construct()
    //{
        //data source name
    //    $dsn = 'msql:localhost; dbname=magang';

    //    try{
    //        $this->dbh = new PDO($dsn, 'root', '');
    //    } catch(PDOException $e){
    //        die($e->getMessage());
    //    }
    //}
    

    //public function getProduct(){
    //    $this->stmt = $this->dbh->prepare('SELECT * FROM produk');
    //    $this->stmt->execute();
    //    return $this->stmt->fetchAll(PDO::FETCH_ASSOC);
    //}
//}
private $product = [];

    public function getProduct(){
        return $this->product;
    }
}