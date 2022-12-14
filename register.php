<!DOCTYPE html>
<html dir="ltr">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta
      name="keywords"
      content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Matrix lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Matrix admin lite design, Matrix admin lite dashboard bootstrap 5 dashboard template"
    />
    <meta
      name="description"
      content="Matrix Admin Lite Free Version is powerful and clean admin dashboard template, inpired from Bootstrap Framework"
    />
    <meta name="robots" content="noindex,nofollow" />
    <title>Đăng ký</title>
    <!-- Favicon icon -->
    <link
      rel="icon"
      type="image/jpg"
      sizes="16x16"
      href="./admin/assets/images/icon-maytinh.jpg"
    />
    <!-- Custom CSS -->
    <link href="./admin/dist/css/style.min.css" rel="stylesheet" />
    <link href="./admin/assets/libs/flot/css/float-chart.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
    <div class="main-wrapper">
   
      <!-- ============================================================== -->
      <!-- Preloader - style you can find in spinners.css -->
      <!-- ============================================================== -->
      <div class="preloader">
        <div class="lds-ripple">
          <div class="lds-pos"></div>
          <div class="lds-pos"></div>
        </div>
      </div>
      <!-- ============================================================== -->
      <!-- Preloader - style you can find in spinners.css -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Login box.scss -->
      <!-- ============================================================== -->
      <div
        class="
          auth-wrapper
          d-flex
          no-block
          justify-content-center
          align-items-center
          bg-dark
        "
      >
        <div class="auth-box bg-dark border-top border-secondary">
          <div>
            <div class="text-center pt-3 pb-3">
              <span class="db"
                ><img src="./admin/assets/images/logo.png" alt="logo"
              /></span>
            </div>
            <!-- Form -->
            <form class="form-horizontal mt-3" method="post" action="">
              <div class="row pb-4">
                <div class="col-12">
                <div class="input-group text-white justify-content-center">
                  <h2>Đăng Ký</h2>
                </div>
                <!-- notic -->
                <div class="input-group mb-3">
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
                </div>
                    <!-- ----Username------ -->
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span
                        class="input-group-text bg-danger text-white h-100"
                        id="basic-addon1"
                        ><i class="mdi mdi-account fs-4"></i
                      ></span>
                    </div>
                    <input
                      type="text"
                      name="username"
                      class="form-control form-control-lg"
                      placeholder="Tên đăng nhập"
                      aria-label="Username"
                      aria-describedby="basic-addon1"
                      value="<?php if (isset($result_check) && $result_check == 'OK') echo $username; ?>" placeholder="username" pattern="\w{4,20}" 
                      title="Tên đăng nhập phải từ 4 đến 20 ký tự, là ký tự in hoa, thường không dấu, số hoặc dấu gạch ngang!"
                      required
                    />
                    <input type="submit" name="checkUser" value="Check">
                  </div>
                 <!-- password -->
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span
                        class="input-group-text bg-danger text-white h-100"
                        id="basic-addon2"
                        ><i class="mdi mdi-lock fs-4"></i
                      ></span>
                    </div>
                    <input
                      type="password"
                      name="password"
                      class="form-control form-control-lg"
                      placeholder="Password"
                      aria-label="Password"
                      aria-describedby="basic-addon1"
                      pattern="^([A-Za-z]){1}([\w_\.!@#$%^&*()]+){5,31}$"
                      title="Mật khẩu phải có độ dài 6-32 ký tự, bắt đầu bằng chữ"
                      required
                    />
                  </div>
                  <!-- password confirm -->
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span
                        class="input-group-text bg-danger text-white h-100"
                        id="basic-addon2"
                        ><i class="mdi mdi-lock fs-4"></i
                      ></span>
                    </div>
                    <input
                      type="password"
                      name="passwordR"
                      class="form-control form-control-lg"
                      placeholder="Confirm Password"
                      aria-label="Password"
                      aria-describedby="basic-addon1"
                      pattern="^([A-Za-z]){1}([\w_\.!@#$%^&*()]+){5,31}$"
                      title="Mật khẩu phải có độ dài 6-32 ký tự, bắt đầu bằng chữ"
                      required
                    />
                  </div>
                   <!-- email -->
                   <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span
                        class="input-group-text bg-danger text-white h-100"
                        id="basic-addon1"
                        ><i class="mdi mdi-email fs-4"></i
                      ></span>
                    </div>
                    <input
                      type="text"
                      name="email"
                      class="form-control form-control-lg"
                      placeholder="Email Address"
                      aria-label="Username"
                      aria-describedby="basic-addon1"
                      value="<?php if (isset($result_check) && $result_check == 'OK') echo $email; ?>" placeholder="email"
                      pattern="^[A-Za-z0-9_.]{2,32}@([a-zA-Z0-9]{2,12})(.[a-zA-Z]{2,12})+$" title="Sai định dạng email của bạn! Vui lòng kiểm tra lại email "
                      required
                    />
                    <input type="submit" name="checkEmail" value="Check">
                  </div>
                  <!-- name -->
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span
                        class="input-group-text bg-danger text-white h-100"
                        id="basic-addon1"
                        ><i class="mdi mdi-account fs-4"></i
                      ></span>
                    </div>
                    <input
                      type="text"
                      name="full_name"
                      class="form-control form-control-lg"
                      placeholder="Họ và tên"
                      aria-label="name"
                      aria-describedby="basic-addon1"
                      pattern="[aAàÀảẢãÃáÁạẠăĂằẰẳẲẵẴắẮặẶâÂầẦẩẨẫẪấẤậẬbBcCdDđĐeEèÈẻẺẽẼéÉẹẸêÊềỀểỂễỄếẾệỆfFgGhHiIìÌỉỈĩĨíÍịỊjJkKlLmMnNoOòÒỏỎõÕóÓọỌôÔồỒổỔỗỖốỐộỘơƠờỜởỞỡỠớỚợỢpPqQrRsStTuUùÙủỦũŨúÚụỤưƯừỪửỬữỮứỨựỰvVwWxXyYỳỲỷỶỹỸýÝỵỴzZ\s]{5,50}" 
                     title="Họ tên nhập phải từ 5 đến 50 ký tự, chỉ gồm chữ cái và khoảng trắng"
                      required
                    />
                  </div>
                  <!-- date -->
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span
                        class="input-group-text bg-info text-white h-100"
                        id="basic-addon1"
                        ><i class="mdi mdi-table-edit fs-4"></i
                      ></span>
                    </div>
                    <input
                      type="date"
                      name="dob"
                      class="form-control form-control-lg"
                      placeholder="Ngày sinh"
                      aria-label="date"
                      aria-describedby="basic-addon1"
                    />
                  </div>
                  <!-- address -->
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span
                        class="input-group-text bg-success text-white h-100"
                        id="basic-addon1"
                        ><i class="mdi mdi-map-marker fs-4"></i
                      ></span>
                    </div>
                    <input
                      type="text"
                      name="address"
                      class="form-control form-control-lg"
                      placeholder="Quận huyện, tên đường, số nhà"
                      aria-label="address"
                      aria-describedby="basic-addon1"
                      pattern="\w\,./{5,100}"
                    />
                  </div>
                  <!-- city -->
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span
                        class="input-group-text bg-success text-white h-100"
                        id="basic-addon1"
                        ><i class="mdi mdi-map-marker-plus fs-4"></i
                      ></span>
                    </div>
                    <input
                      type="text"
                      name="city"
                      class="form-control form-control-lg"
                      placeholder="Thành phố"
                      aria-label="address"
                      aria-describedby="basic-addon1"
                      pattern="\w\,./{5,100}"
                    />
                  </div>
                  <!-- phone -->
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span
                        class="input-group-text bg-success text-white h-100"
                        id="basic-addon1"
                        ><i class="mdi mdi-phone fs-4"></i
                      ></span>
                    </div>
                    <input
                      type="text"
                      name="phone"
                      class="form-control form-control-lg"
                      placeholder="Điện thoại"
                      aria-label="phone"
                      aria-describedby="basic-addon1"
                      pattern="\d{10}" title="Số điện thoại bao gồm 10 số!"
                    />
                  </div>
                  <!-- remember -->
                  <div class="align-items-center text-white remember">
                            <input type="checkbox" checked="checked" name="remember"> Remember Me
                  </div>
                </div>
              </div>
              <!-- btn register -->
              <div class="row border-top border-secondary">
                <div class="col-12">
                  <div class="form-group">
                    <div class="pt-3 d-grid">
                      <button
                        name="register"
                        class="btn btn-block btn-lg btn-info"
                        type="submit"
                      >
                        Đăng ký
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- link login -->
              <div class="card-footer">
                    <div class="d-flex justify-content-center sidebar-link">
                        <a class="text-white" href="login.php">Đăng nhập</a>
                    </div>
                    <div class="d-flex justify-content-center">
                        <a class="text-white" href="#">Quên mật khẩu?</a></br></br>
                    </div>
                </div>
            </form>
          </div>
        </div>
      </div>
      <!-- ============================================================== -->
      <!-- Login box.scss -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Page wrapper scss in scafholding.scss -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Page wrapper scss in scafholding.scss -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Right Sidebar -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Right Sidebar -->
      <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- All Required js -->
    <!-- ============================================================== -->
    <script src="./admin/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="./admin/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugin js -->
    <!-- ============================================================== -->
    <script>
      $(".preloader").fadeOut();
    </script>
    <!-- <script src="./admin/assets/libs/jquery/dist/jquery.min.js"></script> -->
    <!-- Bootstrap tether Core JavaScript -->
    <!-- <script src="./admin/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script> -->
    <script src="./admin/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="./admin/assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="./admin/dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="./admin/dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="./admin/dist/js/custom.min.js"></script>
    <!--This page JavaScript -->
    <!-- <script src="../dist/js/pages/dashboards/dashboard1.js"></script> -->
    <!-- Charts js Files -->
    <script src="./admin/assets/libs/flot/excanvas.js"></script>
    <script src="./admin/assets/libs/flot/jquery.flot.js"></script>
    <script src="./admin/assets/libs/flot/jquery.flot.pie.js"></script>
    <script src="./admin/assets/libs/flot/jquery.flot.time.js"></script>
    <script src="./admin/assets/libs/flot/jquery.flot.stack.js"></script>
    <script src="./admin/assets/libs/flot/jquery.flot.crosshair.js"></script>
    <script src="./admin/assets/libs/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="./admin/dist/js/pages/chart/chart-page-init.js"></script>
    <footer>
    <center> Copyright &copy; Lê Minh Hiếu and Phạm Trọng Hửu </center>
    </footer>
  </body>
</html>
