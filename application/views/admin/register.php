<!-- php -->
 <?php 

 require ("conn.php");
 if (isset($_POST['signupbtn'])){
  $cname=$_POST['cname'];
  $mail=$_POST['mail'];
  $pass=$_POST['pass'];
  $sql="INSERT INTO `register`(`name`, `gmail`, `password`) VALUES ('$cname','$mail',' $pass')";
  mysqli_query($con,$sql);
  $sql1="INSERT INTO `login`(`gmail`,`password`) VALUES ('$mail','$pass')";
  mysqli_query($con,$sql1);
  header('location:http://localhost/siproperty/login.php');
 }
 ?>


<!-- html -->
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
  <link rel="apple-touch-icon" href="../assets/images/logo.png">
  <meta name="apple-mobile-web-app-title" content="Flatkit">
  <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="shortcut icon" sizes="196x196" href="../assets/images/logo.png">
  
  <!-- style -->
  <link rel="stylesheet" href="./assets/animate.css/animate.min.css" type="text/css" />
  <link rel="stylesheet" href="./assets/glyphicons/glyphicons.css" type="text/css" />
  <link rel="stylesheet" href="./assets/font-awesome/css/font-awesome.min.css" type="text/css" />
  <link rel="stylesheet" href="./assets/material-design-icons/material-design-icons.css" type="text/css" />

  <link rel="stylesheet" href="./assets/bootstrap/dist/css/bootstrap.min.css" type="text/css" />
  <!-- build:css ../assets/styles/app.min.css -->
  <link rel="stylesheet" href="./assets/styles/app.css" type="text/css" />
  <!-- endbuild -->
  <link rel="stylesheet" href="./assets/styles/font.css" type="text/css" />
</head>
<body>
  <div class="app" id="app">

<!-- ############ LAYOUT START-->
<div class="center-block w-xxl w-auto-xs p-y-md">
  <!-- <div class="navbar">
    <div class="pull-center">
      <div ui-include="'./views/blocks/navbar.brand.html'"></div>
    </div>
  </div> -->

  <div class="p-a-md box-color r box-shadow-z1 text-color m-a" style="width: 400px;">
    <div class="text-center">
      <img src="./assets/images/logo r.png" alt="Logo" style="width: 100px; height: 100px; margin-bottom: 20px;">
    </div>
    <div class="m-b text-sm text-center">
      Sign up into SI Property Account
    </div>
    <form name="form" method="post" onsubmit="return validateForm()">
      <div class="md-form-group float-label">
        <input type="text" class="md-input" name="cname" required>
        <label>Name</label>
      </div>
      <div class="md-form-group float-label">
        <input type="email" class="md-input" name="mail"  required>
        <label>Email</label>
      </div>
      <div class="md-form-group float-label">
    <input type="password" class="md-input" id="password" name="pass" required>
    <label>Password</label>
      </div>
      <div class="md-form-group float-label">
          <input type="password" class="md-input" id="retype-password" required>
          <label>Retype Password</label>
      </div>
      <div id="error-message" style="color: red; display: none;">
          Passwords do not match.
      </div>
      

      <div class="m-b-md mt-2">
        <label class="md-check">
          <input type="checkbox" required><i class="primary"></i> Agree the <a href>terms and policy</a>
        </label>
      </div>
      <button  type="submit" name="signupbtn" href="login.php" class="btn primary btn-block p-x-md">Sign up</button>
    </form>
  </div>

  <div class="p-v-lg text-center">
    <div>Already have an account? <a ui-sref="access.signin" href="login.php" class="text-primary _600">Sign in</a></div>
  </div>
</div>


<!-- ############ LAYOUT END-->

  </div>
<!-- script for password box vallidating -->
 <script>
function validateForm() {
    var password = document.getElementById("password").value;
    var retypePassword = document.getElementById("retype-password").value;
    var errorMessage = document.getElementById("error-message");

    if (password !== retypePassword) {
        errorMessage.style.display = "block";
        return false;  // Prevent form submission
    } else {
        errorMessage.style.display = "none";
        return true;   // Allow form submission
    }
}


</script>



<!-- build:js scripts/app.html.js -->
<!-- jQuery -->
  <script src="./libs/jquery/jquery/dist/jquery.js"></script>
<!-- Bootstrap -->
  <script src="./libs/jquery/tether/dist/js/tether.min.js"></script>
  <script src="./libs/jquery/bootstrap/dist/js/bootstrap.js"></script>
<!-- core -->
  <script src="./libs/jquery/underscore/underscore-min.js"></script>
  <script src="./libs/jquery/jQuery-Storage-API/jquery.storageapi.min.js"></script>
  <script src="./libs/jquery/PACE/pace.min.js"></script>

  <script src="scripts/config.lazyload.js"></script>

  <script src="scripts/palette.js"></script>
  <script src="scripts/ui-load.js"></script>
  <script src="scripts/ui-jp.js"></script>
  <script src="scripts/ui-include.js"></script>
  <script src="scripts/ui-device.js"></script>
  <script src="scripts/ui-form.js"></script>
  <script src="scripts/ui-nav.js"></script>
  <script src="scripts/ui-screenfull.js"></script>
  <script src="scripts/ui-scroll-to.js"></script>
  <script src="scripts/ui-toggle-class.js"></script>

  <script src="scripts/app.js"></script>

  <!-- ajax -->
  <script src="../libs/jquery/jquery-pjax/jquery.pjax.js"></script>
  <script src="scripts/ajax.js"></script>
<!-- endbuild -->
</body>
</html>
