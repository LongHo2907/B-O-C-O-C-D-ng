<?php
//require_once('./commons/head.php');
// if (isset($_SESSION['user_login']) && $_SESSION['user_login']!='') {
//     header('Location:test/test1.php');
// } else {
//     header('Location:http://localhost/shoplaptop-master/login.php');
// }
session_start();
// echo var_dump($_SESSION['user_login']);
// echo var_dump($_SESSION['user_admin']);
if($_SESSION['user_login']!='admin')
{
    header('Location:http://localhost/shoplaptop-master/index.php');
} else
{
    header('Location:http://localhost/shoplaptop-master/admin/product/index.php');
}

?>