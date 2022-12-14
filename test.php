<?php
require_once('models/cate.php');
require_once('models/order.php');
require_once('models/products.php');
//$order= new Order();
//$order=$order->getOrderById_id(10);
//echo $order['notes'].$order['full_name'];
//var_dump($order);
$product= new Product();
$cate= new Cate();
$cates=$cate->getCatesByProductId(18);
$listcates=$cate->getAllNoLimit();
?>
