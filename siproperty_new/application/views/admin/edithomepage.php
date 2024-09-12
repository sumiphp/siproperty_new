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
                  <a class="nav-link" href="<?php echo base_url().'Admin/edithomepage'?>">
                    <i class="fa fa-fw fa-arrow-left text-muted"></i>
                    <span>Home Page</span>
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
  <h6>Edit Home Page</h6>
  <p>
  Fill out the required details.
  </p>
  <span id="msg" class="text-success"></span><br>
  <!--form id="edit" role="form" class="mt-2" method="post" enctype="multipart/form-data"--->
  <?php if ($this->session->flashdata('flash_msghm')): ?>
            <div class="alert alert-success">
                <?php echo $this->session->flashdata('flash_msghm'); ?>
            </div>
        <?php endif; ?>
  <form action="<?= base_url('admin/edithomeprocess'); ?>" method="post" enctype="multipart/form-data">

  <?php 
  //print_r($result);
  
  
  //foreach ($result as $re){ ?>
  <div class="p-x-xs">
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Label1</label>
      <div class="col-sm-6">
        <input type="text" class="form-control rounded" name='label1' id='label1' required value="<?php echo $re->label1;?>">
      </div>
    </div>

   
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Content1</label>
      <div class="col-sm-6">
        <textarea class="form-control" rows="5" name='desc1' id='desc1' required ><?php echo $re->desc1;?></textarea>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Content2</label>
      <div class="col-sm-6">
        <textarea class="form-control" rows="5" name='desc2' id='desc2' required ><?php echo $re->desc2;?></textarea>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Content3</label>
      <div class="col-sm-6">
        <textarea class="form-control" rows="5" name='desc3' id='desc3' required ><?php echo $re2->desc3;?></textarea>
      </div>
    </div>

    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Label2</label>
      <div class="col-sm-6">
        <input type="text" class="form-control rounded" name='label2' id='label2' required value="<?php echo $re->label2;?>">
      </div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Label3</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label3' id='label3' required value="<?php echo $re->label3;?>">
      </div>
    </div>
    

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Label4</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label4' id='label4' required value="<?php echo $re->label4;?>">
      </div>
    </div>
    

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Label5</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label5' id='label5' required value="<?php echo $re->label5;?>">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Label6</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label6' id='label6' required value="<?php echo $re->label6;?>">
      </div>
    </div>
    

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Label7</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label7' id='label7' required value="<?php echo $re2->label7;?>">
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Label8</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label8' id='label8' required value="<?php echo $re2->label8;?>">
      </div>
    </div>


    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Label9</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label9' id='label9' required value="<?php echo $re2->label9;?>">
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Label10</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label10' id='label10' required value="<?php echo $re2->label10;?>">
      </div>
    </div>



    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Blog content</label>
      <div class="col-sm-6">
      <textarea class="form-control" rows="5" name='desc5' id='desc5' required ><?php echo $re2->desc5;?></textarea>
      </div>
    </div>
    
   
        <div class="form-group row">
      <label class="col-sm-2 form-control-label">Content4</label>
      <div class="col-sm-6">
        <textarea class="form-control" rows="5" name='desc6' id='desc6' required ><?php echo $re2->desc6;?></textarea>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Content5</label>
      <div class="col-sm-6">
        <textarea class="form-control" rows="5" name='desc7' id='desc7' required ><?php echo $re2->desc7;?></textarea>
      </div>
    </div>


    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Content6</label>
      <div class="col-sm-6">
        <textarea class="form-control" rows="5" name='desc8' id='desc8' required ><?php echo $re2->desc8;?></textarea>
      </div>
    </div>


    <div class="form-group row">
      <label class="col-sm-2 form-control-label" for="input-id-1">Chairmanmessage</label>
      <div class="col-sm-6">
      <textarea class="form-control" rows="5" name='desc9' id='desc9' required ><?php echo $re2->chairmanmessage;?></textarea>
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Name</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='name' id='name' required value="<?php echo $re2->name;?>">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Designation</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='designation' id='designation' required value="<?php echo $re2->designation;?>">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Happy Clients</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label11' id='label11' required value="<?php echo $re2->happyclients;?>">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Completed Projects</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label12' id='label12' required value="<?php echo $re2->completedprojects;?>">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Ongoing Projects</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label13' id='label13' required value="<?php echo $re2->ongoingprojects;?>">
      </div>
    </div>
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Year of experience</label>
      <div class="col-sm-6">
        <input type="text"  class="form-control rounded" placeholder="" name='label14' id='label14' required value="<?php echo $re2->yearofexperience;?>">
      </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 form-control-label">Chairman Picture</label>
      
        <div class="col-sm-6">
        <input type="file"  class="form-control" id="image1" name="image1">

        <img class="mt-3" src="<?php echo base_url().'uploads/homepage/'.$re2->chimage1;?>" width="100" height="100" />
           
        </div>
    </div>          
     
        <div class="form-group row">
        <label class="col-sm-2 form-control-label">Video</label>
      
        <div class="col-sm-6">
        <input type="file"  class="form-control" id="image2" name="image2">

        <!--img class="mt-3" src="<?php //echo base_url().'uploads/video/'.$re2->videourl;?>" width="100" height="100" /-->

        <video width="50%" controls autoplay muted>
                                <source src="<?php echo base_url().'uploads/video/'.$re2->videourl;?>" type="video/mp4">
                                no=Your browser does not support the video tag.
                            </video>
           
        </div>
    </div>

   
    <?php //} ?>
    
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
        /*document.getElementById('image1').addEventListener('change', function() {
            var file = this.files[0];
            var fileName = file ? file.name : 'No file selected';
            document.getElementById('image1').textContent = fileName;
            document.getElementById('image1').href = URL.createObjectURL(file);
            
            if (file && file.type.startsWith('image/')) {
                var img = document.getElementById('image1');
                img.src = URL.createObjectURL(file);
                img.style.display = 'block';
            } else {
                document.getElementById('image1').style.display = 'none';
            }
        });*/
    </script>



<script>
$('#edit').on('submit', function (e) {
    e.preventDefault();
    // alert("add");
       //var file_data1 = $('#image1').prop('files')[0];
       //var file_data2 = $('#image2').prop('files')[0];
        var label1=$('#label1').val();
        var label2=$('#label2').val();
        var label3=$('#label3').val();
        var label4=$('#label4').val();
        var label5=$('#label5').val();
        var label6=$('#label6').val();
        var label7=$('#label7').val();
        var label8=$('#label8').val();
        //var footercontent=$('#footercontent').val();
        //alert(title);
        //var TwitterLink=$("#TwitterLink").val();                
        var desc1=$('#desc1').val();
        var desc2=$('#desc2').val();
        var desc3=$('#desc3').val();
        var desc5=$('#desc5').val();
        //var YouTubeLink=$('#YouTubeLink').val();
        var desc6=$('#desc6').val();
        var desc7=$('#desc7').val();
        var desc8=$('#desc8').val();
        var form_data = new FormData();
        //form_data.append('image1', file_data1);
        //form_data.append('image2', file_data2);
        form_data.append('desc1',desc1);
        form_data.append('desc2',desc2);
        form_data.append('desc3',desc3);
        form_data.append('desc5',desc5);
        form_data.append('label1',label1);
        form_data.append('label2',label2);
        form_data.append('label3',label3);
        form_data.append('label4',label4);
        form_data.append('label5',label5);
        form_data.append('label6',label6);
        form_data.append('label7',label7);
        form_data.append('label8',label8);
        form_data.append('desc5',desc5);
        form_data.append('desc6',desc6);
        form_data.append('desc7',desc7);
        form_data.append('desc8',desc8);
        //form_data.append('label4',label4);
       
        $.ajax({
            url: "<?php echo base_url().'Admin/edithomeprocess';?>", // point to server-side controller method
            dataType: 'text', // what to expect back from the server
            cache: false,
            contentType: false,
            processData: false,
            data: form_data,
            type: 'post',
            success: function (response) {
                //$('#image1').val('');
                //$('#image1').val('');
                //$('#image2').val('');
                //$('#desc1').val('');
                //$('#desc2').val('');
                //$('#desc3').val('');
               
                $('input[type=text]').each(function() {
                  $(this).val('');
    });
    
                //$('#msg').html(response); // display success response from the server
             window.location.href ="<?php echo base_url().'Admin/edithomepage';?>";
            },
            error: function (response) {
                //$('#msg').html(response); // display error response from the server
                window.location.href ="<?php echo base_url().'Admin/edithomepage';?>";
            }
        });
    });






</script>













</body>
</html>
