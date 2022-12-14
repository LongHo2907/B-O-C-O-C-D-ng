<?php
require_once('./../commons/head1.php');
require_once('./../../models/users.php');
require_once('./../../models/products.php');
require_once('./../../models/order.php');

$order = new Order();
$product = new Product();


$id_order = $_GET['id_order'];
$orders = $order->getOrderById_id($id_order);
//$name_get=$order->getOrderById_id($id_order);
$productList = $order->getProductListInOrder($id_order);
$total = 0;
?>

<body>
    <?php
    require_once('./../commons/nav_menu1.php');
    ?>
    <div class="page-wrapper">
        <div class="container-fluid">
            <table class="table">

                <tbody>
                
                    <tr>
                        <td scope="row">#</td>
                        <td><?php echo $id_order ?></td>
                    </tr>
                    <tr>
                        <td scope="row">Tài khoản đặt</td>
                        <td><a href="../users/index.php"><?php echo $orders['username'] ?></a></td>
                    </tr>
                    <tr>
                        <td scope="row">Tên người nhận</td>
                        <td><?php echo $orders['name_get'] ?></td>
                    </tr>
                    <tr>
                        <td scope="row">SDT người nhận</td>
                        <td><?php echo $orders['sdt_get'] ?></td>
                    </tr>
                    <tr>
                        <td scope="row">Địa chỉ nhận</td>
                        <td><?php echo $orders['extra_address'] ?></td>
                    </tr>
                    <tr>
                        <td scope="row">Thời gian</td>
                        <td><?php echo $orders['time'] ?></td>
                    </tr>
                    <tr>
                        <td scope="row">Tình trạng</td>
                        <td><?php
                                switch ($orders['status']) {
                                    case '1':
                                        echo 'Đa giao  cho DVVC';
                                        break;
                                    case '0':
                                        echo 'Mới đặt hàng';
                                        break;
                                    case '2':
                                        echo 'Đã nhận';
                                        break;
                                    default:
                                        echo 'Unknows';
                                        break;
                                }
                                ?></td>
                    </tr>
                
                
                    <tr>
                        <td scope="row"><b>Danh Sách Sản Phẩm</b></td>
                
                        <td>
                            <?php foreach ($productList as $product) { ?>
                                <tr>
                                    <td><?php echo $product['quantity']?></td>
                                    <td><a href="http://localhost/shoplaptop-master/admin/product/edit.php?id=<?php echo $product['id']; ?>"><?php echo $product['name']; ?></a></td>
                                    <td><?php echo number_format($product['price']) . ' VND'; ?></td>
                                </tr>
                            <?php } ?>
                        </td>


                </tr>
                <tr>
                    <td scope="row">Tổng giá</td>
                    <td><?php
                        foreach ($productList as $product) {
                            $total = $total + $product['price'] * $product['quantity'];
                        }
                        echo number_format($total) . ' VND' ?></td>
                </tr>
                <tr>
                    <td scope="row">Phương thức thanh toán</td>
                    <td><?php echo 'COD' ?></td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>
    </body>
<?php
require_once('./../commons/footer1.php');
?>