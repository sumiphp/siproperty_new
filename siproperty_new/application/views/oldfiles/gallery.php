<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>SI Property - Leela Madhavam Legacy</title>

<!-- Fav Icon -->
<link rel="icon" href="<?php echo base_url().'uploads/settings/'.$settings->favicon;?>" type="image/x-icon">


<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Rubik:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">




<link href="<?php echo base_url().'siproperty/assets/css/font-awesome-all.css';?>" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/flaticon.css';?>" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/owl.css';?>" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/bootstrap.css';?>" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/jquery.fancybox.min.css';?>" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/animate.css';?>" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/jquery-ui.css';?>" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/nice-select.css';?>" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/color/theme-color.css';?>" id="jssDefault" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/switcher-style.css';?>" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/style.css';?>" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/responsive.css';?>" rel="stylesheet">





</head>


<!-- page wrapper -->
<body>

    <div class="boxed_wrapper">


        <!-- preloader -->
        <div class="loader-wrap">
            <div class="preloader">
                <div class="preloader"><i class="far fa-times"></i></div>
                <div id="handle-preloader" class="handle-preloader">
                    <div class="animation-preloader">
                        <div class="image-preloader">
                        <img src="<?php echo base_url().'siproperty/assets/images/sipropertylogo.png';?>" style="width: 15%;" alt="Preloader Image">
                        </div>
                        <div class="txt-loading">
                            <span data-text-preloader="S" class="letters-loading">S</span>
                            <span data-text-preloader="I" class="letters-loading">I</span>
                            <span data-text-preloader="" class="letters-loading"> &nbsp;</span>
                            <span data-text-preloader="P" class="letters-loading">P</span>
                            <span data-text-preloader="R" class="letters-loading">R</span>
                            <span data-text-preloader="O" class="letters-loading">O</span>
                            <span data-text-preloader="P" class="letters-loading">P</span>
                            <span data-text-preloader="E" class="letters-loading">E</span>
                            <span data-text-preloader="R" class="letters-loading">R</span>
                            <span data-text-preloader="T" class="letters-loading">T</span>
                            <span data-text-preloader="Y" class="letters-loading">Y</span>
                          
                        </div>
                    </div>  
                </div>
            </div>
        </div>
       
        <?php include('header.php');?>
      
        <!--Page Title-->
        <section class="page-title centred" style="background-image: url(<?php echo base_url().'siproperty/assets/images/background/page-title-3.jpg';?>);height: 450px;">
            <div class="auto-container">
                <div class="content-box clearfix">
                    <!-- <h1>Gallery</h1> -->
                </div>
                <ul class="bread-crumb clearfix">
                    <li><a href="<?php echo base_url().'Home/index';?>">Home</a></li>
                    <li>Gallery</li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->

        <section class="gallery-style-one centred">
            <div class="auto-container">
                <div class="sec-title">
                    <h5>Gallery </h5>
                    <h2>Image Showcase</h2>
                </div>
                <div class="sortable-masonry">
                    <div class="filters">
                        <ul class="filter-tabs filter-btns clearfix">
                            <li class="active filter" data-role="button" data-filter=".all" >All</li>
                            <li class="filter" data-role="button" data-filter=".interior" onclick="hi();" >Interior</li>
                            <li class="filter" data-role="button" data-filter=".exterior">Exterior</li>
                            <li class="filter" data-role="button" data-filter=".floor_plan">Floor Plan</li>
                        </ul>
                    </div>
                    <div class="items-container row clearfix">
                    <?php 
                    //print_r($gallery);
                    
                    foreach($gallery as $gal){

                        //echo $gal['type1'];
                        $int='';
                        $ext='';
                        $fp='';
                        $all='';
                        if ($gal['type1']==1){
                            $ext='exterior';
                        }

                        if ($gal['type1']==2){
                            $int='interior';
                        }

                        if ($gal['type1']==3){
                            $fp='floor_plan';
                        }
                        
                        if ($gal['type1']==4){
                           //$all='all';
                        }
                        
                        $all='all';
                        ?> 


<div class="col-lg-4 col-md-6 col-sm-12 masonry-item small-column <?php echo $all ?>" >
                            <div class="gallery-block-one">
                                <div class="inner-box">
                                    <div class="image-box">
                                    <figure class="image"><img src="<?php echo base_url().'uploads/gallery/'.$gal['image']?>" alt=""></figure>
                                    <a href="<?php echo base_url().'uploads/gallery/'.$gal['image']?>" class="lightbox-image" data-fancybox="gallery"><i class="icon-31"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                        <div class="col-lg-4 col-md-6 col-sm-12 masonry-item small-column <?php echo 'all1'.' '.$int?>"  >
                            <div class="gallery-block-one">
                                <div class="inner-box">
                                    <div class="image-box">
                                    <figure class="image"><img src="<?php echo base_url().'uploads/gallery/'.$gal['image']?>" alt=""></figure>
                                    <a href="<?php echo base_url().'uploads/gallery/'.$gal['image']?>" class="lightbox-image" data-fancybox="gallery"><i class="icon-31"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-lg-4 col-md-6 col-sm-12 masonry-item small-column <?php echo 'all1'.' '.$ext?>"  >
                            <div class="gallery-block-one">
                                <div class="inner-box">
                                    <div class="image-box">
                                        <figure class="image"><img src="<?php echo base_url().'uploads/gallery/'.$gal['image']?>" alt=""></figure>
                                        <a href="<?php echo base_url().'uploads/gallery/'.$gal['image']?>" class="lightbox-image" data-fancybox="gallery"><i class="icon-31"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-md-6 col-sm-12 masonry-item small-column <?php echo 'all1'.' '.$fp?>"  >
                            <div class="gallery-block-one">
                                <div class="inner-box">
                                    <div class="image-box">
                                    <figure class="image"><img src="<?php echo base_url().'uploads/gallery/'.$gal['image']?>" alt=""></figure>
                                    <a href="<?php echo base_url().'uploads/gallery/'.$gal['image']?>" class="lightbox-image" data-fancybox="gallery"><i class="icon-31"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                        
                    </div>
                </div>
            </div>
        </section>
       

        <?php include('footer.php');?>


        <!--Scroll to top-->
        <button class="scroll-top scroll-to-target" data-target="html">
            <span class="fal fa-angle-up"></span>
        </button>
    </div>


    




    <script src="<?php echo base_url().'siproperty/assets/js/jquery.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/popper.min.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/bootstrap.min.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/owl.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/wow.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/validation.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/jquery.fancybox.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/appear.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/scrollbar.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/isotope.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/jquery.nice-select.min.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/jQuery.style.switcher.min.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/jquery-ui.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/product-filter.js';?>"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"> </script>

    <!-- map script -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-CE0deH3Jhj6GN4YvdCFZS7DpbXexzGU"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/gmaps.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/map-helper.js';?>"></script>

    <!-- main-js -->
    <script src="<?php echo base_url().'siproperty/assets/js/script.js';?>"></script>

    <script>
   
   $('form[id="frmemail"]').validate({  
    rules: {  
        emailidnews: 'required',  
     
    },  
    messages: {  
        emailidnews: 'Please enter your emailid',  
     
    },  
    submitHandler: function(form) { 
       

            $.ajax({
	url: form.action,
	type: form.method,
	data: $(form).serialize(),
	success: function(response) {
        $('input[type=text]').each(function() {
        $(this).val('');
    });
    
    $('#emailnews').val('');
    
		$('#newsmsg').html(response);
	}            
      });		
}





      //form.submit();  
   // }  
  });  
$(document).ready(function(){
    $('.interior').hide();
    $('.exterior').hide();
    $('.floor_plan').hide();
    $('.all1').hide();
});


  $("#sub").click(function(){
    $('#newsmsg').html('');
});

function hi(){
    $('.interior').show();
    /*$('.exterior').hide();
    $('.floor_plan').hide();
    $('.all1').hide();*/
}

  </script>



</body><!-- End of .page_wrapper -->
</html>
