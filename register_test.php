<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!-- https://bootsnipp.com/tags/login -->
<!DOCTYPE html>
<html>

<head>
    <title>Đăng Ký</title>
    <!--Made with love by Mutiullah Samim -->
    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!--Custom styles-->
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<?php
if (isset($_SESSION['success'])) {
    unset($_SESSION['success']);
}

require_once('./models/users.php');
$result_check = '';
//Kiểm tra user và email đã tồn tại trong DB chưa
if (isset($_POST['checkUser']) || isset($_POST['checkEmail'])) {
    $users = new Users();
    $username = $_POST['username'];
    $email = $_POST['email'];
    $result_check =  $users->checkUser_Email($username, $email);
}

if (isset($_POST['register'])) {
    // var_dump($_POST);'
    $users = new Users();
    $result = $users->insert($_POST);
    if ($result == 1) {// nếu insert thành công một hàm
        $_SESSION['success'] = 'Đăng ký thành công';
    } else $alert = $result;//hiển thị lỗi nếu ko thành công
}

?>

<body>
    <div class="container">
        <?php
        if (isset($_SESSION['success'])) {
        ?>
            <div class="alert alert-primary" role="alert">
                <?php echo $_SESSION['success'] ?>
            </div>
        <?php
        }
        ?>
        <?php
        if (isset($result_check) && $result_check != '') {
            echo '<div class="alert alert-primary" role="alert">' . " $result_check " . "</div>";
        }
        if (isset($alert)) echo '<div class="alert alert-primary" role="alert">' . " $result " . "</div>";
        ?>
        <div class="d-flex justify-content-center h-100">
            <div class="card">
                <div class="card-header">
                    <h3>Đăng ký<h3>
                            <div class="d-flex justify-content-end social_icon">
                                <span><i class="fab fa-facebook-square"></i></span>
                                <span><i class="fab fa-google-plus-square"></i></span>
                            </div>
                </div>
                <div class="card-body">
                    <form method="post" action="">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" name="username" class="form-control" value="<?php if (isset($result_check) && $result_check == 'OK') echo $username; ?>" placeholder="username" pattern="\w{4,20}" 
                    title="Tên đăng nhập phải từ 4 đến 20 ký tự, là ký tự in hoa, thường không dấu, số hoặc dấu gạch ngang!" required >
                            <input type="submit" name="checkUser" value="Check">
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" name="password" class="form-control" placeholder="password" pattern="^([A-Z]){1}([\w_\.!@#$%^&*()]+){5,31}$"
                            title="Mật khẩu phải có độ dài 6-32 ký tự, bắt đầu bằng chữ in hoa" required>
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" name="passwordR" class="form-control" placeholder="Re enter password" pattern="^([A-Z]){1}([\w_\.!@#$%^&*()]+){5,31}$"
                            title="Mật khẩu phải có độ dài 6-32 ký tự, bắt đầu bằng chữ in hoa" required>
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="email" name="email" class="form-control" value="<?php if (isset($result_check) && $result_check == 'OK') echo $email; ?>" placeholder="email"
                            pattern="^[A-Za-z0-9_.]{2,32}@([a-zA-Z0-9]{2,12})(.[a-zA-Z]{2,12})+$" title="Sai định dạng email của bạn! Vui lòng kiểm tra lại email " required>
                            <input type="submit" name="checkEmail" value="Check">
                        </div>

                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" name="full_name" class="form-control" placeholder="Họ và tên" pattern="[aAàÀảẢãÃáÁạẠăĂằẰẳẲẵẴắẮặẶâÂầẦẩẨẫẪấẤậẬbBcCdDđĐeEèÈẻẺẽẼéÉẹẸêÊềỀểỂễỄếẾệỆfFgGhHiIìÌỉỈĩĨíÍịỊjJkKlLmMnNoOòÒỏỎõÕóÓọỌôÔồỒổỔỗỖốỐộỘơƠờỜởỞỡỠớỚợỢpPqQrRsStTuUùÙủỦũŨúÚụỤưƯừỪửỬữỮứỨựỰvVwWxXyYỳỲỷỶỹỸýÝỵỴzZ\s]{5,50}" 
                            title="Họ tên nhập phải từ 5 đến 50 ký tự, chỉ gồm chữ cái và khoảng trắng" required>
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" name="address" class="form-control" placeholder="Quận huyện tên đường, số nhà" pattern="\w\,./{5,100}">

                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>

                            <input type="date" name="dob" class="form-control" placeholder="Ngày sinh">
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" name="city" class="form-control" placeholder="Thành phố" pattern="\w\,./{5,100}">
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="number" name="phone" class="form-control" placeholder="SĐT" pattern="\d{10}" title="Số điện thoại bao gồm 10 số!" >
                        </div>

                        <div class="row align-items-center remember">
                            <input type="checkbox" checked="checked" name="remember">Remember Me
                        </div>

                        <div class="form-group">
                            <input type="submit" name="register" value="Đăng ký" class="btn float-right login_btn">
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-center links">
                        <a class="text-warning" href="login.php">Đăng nhập</a>
                    </div>
                    <div class="d-flex justify-content-center">
                        <a class="text-warning" href="#">Quên mật khẩu?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>