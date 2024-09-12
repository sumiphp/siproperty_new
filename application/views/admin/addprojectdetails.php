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
                  <a class="nav-link" href="<?php echo base_url().'Admin/listongoingprojects'?>">
                    <i class="fa fa-fw fa-arrow-left text-muted"></i>
                    <span>Project details</span>
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
  <h6>Add/Edit Project details</h6>
  <p>
  Fill out the required details.
  </p>
  <?php 
  error_reporting(0);
  
  
  if ($this->session->flashdata('message')): ?>
            <div class="alert alert-success">
                <?php echo $this->session->flashdata('message'); ?>
            </div>
        <?php endif; ?>

        <?php if ($this->session->flashdata('error')): ?>
            <div class="alert alert-danger">
                <?php echo $this->session->flashdata('error'); ?>
            </div>
        <?php endif; ?>
  <form action="<?= base_url('admin/editprojectdetailsprocess'); ?>" method="post" enctype="multipart/form-data">
  <span id="solmsg" class="text-success"></span><br>
  <div class="p-x-xs">


  





    <div class="form-group row">
    <?php //foreach ($project as $ceo): ?>
      <label class="col-sm-2 form-control-label">Project BHK</label>
      <div class="col-sm-6">
        <input type="text" name="bhk" class="form-control rounded" value="<?= $ceo->bhk; ?>" required>
      </div>
    </div>
    <input type="hidden" class="form-control" id="id" name="id" value="<?=$this->uri->segment(3);?>" placeholder="Enter Menu Name" required>
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Project Type</label>
      <div class="col-sm-6">
        <input type="text" name="propertytype" class="form-control rounded" value="<?= $ceo->propertytype; ?>" required>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Year built</label>
      <div class="col-sm-6">
        <textarea class="form-control" name="yearbuilt" rows="5" required ><?= $ceo->yearbuilt; ?></textarea>
      </div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Project Descripition</label>
      <div class="col-sm-6">
        <textarea class="form-control" name="projectdescripition" rows="5" required ><?= $ceo->project_descripition; ?></textarea>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">First floor Descripition</label>
      <div class="col-sm-6">
        <textarea class="form-control" name="firstfloordesc" rows="5" required ><?= $ceo->firstfloordesc; ?></textarea>
      </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 form-control-label">File input</label>
        <div class="col-sm-6">
        <div class="col-sm-9">
            
            <input type="file" name="image1" class="form-control" >
    </div>
    <img style="height:8em; width:7em" src="<?php echo base_url('uploads/project/' . $ceo->firstfloordiscp1); ?>" alt="Product Image">
        </div>
    </div>



    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Second floor Descripition</label>
      <div class="col-sm-6">
        <textarea class="form-control" name="secfloordesc" rows="5" required><?= $ceo->secfloordesc; ?></textarea>
      </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 form-control-label">File input</label>
        <div class="col-sm-6">
        <div class="col-sm-9">
            
            <input type="file" name="image2" class="form-control" >
            <img style="height:8em; width:7em" src="<?php echo base_url('uploads/project/' . $ceo->secfloordescp1); ?>" alt="Product Image">

    </div>
        </div>
    </div>










    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Third floor Descripition</label>
      <div class="col-sm-6">
        <textarea class="form-control" name="thirdfloordescp" rows="5" required><?= $ceo->thirdfloordescp; ?></textarea>
      </div>
    </div>

    <div class="form-group row">
        <label class="col-sm-2 form-control-label">File input</label>
        <div class="col-sm-6">
        <div class="col-sm-9">
            
            <input type="file" name="image3" class="form-control" >
            <img style="height:8em; width:7em" src="<?php echo base_url('uploads/project/' . $ceo->thirdfloordescp1); ?>" alt="Product Image">
    </div>
        </div>
    </div>


    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Amenities(Seperated by comma)</label>
      <div class="col-sm-6">
        <!--textarea class="form-control" name="amenities" rows="5" required ><?//= $ceo->amenities; ?></textarea-->
        <select class="form-control rounded" id="amenities" name="amenities[]" required multiple>
            <option value="">Select</option>
            <?php 
$i=0;

$am=$ceo->amenities;
$am1=explode(",",$am);
foreach($amn as $am){?>
            <option value="<?php echo $am['amenities'];?>" <?php if (in_array($am['amenities'],$am1)){?> selected <?php }?>><?php echo $am['amenities'];?></option>
            <?php } ?>
            <!--option value="1">Completed</option-->           
        </select>
       









      </div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label" for="input-id-1">Project Location</label>
      <div class="col-sm-6">
        <input type="text" class="form-control rounded" required name="prjlocation" id="prjlocation" value="<?= $ceo->prjlocation; ?>">
      </div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Project Address</label>
      <div class="col-sm-6">
        <input type="text" name="prjaddress" required class="form-control rounded" value="<?= $ceo->prjaddress; ?>">
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Education details(Seperated by comma)</label>
      <div class="col-sm-6">
        <textarea class="form-control" required name="edescripition" rows="5" ><?= $ceo->educationdetails; ?></textarea>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Education details in km(Seperated by comma)</label>
      <div class="col-sm-6">
        <textarea class="form-control" required name="eddescripition" rows="5" ><?= $ceo->edudist; ?></textarea>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Hospital details(Seperated by comma)</label>
      <div class="col-sm-6">
        <textarea class="form-control" required name="hosp" rows="5" ><?= $ceo->hosp; ?></textarea>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Hospital details in km(Seperated by comma)</label>
      <div class="col-sm-6">
        <textarea class="form-control" required name="hospdist" rows="5" ><?= $ceo->hospdist; ?></textarea>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Nearest Bus Station in km</label>
      <div class="col-sm-6">
        <textarea class="form-control" required name="tbus" rows="5" ><?= $ceo->tbus; ?></textarea>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Nearest Airport in km</label>
      <div class="col-sm-6">
        <textarea class="form-control" required name="airport" rows="5" ><?= $ceo->airport; ?></textarea>
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Nearest Railway in km</label>
      <div class="col-sm-6">
        <textarea class="form-control" required name="railway" rows="5" ><?= $ceo->railway; ?></textarea>
      </div>
    </div>
    
    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Video Url</label>
      <div class="col-sm-6">
        <input type="text" name="videourl" required class="form-control rounded" value="<?= $ceo->videourl; ?>">
      </div>
    </div>

    <div class="form-group row">
      <label class="col-sm-2 form-control-label">Gmap Url</label>
      <div class="col-sm-6">
        <input type="text" name="gmapurl"  required class="form-control rounded" value="<?= $ceo->gmapurl; ?>">
      </div>
    </div>


    <div class="form-group row">
        <label class="col-sm-2 form-control-label">File input Other Images</label>
        <div class="col-sm-6">
        <div class="col-sm-9">
            
            <input type="file" name="file[]" class="form-control" multiple >
    </div>


    <?php
 $op=$ceo->otherpictures;
$pic=explode(',',$op);
    ?>
        <?php 
$i=0;

foreach($pic as $pi){?>

        <img class="mt-3" src="<?php echo base_url().'uploads/project/'.$pi;?>" width="100" height="100" />
        <?php
                            $i++;
                            
                            }?>



        </div>
       

    </div>

    

    <!--div class="form-group row">
        <label class="col-sm-2 form-control-label">File input</label>
      
        <div class="col-sm-6">
        <input type="file"  class="form-control" id="image1" name="image1"-->
        <?php 
//$i=0;

//foreach($pic as $pi){?>

        <!--img class="mt-3" src="<?php //echo base_url().'uploads/project/'.$pi;?>" width="100" height="100" /-->
        <?php
                            //$i++;
                            
                            //}?>
        <!--/div-->


   
  

    <!--div class="form-group row">
      <label class="col-sm-2 form-control-label">Gmap Url</label>
      <div class="col-sm-6">
        <input type="text" name="no_square"  class="form-control rounded" value="<?//=$ceo['gmapurl']; ?>">
      </div>
    </div-->
    
    <!--div class="form-group row">
      <label class="col-sm-2 form-control-label">Project Status</label>
      <div class="col-sm-6">
      <select class="form-control rounded" id="prjstatus" name="prjstatus">
            <option value="">select</option>
         
            <option value="0" <?php //if ($ceo['project_status']==0){?> selected <?php //} ?>>Ongoing </option>
            <option value="1" <?php //if ($ceo['project_status']==1){?> selected <?php //} ?>>Completed</option> 


        </select>    
        </div>      
        </div-->

        <!--div class="form-group row">
      <label class="col-sm-2 form-control-label">Status</label>
      <div class="col-sm-6">
      <select class="form-control rounded" id="status" name="status">
            <option value="">select</option>
            <option value="1" <?php //if ($ceo['status']==1){?> selected <?php //} ?>>Active </option>
            <option value="0" <?php //if ($ceo['status']==0){?> selected <?php //} ?>>Not Active</option>            
        </select>     
        </div>      
        </div-->
        
                 
     
        <!--div class="form-group row">
        <label class="col-sm-2 form-control-label">File input</label-->
        <?php //endforeach; ?>
        <!--div class="col-sm-6">
        <div class="col-sm-9">
            
            <input type="file" name="projectpic" class="form-control">
    </div>
        </div-->
    </div>


    <!--div class="page-content page-container" id="page-content">
     <div class="padding">
         <div class="row container d-flex justify-content-center">
             <div class="col-lg-8 grid-margin stretch-card">
                 <div class="card">
                     <div class="card-body">
                         <h4 class="card-title text-center">Add and Remove Floor</h4>
                         <hr>
                         <div class="table-responsive">
                             <table id="faqs" class="table table-hover">
                                 <thead>
                                     <tr>
                                         <th>Floor</th>
                                         <th>Floor Description</th>
                                         <th>Picture</th>
                                         <th>Delete</th>
                                     </tr>
                                 </thead>
                                 <tbody>
                                  <?php 
                                  
                                  //$i=0;
                                  //foreach($fl as $fl){
                                    //$i++;
                                    ?>
                                     <tr id="faqs-row<?php //echo $i;?>">
                                         <td><input type="text" class="form-control" placeholder="Floor name" name="nm<?php echo $i;?>" value="<?php echo $fl['floorname'];?>"> </td>
                                         <td><textarea class="form-control" name="desc<?php echo $i;?>"><?php echo $fl['floordesc'];?></textarea></td>
                                         <td><input type="file"  class="form-control" name="fl<?php echo $i;?>"> <img src="<?php echo base_url().'/uploads/project/'.$fl['picture'];?>" width="50" height="50" /></td>
                                         <td class="mt-10"><button type='button' class="badge badge-danger" onclick=del(<?php echo $i;?>);><i class="fa fa-trash"></i> Delete</button></td>
                                     </tr>
                                    <?php 
                                 
                                  
                                  //} ?>
                                     <input type='text' name='tot'   id="tot" value="<?php //echo $i;?>" />
                                 </tbody>
                             </table>
                         </div>
                         <div class="text-center"><button type='button' onclick="addfaqs();" class="badge badge-success"><i class="fa fa-plus"></i> ADD NEW FLOOR</button></div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </div--->



    
    
    
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
        /*document.getElementById('fileInput').addEventListener('change', function() {
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
        });*/


        var faqs_row = 0;
        var i=$("#tot").val();
        i++;
function addfaqs() {
html = '<tr id="faqs-row' + faqs_row + '">';
    html += '<td><input type="text" class="form-control" placeholder="Floor Name" name="nm'+i+'"></td>';
    html += '<td><textarea class="form-control" name="desc'+i+'"></textarea></td>';
    html += '<td> <input type="file"  class="form-control" name="fl'+i+'"></td>';
    html += '<td class="mt-10"><button type=button class="badge badge-danger" onclick="del('+faqs_row+'");><i class="fa fa-trash"></i> Delete</button></td>';

    html += '</tr>';

$('#faqs tbody').append(html);

faqs_row++;

$("#tot").val(i);
}


function del(id){
  alert("hello");
$('#faqs-row'+id).remove();
i--;
}








        $(document).on('click', '.js-add-row', function() {  
  $('#table').append($('table').find('tr:last').clone());
});

$(document).on('click', '.js-del-row', function() {  
  $('#table').find('tr:last').remove();
});









    </script>
</body>
</html>
