<?php
require ('conn.php');

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
  <link rel="apple-touch-icon" href="<?php echo base_url().'assets/images/logo.png'?>">
  <meta name="apple-mobile-web-app-title" content="Flatkit">
  <!-- for Chrome on Android, multi-resolution icon of 196x196 -->
  <meta name="mobile-web-app-capable" content="yes">
  <link rel="icon" href="<?php echo base_url().'uploads/settings/'.$settings->favicon;?>" type="image/x-icon">

  
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

  <!-- aside -->
  <?php 
  include ("sidebar.php");
  ?>
       
      <div class="b-t">
        <div class="nav-fold">
        	<a href="profile.html">
        	    <span class="pull-left">
        	      <img src="<?php echo base_url().'assets/images/a0.jpg'?>" alt="..." class="w-40 img-circle">
        	    </span>
        	    <span class="clear hidden-folded p-x">
        	      <span class="block _500">Admin</span>
        	      <small class="block text-muted"><i class="fa fa-circle text-success m-r-sm"></i>online</small>
        	    </span>
        	</a>
        </div>
      </div>
    </div>
  </div>
  <!-- / -->
  
  <!-- content -->
  <div id="content" class="app-content box-shadow-z0" role="main">
    <div class="app-header white box-shadow">
        <div class="navbar navbar-toggleable-sm flex-row align-items-center">
            <!-- Open side - Naviation on mobile -->
            <a data-toggle="modal" data-target="#aside" class="hidden-lg-up mr-3">
              <i class="material-icons">&#xe5d2;</i>
            </a>
            <!-- / -->
        
            <!-- Page title - Bind to $state's title -->
            <div class="mb-0 h5 no-wrap" ng-bind="$state.current.data.title" id="pageTitle"></div>
        
            <!-- navbar collapse -->
            <div class="collapse navbar-collapse" id="collapse">
              <!-- link and dropdown -->
              <ul class="nav navbar-nav mr-auto">
                <li class="nav-item dropdown">
                  <a class="nav-link" href="<?php echo base_url().'Admin/addcarousel'?>">
                    <i class="fa fa-fw fa-plus text-muted"></i>
                    <span>New</span>
                  </a>
                  <div ui-include="<?php echo base_url().'assets/views/blocks/dropdown.new.html'?>"></div>
                </li>
              </ul>
        
              <div ui-include="<?php echo base_url().'assets/views/blocks/navbar.form.html'?>"></div>
              <!-- / -->
            </div>
            <!-- / navbar collapse -->
        
            <!-- navbar right -->
            <ul class="nav navbar-nav ml-auto flex-row">
              <!--li class="nav-item dropdown pos-stc-xs">
                <a class="nav-link mr-2" href data-toggle="dropdown">
                  <i class="material-icons">&#xe7f5;</i>
                  <span class="label label-sm up warn">3</span>
                </a>
                <div ui-include="<?php //echo base_url().'assets/views/blocks/dropdown.notification.html'?>"></div>
              </li-->
              <li class="nav-item dropdown">
                <a class="nav-link p-0 clear" href="#" data-toggle="dropdown">
                  <span class="avatar w-32">
                    <img src="<?php echo base_url().'assets/images/a0.jpg'?>" alt="...">
                    <i class="on b-white bottom"></i>
                  </span>
                </a>
                <div ui-include="<?php echo base_url().'assets/views/blocks/dropdown.user.html'?>"></div>
              </li>
              <li class="nav-item hidden-md-up">
                <a class="nav-link pl-2" data-toggle="collapse" data-target="#collapse">
                  <i class="material-icons">&#xe5d4;</i>
                </a>
              </li>
            </ul>
            <!-- / navbar right -->
        </div>
    </div>
    <div class="app-footer">
      <div class="p-2 text-xs">
        <div class="pull-right text-muted py-1">
        &copy; Copyright <strong>Medowa</strong> <span class="hidden-xs-down">- 2024</span>
          <a ui-scroll-to="content"><i class="fa fa-long-arrow-up p-x-sm"></i></a>
        </div>
        <!-- <div class="nav">
          <a class="nav-link" href="./">About</a>
          <a class="nav-link" href="http://themeforest.net/user/flatfull/portfolio?ref=flatfull">Get it</a>
        </div> -->
      </div>
    </div>
    <div ui-view class="app-body" id="view">

<!-- ############ PAGE START-->
<div class="padding">
  
  <div class="box">
    <div class="box-header">
      <h3>List Faq</h3>
      
    </div>
    <?php if ($this->session->flashdata('flash_msghc')): ?>
            <div class="alert alert-success">
                <?php echo $this->session->flashdata('flash_msghc'); ?>
            </div>
        <?php endif; ?>
    <div class="row p-a">
     
      <div class="col-sm-4">
      </div>
      <div class="col-sm-3">
      
      </div>
    </div>
    <div class="table-responsive">
      <table class="table table-striped b-t">
        <thead>
          <tr >
            <th>SL.No</th>
            <th>Questions</th>
            <th>Answers</th>
            <th>Status</th>
            <!--th>Image</th-->
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
        <?php
        // $i=1;
        if ($this->uri->segment(3)==''){
          $i=1;
         }
         else{
          $i =$this->uri->segment(3)+1; // Initialize $i before the loop
         }
        foreach($result as $res){
         
          //$i
        ?>
            <tr id="row<?php echo $res['id'] ?>">
            <td><?php echo $i;?></td>
            <td><?php echo $res['name'] ?></td>
           
            <td><?php if ($res['active']==1){ echo "Active"; } else if ($res['active']==0){ echo "InActive";}
            else{
                //echo "Floor";
            }
            
            ?></td>
            <?php 
            $imgpath="gallery";
             ?>
            <!--td>
            <img  style="height:8em; width:7em" src=<?php //echo base_url().'uploads/services/'.$res['picture']?> >
            </td-->
           <td>
           <a href="<?php echo base_url().'admin/editservices/'.$res['serviceid'];?>"><button class="btn btn-success" >
                Edit
            </button></a> 
            <!--button class="delete btn btn-danger"><a href="#" onclick="delrow(<?php //echo $res['id'];?>)">
                Delete
            </button-->
            <a onclick="return confirm('Are you sure you want to delete this item?');" href="<?php echo base_url().'admin/deleteservices/'.$res['serviceid'];?>">
            <button class="btn btn-danger" >
               Delete
            </button></a>
            </td>
          </tr>          
        <?php
        $i++;
        }
        ?>      
                           
        </tbody>
      </table>
      <div class="row">
      <div class="col-md-10"></div>
      <div class="col-md-2"><?php  echo "".$links;?></div></div>
    </div>
     
  </div>

  

<!-- ############ PAGE END-->

    </div>
  </div>
  <!-- / -->

  <!-- theme switcher -->
  
  <!-- / -->

<!-- ############ LAYOUT END-->

  </div>
<!-- build:js scripts/app.html.js -->
<!-- jQuery -->
 <script>
    function delrow(id){
$.ajax({
            type: 'GET',
            url: "<?php echo base_url().'Admin/deletefaq';?>",
            data:{id:id},
            success:function(data){
                $("#row"+id).remove();
                $("#msg").html(data);
            }
        });

}
    </script>
    <!-- ajax -->
  <!-- <script src="./libs/jquery/jquery-pjax/jquery.pjax.js"></script>
  <script src="scripts/ajax.js"></script> -->
<!-- endbuild -->

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


</body>
</html>
    