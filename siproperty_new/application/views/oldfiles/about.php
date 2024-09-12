<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">

<title>SI Property - Apartments in Trivandrum</title>

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
<?php error_reporting(0);?>

<!-- page wrapper -->
<body>

    <div class="boxed_wrapper">


       
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
        <section class="page-title centred" style="background-image: url(<?php echo base_url().'uploads/aboutus/'.$aboutus->image;?>); height: 450px;">
            <div class="auto-container">
                <div class="content-box clearfix">
                    <!-- <h1>About</h1> -->
                </div>
                <ul class="bread-crumb clearfix">
                    <li><a href="<?php echo base_url().'Home/index';?>">Home</a></li>
                    <li>About</li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->


        <!-- about-section -->
        <section class="about-section about-page pb-0"  style="background-color:#e5f8ed;">
            <div class="auto-container">
                <div class="inner-container">
                    <div class="row align-items-center clearfix">
                        <div class="col-lg-6 col-md-12 col-sm-12 image-column">
                            <div class="image_block_2 mt-5">
                                <div class="image-box">
                                    <figure class="image"><img src="<?php echo base_url().'uploads/aboutus/'.$aboutus->image;?>" alt=""></figure>
                                    <div class="text wow fadeInLeft animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                                        <h2><?php echo $homepagedetails2->yearofexperience;?></h2>
                                        <h4>Years of <br />Excellence</h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12 col-sm-12 content-column">
                            <div class="content_block_3">
                                <div class="content-box">
                                    <div class="sec-title">
                                        
                                        <h2><?php echo str_replace('\\','',$aboutus->label1);?></h2>
                                    </div>
                                    <div class="text">
                                        <p><?php echo $aboutus->content1;?></p>
                                        <p><?php echo $aboutus->content2;?></p>
                                        <p><?php echo $aboutus->content3;?></p>
                                    </div>
                                        
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- about-section end -->


        <!-- feature-style-three -->
        <section class="feature-style-three centred pb-110">
            <div class="auto-container">
                <div class="sec-title">
                    <h5><?php echo $aboutus->label2;?></h5>
                    <h2><?php echo $aboutus->label3;?></h2>
                </div>
                <div class="three-item-carousel owl-carousel owl-theme owl-nav-none dots-style-one">
                <?php 
                    //print_r($gallery);
                    
                    foreach($activities as $act){?>
                    <div class="feature-block-two">
                        <div class="inner-box">
                            <div class="icon-box"><i class="icon-1"></i></div>
                            <h4><?php echo $act['caption'];?></h4>
                            <p><?php echo $act['shortdesc'];?></p>
                        </div>
                    </div>
                    <?php } ?>
                  
                </div>
            </div>
        </section>
        <!-- feature-style-three end -->


        <!-- cta-section -->
        <section class="cta-section alternate-2 pb-240 centred" style="background-image: url(<?php echo base_url().'siproperty/assets/images/background/cta-1.jpg';?>);">
            <div class="auto-container">
                <div class="inner-box clearfix">
                    <div class="text">
                        <h2><?php echo $aboutus->label4;?><br /><?php echo $aboutus->label5;?></h2>
                    </div>
                    <div class="btn-box">
                        <a href="<?php echo base_url().'Home/propertylist';?>" class="theme-btn btn-three">For Site Visit</a>
                        <a href="<?php echo base_url().'Home/contactUs';?>" class="theme-btn btn-one">Contact Now</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- cta-section end -->



        <!-- funfact-section -->
        <section class="funfact-section centred">
            <div class="auto-container">
                <div class="inner-container wow slideInLeft animated" data-wow-delay="00ms" data-wow-duration="1500ms">
                    <div class="row clearfix">
                        <div class="col-lg-3 col-md-6 col-sm-12 funfact-block">
                            <div class="funfact-block-one">
                                <div class="inner-box">
                                    <div class="count-outer count-box">
                                        <span class="count-text" data-speed="1500" data-stop="<?php echo $homepagedetails2->yearofexperience;?>"><?php echo $homepagedetails2->yearofexperience;?></span>
                                    </div>
                                    <p>Years Of Experience</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 funfact-block">
                            <div class="funfact-block-one">
                                <div class="inner-box">
                                    <div class="count-outer count-box">
                                        <span class="count-text" data-speed="1500" data-stop="<?php echo $homepagedetails2->happyclients;?>"><?php echo $homepagedetails2->happyclients;?></span>
                                    </div>
                                    <p>Happy Clients</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 funfact-block">
                            <div class="funfact-block-one">
                                <div class="inner-box">
                                    <div class="count-outer count-box">
                                        <span class="count-text" data-speed="1500" data-stop="<?php echo $homepagedetails2->completedprojects;?>"><?php echo $homepagedetails2->completedprojects;?></span>
                                    </div>
                                    <p>Completed Projects</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 funfact-block">
                            <div class="funfact-block-one">
                                <div class="inner-box">
                                    <div class="count-outer count-box">
                                        <span class="count-text" data-speed="1500" data-stop="<?php echo $homepagedetails2->ongoingprojects;?>"><?php echo $homepagedetails2->ongoingprojects;?></span>
                                    </div>
                                    <p>Ongoing Projects</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- funfact-section end -->



        <!-- testimonial-style-four -->
        <section class="testimonial-style-four sec-pad centred">
            <div class="auto-container">
                <div class="sec-title">
                    <h5><?php echo $aboutus->label6;?></h5>
                    <h2><?php echo $aboutus->label7;?></h2>
                    <p><?php echo $aboutus->content4;?> <br /><?php echo $aboutus->content5;?></p>
                </div>
                <div class="three-item-carousel owl-carousel owl-theme owl-nav-none dots-style-one">
                <?php 
                //print_r($testimonial);
                
                foreach ($testimonial as $test){?>
                    <div class="testimonial-block-three">
                        <div class="inner-box">
                            <div class="icon-box"><i class="icon-18"></i></div>
                            <h4>“<?php echo $test['content'];?>”</h4>
                            <h5><?php echo $test['name'];?></h5>
                            <span class="designation"><?php echo $test['designation'];?></span>
                        </div>
                    </div>
                    <?php } ?>
                   
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



  $("#sub").click(function(){
    $('#newsmsg').html('');
}); 

  </script>



</body><!-- End of .page_wrapper -->
</html>


