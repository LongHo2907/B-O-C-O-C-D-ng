<?php
if (isset($_SESSION['success'])) {
    unset($_SESSION['success']);
}
require_once('./../commons/head1.php');
require_once('./../../models/users.php');
if (isset($_POST['register'])) {
    $users = new Users();
    $count = $users->insert($_POST);
    if ($count == 1) {
        $_SESSION['success'] = 'Thêm thành công';
    }
    else {
        $_SESSION['success'] = 'Lỗi! Vui lòng kiểm tra lại';
    }
}


?>

<body>
    <?php
    require_once('./../commons/nav_menu1.php');
    ?>


    <div class="container-fluid">
        <?php
        if (isset($_SESSION['success'])) {
        ?>
        <div class="alert alert-primary" role="alert">
            <?php echo $_SESSION['success'] ?>
        </div>
        <?php
        }
        ?>
        <form method="post" action="">
            <div class="row"> 
                <div class="col-lg-6 col-md-6">
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Tên đăng nhập</label>
                        <div class="col-sm-10">
                            <input type="text" name="username">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Phone</label>
                        <div class="col-sm-10">
                            <input type="number" name="phone">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Address</label>
                        <div class="col-sm-10">
                            <input type="text" name="address">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Họ Tên</label>
                        <div class="col-sm-10">
                            <input type="text" name="full_name">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Mật khẩu</label>
                        <div class="col-sm-10">
                            <input type="password" name="password">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Nhập lại mật khẩu</label>
                        <div class="col-sm-10">
                            <input type="password" name="passwordR">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Thành phố</label>
                        <div class="col-sm-10">
                            <input type="text" name="city">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Ngày sinh</label>
                        <div class="col-sm-10">
                            <input type="date" name="dob">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" name="email">
                        </div>
                    </div>

                   
                </div>
            </div> 
                <input type="submit" name="register" value="Thêm" class="btn btn-primary"></input>
        </form>
    </div>
    <?php
        require_once('./../commons/footer1.php');
    ?>
</body>
