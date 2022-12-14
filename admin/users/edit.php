<?php
if (isset($_SESSION['success'])) {
    unset($_SESSION['success']);
}
require_once('./../commons/head1.php');
require_once('./../../models/users.php');
$users = new Users();

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    if (is_numeric($id)) {
        $obj = $users->getByid($id);
    } else {
        header('Location:index.php');
    }
}
if (isset($_POST['id'])) {
    $id = $_POST['id'];

    $users->update($_POST);
    header('Location:edit.php?id=' . $id);
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
        <form method="post">
            <div class="row"> 
                <div class="col-lg-6 col-md-6">
                    <input type="hidden" name="id" value="<?php echo $obj['id'] ?>" />
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">UserName</label>
                        <div class="col-sm-10">
                            <input type="text" name="username" value="<?php echo $obj['username'] ?>" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Phone</label>
                        <div class="col-sm-10">
                            <input type="text" name="phone" value="<?php echo $obj['phone'] ?>">
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Address</label>
                        <div class="col-sm-10">
                            <input type="text" name="address" value="<?php echo $obj['address']; ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Họ Tên</label>
                        <div class="col-sm-10">
                            <input type="text" name="full_name" value="<?php echo $obj['full_name']; ?>">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Thành phố</label>
                        <div class="col-sm-10">
                            <input type="text" name="city" value="<?php echo $obj['city']; ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Ngày sinh</label>
                        <div class="col-sm-10">
                            <input type="text" name="dob" value="<?php echo $obj['dob']; ?>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="staticEmail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input type="text" name="email" value="<?php echo $obj['email']; ?>">
                        </div>
                    </div>
                    
                </div>
            </div>
                    <input type="submit" class="btn btn-primary" value="Sửa"></input>
        </form>
    </div>
    <?php
        require_once('./../commons/footer1.php');
    ?>
</body>
