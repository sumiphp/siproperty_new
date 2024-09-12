<?php 
require('conn.php');

if (isset($_POST['signinbtn'])) {
   
    $mail = $_POST['mail'];
    $pass = $_POST['pass'];
    
 
    $mail = mysqli_real_escape_string($con, $mail);
    $pass = mysqli_real_escape_string($con, $pass);
    

    $sql = "SELECT * FROM `login` WHERE gmail='$mail' AND password='$pass'";
    $res = mysqli_query($con, $sql);
    
    if (!$res) {
        die("Query failed: " . mysqli_error($con));
    }
    
    $num = mysqli_num_rows($res);
    
    if ($num > 0) {
       
        session_start();
        $rows = mysqli_fetch_array($res);
        $_SESSION['id'] = $rows['id'];
        $type = $rows['type'];
        
        
        if ($type == 1) {
            echo "<script>window.location='login.php'</script>";
        } else {
            echo "<script>window.location='dashboard.php'</script>";
        }
    } else {
        echo "Invalid details";
    }
}


mysqli_close($con);
?>



<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>SI Property - Apartments in Trivandrum</title>
  <meta name="description" content="Admin, Dashboard, Bootstrap, Bootstrap 4, Angular, AngularJS" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <!-- for ios 7 style, multi-resolution icon of 152x152 -->
  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent">
  <link rel="apple-touch-icon" href="<?php echo base_url().'assets/images/logo1.png'?>">
  <meta name="apple-mobile-web-app-title" content="Flatkit">
  <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
  <meta name="mobile-web-app-capable" content="yes">
  

  <link rel="icon" href="<?php echo base_url().'uploads/settings/'.$settings->favicon;?>" type="image/x-icon">

  
  <!-- style -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/animate.css/animate.min.css';?>" type="text/css" />
  <link rel="stylesheet" href="<?php echo base_url().'assets/glyphicons/glyphicons.css';?>" type="text/css" />
  <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>" type="text/css" />
  <link rel="stylesheet" href="<?php echo base_url().'assets/material-design-icons/material-design-icons.css'?>" type="text/css" />

  <link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/dist/css/bootstrap.min.css'?>" type="text/css" />
  <!-- build:css ./assets/styles/app.min.css -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/styles/app.css'?>" type="text/css" />
  <!-- endbuild -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/styles/font.css'?>" type="text/css" />







</head>
<body>
  <div class="app" id="app">

<!-- ############ LAYOUT START-->
  <div class="center-block w-xxl w-auto-xs p-y-md" style="width: 400px;">
    <div class="navbar">
      <div class="pull-center">
        <div ui-include="<?php echo base_url().'assets/views/blocks/navbar.brand.html'?>"></div>
      </div>
    </div>
    <div class="p-a-md box-color r box-shadow-z1 text-color m-a">
    <div class="text-center">
      <img src="<?php echo base_url().'assets/images/logo1.png'?>" alt="Logo" style="width: 100px; height: auto; margin-bottom: 20px;">
    </div>  
    <h6><?php echo $this->session->flashdata('flash_msgin');?></h6>
      <form name="form" method="post" action="<?php echo base_url().'index.php/admin/loginprocess';?>">
        <div class="md-form-group float-label">
          <input type="email" class="md-input" ng-model="user.email" name="username" required>
          <label>Email</label>
        </div>
        <div class="md-form-group float-label">
          <input type="password" class="md-input" ng-model="user.password" name="password" required>
          <label>Password</label>
        </div>      
        <div class="m-b-md">        
          <label class="md-check">
            <input type="checkbox"><i class="primary"></i> Keep me signed in
          </label>
        </div>
        <button type="submit" class="btn primary btn-block p-x-md" name="signinbtn">Sign in</button>
      </form>
    </div>

    <div class="p-v-lg text-center">
      <div class="m-b"><a ui-sref="access.forgot-password" href="<?php echo base_url().'index.php/Admin';?>" class="text-primary _600">Admin Panel</a></div>
      <div>Want to go userside? <a ui-sref="access.signup" href="<?php echo base_url().'index.php';?>" class="text-primary _600">Userside</a></div>
    </div>
  </div>

<!-- ############ LAYOUT END-->

  </div>



  <script src="<?php echo base_url().'assets/libs/jquery/jquery/dist/jquery.js'?>"></script>
<!-- Bootstrap -->
  <script src="<?php echo base_url().'assets/libs/jquery/tether/dist/js/tether.min.js'?>"></script>
  <script src="<?php echo base_url().'assets/libs/jquery/bootstrap/dist/js/bootstrap.js'?>"></script>
<!-- core -->
  <script src="<?php echo base_url().'assets/libs/jquery/underscore/underscore-min.js'?>"></script>
  <script src="<?php echo base_url().'assets/libs/jquery/jQuery-Storage-API/jquery.storageapi.min.js'?>"></script>
  <script src="<?php echo base_url().'assets/libs/jquery/PACE/pace.min.js'?>"></script>

  <script src="<?php echo base_url().'assets/scripts/config.lazyload.js'?>"></script>

  <script src="<?php echo base_url().'assets/scripts/palette.js'?>"></script>
  <script src="<?php echo base_url().'assets/scripts/ui-load.js'?>"></script>
  <script src="<?php echo base_url().'assets/scripts/ui-jp.js'?>"></script>
  <script src="<?php echo base_url().'assets/scripts/ui-include.js'?>"></script>
  <script src="<?php echo base_url().'assets/scripts/ui-device.js'?>"></script>
  <script src="<?php echo base_url().'assets/scripts/ui-form.js'?>"></script>
  <script src="<?php echo base_url().'assets/scripts/ui-nav.js'?>"></script>
  <script src="<?php echo base_url().'assets/scripts/ui-screenfull.js'?>"></script>
  <script src="<?php echo base_url().'assets/scripts/ui-scroll-to.js'?>"></script>
  <script src="<?php echo base_url().'assets/scripts/ui-toggle-class.js'?>"></script>

  <script src="<?php echo base_url().'assets/scripts/app.js'?>"></script>

  <!-- ajax -->
  <script src="<?php echo base_url().'assets/libs/jquery/jquery-pjax/jquery.pjax.js'?>"></script>
  <script src="<?php echo base_url().'assets/scripts/ajax.js'?>"></script>








<!-- endbuild -->
</body>
</html>
