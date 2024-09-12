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

  <!-- aside -->
 <?php
 include('sidebar.php');
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
                <!-- <li class="nav-item dropdown">
                  <a class="nav-link" href data-toggle="dropdown">
                    <i class="fa fa-fw fa-plus text-muted"></i>
                    <span>New</span>
                  </a>
                  <div ui-include="<?php echo base_url().'assets/views/blocks/dropdown.new.html'?>"></div>
                </li> -->
                <h4>Carousel</h4>
              </ul>
        
              <div ui-include="<?php echo base_url().'assets/views/blocks/navbar.form.html'?>"></div>
              <!-- / -->
            </div>
           
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
  <div class="row">
    <div class="col-md-12">
      <div class="box">
        <div class="box-header">
          <h2>Edit Carousel</h2>
          <!-- <small>Individual form controls receive some global styling. All textual &lt;input>, &lt;textarea>, and &lt;select> elements with .form-control are set to width: 100%; by default. Wrap labels and controls in .form-group for optimum spacing.</small> -->
        </div>
        <div class="box-divider m-0"></div>
        <div class="box-body">

        <?php if ($this->session->flashdata('flash_msgcad')): ?>
            <div class="alert alert-success">
                <?php echo $this->session->flashdata('flash_msgcad'); ?>
            </div>
        <?php endif; ?>




        <span id="solmsg" class="text-success"></span><br>
          <form id="editcarousal" role="form" class="mt-2" method="post" enctype="multipart/form-data">
            <div class="form-group">
              <label for="exampleInputEmail1">Enter title 1</label>
              <input type="text" class="form-control" value="<?php echo $result->maintitle;?>" placeholder="Enter title 1" id="title" name="title">
              <input type="hidden" class="form-control" id="id" name="id" value="<?php echo $result->id;?>" placeholder="Enter Menu Name" required>
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Enter title 2</label>
              <input type="text" class="form-control" value="<?php echo $result->subtitle;?>" placeholder="Enter title 2" id="title2" name="title2">
            </div>
          
            <label for="status" class="form-label">Status:</label>   
               <select class="form-control" placeholder="Select Status" name="status" id="status"  data-bs-original-title="" title="" required>
                <option value=''>Select Status</option>
                <option value="1"  <?php if ($result->active=='1'){?> selected <?php }?>>Active </option>
                <option value="0"  <?php if ($result->active=='0'){?> selected <?php }?>>Inactive </option></select>                                                           
             
                <img class="mt-3" src="<?php echo base_url().'uploads/carousel/'.$result->picture;?>" width="100" height="100" />
            <div class="form-group mt-2">
              <label for="exampleInputFile">File input</label>
              <input type="file"  class="form-control" id="image1" name="image1">
              
            </div>
          
            <button type="submit" class="btn btn-success m-b"  id="uploadsub" name="subbtn">Submit</button>
          </form>
        </div>
      </div>
    </div>
    
    
  </div>
</div>

<!-- ############ PAGE END-->

    </div>
  </div>
 

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
<!-- endbuild -->
 
<script>
$('#editcarousal').on('submit', function (e) {
    e.preventDefault();
  //  alert("add");
       var file_data1 = $('#image1').prop('files')[0];
       
        
        var status=$("#status").val();
       
        var title=$('#title').val();
        var title2=$('#title2').val();
        var id=$("#id").val();
        var form_data = new FormData();
        form_data.append('image1', file_data1);
        form_data.append('title2',title2);
        form_data.append('maintitle',title);
         form_data.append('id',id);
        form_data.append('status',status);
        // form_data.append('showinfront',showinfront);
       
        $.ajax({
            url: "<?php echo base_url().'Admin/editcarousalprocess';?>", // point to server-side controller method
            dataType: 'text', // what to expect back from the server
            cache: false,
            contentType: false,
            processData: false,
            data: form_data,
            type: 'post',
            success: function (response) {
                $('#image1').val('');
               
                $('input[type=text]').each(function() {
        $(this).val('');
    });
    
                //$('#msg').html(response); // display success response from the server
                window.location.href ="<?php echo base_url().'Admin/listcarousel';?>";
            },
            error: function (response) {
                //$('#msg').html(response); // display error response from the server
                window.location.href ="<?php echo base_url().'Admin/listcarousel';?>";
            }
        });
    });






</script>
</body>
</html>
