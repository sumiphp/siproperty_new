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
  <link rel="shortcut icon" sizes="196x196" href="<?php echo base_url().'assets/images/logo.png'?>">
  
  <!-- style -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/animate.css/animate.min.css" type="text/css'?>" />
  <link rel="stylesheet" href="<?php echo base_url().'assets/glyphicons/glyphicons.css'?>" type="text/css" />
  <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>" type="text/css" />
  <link rel="stylesheet" href="<?php echo base_url().'assets/material-design-icons/material-design-icons.css'?>" type="text/css" />

  <link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/dist/css/bootstrap.min.css'?>" type="text/css" />
  <!-- build:css ../assets/styles/app.min.css -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/styles/app.css" type="text/css'?>" />
  <!-- endbuild -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/styles/font.css" type="text/css'?>" />
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
        width: 100px; /* Set the desired width */
        height: 100px; /* Set the desired height */
        margin-right: 8px;
        display: none; /* Hide the image initially */
    }
    .form-file button {
    white-space: nowrap;
    
}
.center-container {
  display: flex;
  justify-content: center;
  align-items: center;
}
</style>

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
        	      <span class="block _500">Jean Reyes</span>
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
                  <a class="nav-link" href data-toggle="dropdown">
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
              <li class="nav-item dropdown pos-stc-xs">
                <a class="nav-link mr-2" href data-toggle="dropdown">
                  <i class="material-icons">&#xe7f5;</i>
                  <span class="label label-sm up warn">3</span>
                </a>
                <div ui-include="<?php echo base_url().'assets/views/blocks/dropdown.notification.html'?>"></div>
              </li>
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
        <div class="nav">
          <a class="nav-link" href="">About</a>
          <a class="nav-link" href="http://themeforest.net/user/flatfull/portfolio?ref=flatfull">Get it</a>
        </div>
      </div>
    </div>
    <div ui-view class="app-body" id="view">

<!-- ############ PAGE START-->
<div class="padding">
    <form action="<?= base_url('admin/updatecontents'); ?>" method="post" enctype="multipart/form-data">
        <div class="row">
            <div class="col-sm-6">
                <div class="box">
                    <div class="box-header">
                        <h2>Our Story</h2>
                    </div>
                    <div class="box-body">
                        <?php foreach ($home_story as $story): ?>
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" name="title1" class="form-control" value="<?= $story['title']; ?>"  >                        
                            </div>
                            <div class="form-group" style="height: 200px;">
                                <label>Message</label>
                                <textarea name="contents1" class="form-control" rows="6" data-minwords="6"  ><?= $story['contents']; ?></textarea>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="box">
                    <div class="box-header">
                        <h2>Section</h2>
                    </div>
                    <div class="box-body">
                        <?php foreach ($home_section as $section): ?>
                            <div class="row m-b">
                                <div class="col-sm-6">
                                    <label>Title 1</label>
                                    <input type="text" name="section_heading1" class="form-control" value="<?= $section['title1']; ?>"  >
                                </div>
                                <div class="col-sm-6">
                                    <label>Title 2</label>
                                    <input type="text" name="section_heading2" class="form-control" value="<?= $section['title2']; ?>"  >
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Url 1</label>
                                <input type="url" name="section_url1" class="form-control" value="<?= $section['url1']; ?>"  >
                            </div>
                            <div class="form-group">
                                <label>Url 2</label>
                                <input type="url" name="section_url2" class="form-control" value="<?= $section['url2']; ?>"  >
                            </div>
                            <div class="col-sm-9">
                                    <img style="height:8em; width:7em" src="<?php echo base_url().'uploads/section/'.$section['bgpic']; ?>" >
                                    <input type="hidden" name="existing_bgpic" value="<?php echo $section['bgpic']; ?>">
                                    <input type="file" name="bgpic" class="form-control">
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6">
                <div class="box">
                    <div class="box-header">
                        <h2>Reason to Choose </h2>
                    </div>
                    <div class="box-body">
                        <?php foreach ($home_reason as $reason): ?>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">Heading 1</label>
                                <div class="col-sm-9">
                                    <input type="text" name="reason_heading1" class="form-control" value="<?= $reason['heading1']; ?>"  >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">Sub heading 1</label>
                                <div class="col-sm-9">
                                    <textarea name="reason_subheading1" class="form-control" rows="6" data-minwords="6"  ><?= $reason['subheading1']; ?></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">Heading 2</label>
                                <div class="col-sm-9">
                                    <input type="text" name="reason_heading2" class="form-control" value="<?= $reason['heading2']; ?>"  >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">Sub heading 2</label>
                                <div class="col-sm-9">
                                    <textarea name="reason_subheading2" class="form-control" rows="6" data-minwords="6"  ><?= $reason['subheading2']; ?></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">Heading 3</label>
                                <div class="col-sm-9">
                                    <input type="text" name="reason_heading3" class="form-control" value="<?= $reason['heading3']; ?>"  >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">Sub heading 3</label>
                                <div class="col-sm-9">
                                    <textarea name="reason_subheading3" class="form-control" rows="6" data-minwords="6"  ><?= $reason['subheading3']; ?></textarea>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="box">
                    <div class="box-header">
                        <h2>About</h2>
                    </div>
                    <div class="box-body">
                        <?php foreach ($home_ceo as $ceo): ?>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">Ceo name</label>
                                <div class="col-sm-9">
                                    <input type="text" name="ceo_name" class="form-control" value="<?= $ceo['name']; ?>"  >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">Ceo designation</label>
                                <div class="col-sm-9">
                                    <input type="text" name="ceo_designation" class="form-control" value="<?= $ceo['designation']; ?>"  >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-sm-3 form-control-label">Ceo comment</label>
                                <div class="col-sm-9">
                                    <textarea name="ceo_comment" class="form-control" rows="6" data-minwords="6"  ><?= $ceo['comment']; ?></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
    <label class="col-sm-3 form-control-label">Profile Picture</label>
    <div class="col-sm-9">
        <img style="height:8em; width:7em" src="<?php echo base_url().'uploads/ceo/'.$ceo['profilepic']; ?>" >
        <input type="hidden" name="existing_profilepic" value="<?php echo $ceo['profilepic']; ?>">
        <input type="file" name="ceo_profile_picture" class="form-control">
    </div>
</div>

<div class="form-group row">
    <label class="col-sm-3 form-control-label">About Video</label>
    <div class="col-sm-9">
        <video style="height:8em; width:20em" controls>
            <source src="<?php echo base_url().'uploads/ceo/video/'.$ceo['aboutvideo']; ?>" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        <input type="hidden" name="existing_aboutvideo" value="<?php echo $ceo['aboutvideo']; ?>">
        <input type="file" name="video1" class="form-control">
    </div>
</div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Update</button>
        </div>
    </form>
</div>

<!-- ############ PAGE END-->

    </div>
  </div>
  <!-- / -->

  
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
<!-- endbuild -->
<script>
  document.getElementById('fileInput1').addEventListener('change', function() {
    handleFileChange(this, 'fileName1', 'fileImage1');
});

document.getElementById('fileInput2').addEventListener('change', function() {
    handleFileChange(this, 'fileName2', 'fileImage2');
});

document.getElementById('fileInput1').addEventListener('change', function() {
    handleFileChange(this, 'fileName1', 'fileImage1', 'img');
});

document.getElementById('fileInput2').addEventListener('change', function() {
    handleFileChange(this, 'fileName2', 'fileVideo2', 'video');
});

function handleFileChange(input, fileNameId, mediaId, mediaType) {
    var file = input.files[0];
    var fileName = file ? file.name : 'No file selected';
    document.getElementById(fileNameId).textContent = fileName;
    document.getElementById(fileNameId).href = URL.createObjectURL(file);
    
    var mediaElement = document.getElementById(mediaId);
    if (file && file.type.startsWith(mediaType + '/')) {
        mediaElement.src = URL.createObjectURL(file);
        mediaElement.style.display = 'block';
    } else {
        mediaElement.style.display = 'none';
    }
}


</script>
</body>
</html>
