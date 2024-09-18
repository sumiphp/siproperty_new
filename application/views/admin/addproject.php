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

  
  <!-- style -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/animate.css/animate.min.css'?>" type="text/css" />
  <link rel="stylesheet" href="<?php echo base_url().'assets/glyphicons/glyphicons.css'?>" type="text/css" />
  <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>" type="text/css" />
  <link rel="stylesheet" href="<?php echo base_url().'assets/material-design-icons/material-design-icons.css'?>" type="text/css" />

  <link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/dist/css/bootstrap.min.css'?>" type="text/css" />
  <!-- build:css ../assets/styles/app.min.css -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/styles/app.css'?>" type="text/css" />
  <!-- endbuild -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/styles/font.css'?>" type="text/css" />
  <style>
        .form-file {
            display: flex;
            align-items: center;
        }
        .form-file input[type="file"] {
            display: none;
        }
        .form-file a {
            margin-right: 10px;
            text-decoration: none;
            color: #000;
        }
        .form-file img {
            width: 110px; /* Set the desired width */
            height: 110px; /* Set the desired height */
            margin-right: 10px;
            display: none; /* Hide the image initially */
        }
    </style>
</head>
<body>
 

<!-- ############ LAYOUT START-->

  <!-- aside -->
 <?php 
 include "sidebar.php";
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
                  <a class="nav-link" href="<?php echo base_url().'Admin/addproject'?>">
                    <i class="fa fa-fw fa-arrow-left text-muted"></i>
                    <span>Project</span>
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
       
      </div>
    </div>
    <div ui-view class="app-body" id="view">

<!-- ############ PAGE START-->
<div class="padding">
  <h6>Add Projects</h6>
  <p>
  Fill out the required details.
  </p>
  <?php if ($this->session->flashdata('messageap')): ?>
            <div class="alert alert-success">
                <?php echo $this->session->flashdata('messageap'); ?>
            </div>
        <?php endif; ?>

        <?php if ($this->session->flashdata('error')): ?>
            <div class="alert alert-danger">
                <?php echo $this->session->flashdata('error'); ?>
            </div>
        <?php endif; ?>
  <form action="<?= base_url('admin/addprojectprocess'); ?>" method="post" enctype="multipart/form-data">
  <span id="solmsg" class="text-success"></span><br>
  <div class="p-x-xs">

  <div class="form-group row">
      <label class="col-sm-2 form-control-label">Categories</label>
      <div class="col-sm-6">
       <select class="form-control rounded" id="categories" name="categories" required>
            <option value="">Select</option>
            <?php foreach($cat as $ct){?>
            <option value="<?php echo $ct['cat_id'];?>"><?php echo $ct['cat_name'];?> </option>
            <?php } ?>
            <!--option value="1">Completed</option-->           
        </select><!-- /btn-group -->        
        </div>      
        </div>




  <!--div class="form-group row">
      <label class="col-sm-2 form-control-label">Project Status</label>
      <div class="col-sm-6">
       <select class="form-control rounded" id="prjstatus" name="prjstatus" required>
            <option value="">Select</option>
            <option value="0">Ongoing </option>
            <option value="1">Completed</option>           
        </select>       
        </div>      
        </div-->




    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Project Name</label>
      <div class="col-sm-6">
        <input type="text" name="projetname" class="form-control rounded" required>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Price Starts from</label>
      <div class="col-sm-6">
        <input type="text" name="pricestart" class="form-control rounded" required>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Project Descripition</label>
      <div class="col-sm-6">
        <textarea class="form-control" name="projectdescripition" rows="5" required></textarea>
      </div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label" for="input-id-1">No of Bed room</label>
      <div class="col-sm-6">
        <input type="text" class="form-control rounded" name="no_bed" id="input-id-1" required>
      </div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">No of Bathroom</label>
      <div class="col-sm-6">
        <input type="text" name="no_bathroom" class="form-control rounded" required>
      </div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Square feet</label>
      <div class="col-sm-6">
        <input type="text" name="no_square"  class="form-control rounded" placeholder="" required>
      </div>
    </div>




    <div class="form-group row">
      <label class="col-sm-2 form-control-label" for="input-id-1">Property Id</label>
      <div class="col-sm-6">
        <input type="text" class="form-control rounded" name="propertyid" id="input-id-1" required>
      </div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Rooms</label>
      <div class="col-sm-6">
        <input type="text" name="rooms" class="form-control rounded" required>
      </div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Garage Size</label>
      <div class="col-sm-6">
        <input type="text" name="garagesize"  class="form-control rounded" placeholder="" required>
      </div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">No of Garage</label>
      <div class="col-sm-6">
        <input type="text" name="noofgarage"  class="form-control rounded" placeholder="" required>
      </div>
    </div>









    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Project Status</label>
      <div class="col-sm-6">
       <select class="form-control rounded" id="prjstatus" name="prjstatus" required>
            <option value="">select</option>
            <option value="0">Ongoing </option>
            <option value="1">Completed</option>           
        </select><!-- /btn-group -->        
        </div>      
        </div>

        <div class="form-group row">
      <label class="col-sm-2 form-control-label">Status</label>
      <div class="col-sm-6">
       <select class="form-control rounded" id="status" name="status" required>
            <option value="">select</option>
            <option value="1">Active </option>
            <option value="0">Not Active</option>           
        </select><!-- /btn-group -->        
        </div>      
        </div>
        <!--div class="form-group row">
      <label class="col-sm-2 form-control-label">Show in Carousel</label>
      <div class="col-sm-6">
       <select class="form-control rounded" id="show" name="show" required>
            <option value="">select</option>
            <option value="1">Yes </option>
            <option value="0">No</option>           
        </select>       
        </div>      
        </div-->
                 
     
        <div class="form-group row">
        <label class="col-sm-2 form-control-label">File input Main Image</label>
        <div class="col-sm-6">
        <div class="col-sm-9">
            
            <input type="file" name="projectpic" class="form-control" required>
    </div>
        </div>
    </div>


   








    
    
    
    <div class="form-group row m-t-lg">
      <div class="col-sm-4 col-sm-offset-2">
        
        <button type="submit" class="btn btn-success">Save changes</button>
      </div>
    </div>
  </form>
</div>

<!-- ############ PAGE END-->

    </div>
  </div>
  <!-- / -->


  

<!-- ############ LAYOUT END-->

  </div>
<!-- build:js scripts/app.html.js -->
<!-- jQuery -->
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

  <script>
        document.getElementById('fileInput').addEventListener('change', function() {
            var file = this.files[0];
            var fileName = file ? file.name : 'No file selected';
            document.getElementById('fileName').textContent = fileName;
            document.getElementById('fileName').href = URL.createObjectURL(file);
            
            if (file && file.type.startsWith('image/')) {
                var img = document.getElementById('fileImage');
                img.src = URL.createObjectURL(file);
                img.style.display = 'block';
            } else {
                document.getElementById('fileImage').style.display = 'none';
            }
        });
    </script>
</body>
</html>
