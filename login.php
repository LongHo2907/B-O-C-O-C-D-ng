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
    <title>Đăng nhập</title>
    <!-- Favicon icon -->
    <link
      rel="icon"
      type="image/jpg"
      sizes="16x16"
      href="./admin/assets/images/icon-maytinh.jpg"
    />
    <!-- Custom CSS -->
    <link href="./admin/dist/css/style.min.css" rel="stylesheet" />
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <?php
    require_once('C:/xampp/htdocs/shoplaptop-master/db.php');
    require_once('models/users.php');
    require_once('models/admin.php');
    session_start();
    $_SESSION['user_login'] = '';
    $_SESSION['user_id'] = '';
    $_SESSION['user_admin']=0;
    if (isset($_POST['login'])) {
        $users = new Users();
        $user = $users->checkLogin($_POST);
            if ($user != null) {
                if ($user['admin']== '0')
                {
                    $_SESSION['user_login'] = $user['username'];
                    $_SESSION['user_id'] = $user['id'];
                    // $_SESSION['user_admin']=0;
                    header("Location:index.php");
                }
                else {
                    $admin = new Admin();
                    $_SESSION['user_login'] = $user['username'];
                    $_SESSION['user_id'] = $user['id'];
                    $_SESSION['user_admin']=1;
                    header("location:admin/index.php");
                        }
            } else {
                //var_dump($_SESSION);
                $alert = 'Sai tên đăng nhập hoặc mật khẩu !';
            }
    
    }
    ?>
  <body class="bg-dark">
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
          container-fluid
          auth-wrapper
          d-flex
          no-block
          justify-content-center
          align-items-center
          bg-dark
        "
      >
      <div class="auth-box bg-dark border-top border-secondary">
          <div id="loginform">
            <div class="text-center pt-3 pb-3">
              <span class="db"
                ><img src="./admin/assets/images/logo.png" alt="logo"
              /></span>
            </div></br></br></br></br></br>
            <div class="text-white text-center"><h2>Đăng Nhập</h2></div>
            </br></br>
            <!-- notic -->
            <?php if (isset($alert)) echo '<div class="alert alert-primary" role="alert">' . " $alert " . "</div>"; ?>
            </br>

            <!-- Form -->
            <form
              class="form-horizontal mt-3"
              id="loginform"
              action=""
              method="post"
            >
              <div class="row pb-4">
                <div class="col-12">
                    <!-- usename -->
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span
                        class="input-group-text bg-success text-white h-100"
                        id="basic-addon1"
                        ><i class="mdi mdi-account fs-4"></i
                      ></span>
                    </div>
                    <input
                      type="text"
                      name="username"
                      class="form-control form-control-lg"
                      placeholder="Username"
                      aria-label="Username"
                      aria-describedby="basic-addon1"
                      required=""
                    />
                  </div>
                  <!-- password -->
                  <div class="input-group mb-3">
                    <div class="input-group-prepend">
                      <span
                        class="input-group-text bg-warning text-white h-100"
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
                      required=""
                    />
                  </div>
                </div>
              </div>
              <!-- btn -->
               <div class="row border-top border-secondary">
                <div class="col-12">
                  <div class="form-group">
                    <div class="pt-3">
                      <!-- <button
                        class="btn btn-info"
                        id="to-recover"
                        type="button"
                      >
                        <i class="mdi mdi-lock fs-4 me-1"></i> Lost password?
                      </button> -->
                      <button
                        class="btn btn-success float-end text-white"
                        type="submit"
                        name="login"
                      >
                        Login
                      </button>
                    </div>
                    </br></br></br>
                    <div class="card-footer">
                    <div class="d-flex justify-content-center sidebar-link">
                        <a class="text-white" href="register.php">Đăng ký</a>
                    </div>
                    <div class="d-flex justify-content-center">
                        <a class="text-white" href="#">Quên mật khẩu?</a></br></br>
                    </div>
                </div>
                  </div>
                </div>
              </div> 
            </form>
          </div>
          <!-- <div id="recoverform">
            <div class="text-center">
              <span class="text-white"
                >Enter your e-mail address below and we will send you
                instructions how to recover a password.</span
              >
            </div>
            <div class="row mt-3">
              Form
              <form class="col-12" action="index.html">
                email
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
                    class="form-control form-control-lg"
                    placeholder="Email Address"
                    aria-label="Username"
                    aria-describedby="basic-addon1"
                  />
                </div>
                pwd
                <div class="row mt-3 pt-3 border-top border-secondary">
                  <div class="col-12">
                    <a
                      class="btn btn-success text-white"
                      href="#"
                      id="to-login"
                      name="action"
                      >Back To Login</a
                    >
                    <button
                      class="btn btn-info float-end"
                      type="button"
                      name="action"
                    >
                      Recover
                    </button>
                  </div>
                </div>
              </form>
            </div>
           </div> --> 
        </div>

      </div>
    </div>
    <script src="./admin/assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="./admin/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- ============================================================== -->
    <!-- This page plugin js -->
    <!-- ============================================================== -->
    <script>
      $(".preloader").fadeOut();
      // ==============================================================
      // Login and Recover Password
      // ==============================================================
      $("#to-recover").on("click", function () {
        $("#loginform").slideUp();
        $("#recoverform").fadeIn();
      });
      $("#to-login").click(function () {
        $("#recoverform").hide();
        $("#loginform").fadeIn();
      });
    </script>
  </body>