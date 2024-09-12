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
        <!-- preloader end -->


            <?php include('header.php');?>
            
           
        
        
        <!-- End Mobile Menu -->


        <!--Page Title-->
        <section class="page-title centred" style="background-image:url(<?php echo base_url().'siproperty/assets/images/background/statistics-1.jpg';?>); height: 450px;">
            <div class="auto-container">
                <div class="content-box clearfix">
                    <!-- <h1>Apartment Projects</h1> -->
                </div>
                <ul class="bread-crumb clearfix">
                    <li><a href="<?php echo base_url().'Home/index';?>">Home</a></li>
                    <li>Property List</li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->


        <!-- property-page-section -->
        <section class="property-page-section property-list" style="margin-top: -70px;">
            <div class="auto-container">
                <div class="row clearfix">
                    
                    <div class="col-lg-8 col-md-12 col-sm-12 content-side">
                        <div class="property-content-side">
                           
                            <div class="wrapper list">
                                <div class="deals-list-content list-item">
                                <?php foreach($homeprojects as $hp){?>
                                    <div class="deals-block-one">
                                        <div class="inner-box">
                                            <div class="image-box">
                                                <figure class="image"><img src="<?php echo base_url().'uploads/project/'.$hp['product_picture'];?>" alt=""></figure>
                                                <div class="batch"><i class="icon-11"></i></div>
                                                <span class="category" style="margin-left: 26%;">Ongoing project</span>
                                                
                                            </div>


                                            <div class="lower-content">
                                                <div class="title-text"><h4><a href="property-details-4.html"><?php echo $hp['project_name'];?></a></h4></div>
                                                <div class="price-box clearfix">
                                                    <div class="price-info pull-left">
                                                        <h6>Start From</h6>
                                                        <h4> <?php echo $hp['price'];?></h4>
                                                    </div>
                                                    <ul class="clearfix" style="float: right;">
                                                        <li>
                                                            
                                                            <a href="tel:+<?php echo $hp['phoneno'];?>" style="display: flex; align-items: center; justify-content: center; width: 36px; height: 36px; background-color: green; border-radius: 50%; margin-right: 8px; text-decoration: none;">
                                                                <i class="fa fa-phone" style="font-size: 18px; color: white;"></i>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                   
                                                </div>
                                                <p><?php echo $hp['project_descripition'];?></p>
                                                <ul class="more-details clearfix">
                                                    <li><i class="icon-14"></i><?php echo $hp['bedroom'];?>Beds</li>
                                                    <li><i class="icon-15"></i><?php echo $hp['bathroom'];?>Baths</li>
                                                    <li><i class="icon-16"></i><?php echo $hp['squarefeet'];?>Sq Ft</li>
                                                </ul>
                                                <div class="other-info-box clearfix">
                                                    <div class="btn-box pull-left"><a href="<?php echo base_url().'Home/'.'propertydetails';?>/<?php echo $hp['id'];?>" style="background-color: #007538;color: aliceblue;" class="theme-btn btn-two">See Details</a></div>
                                                    
                                                </div>
                                            </div>

                                            <?php //} ?>




                                        </div>
                                    </div>
                                    <?php } ?>
                                    <div class="row">
      <div class="col-md-10"></div>
      <div class="col-md-10"><?php  echo "".$links;?></div></div>
                                    
                                  
                                    
                                    </div>
                                </div>
                            </div>
                           
                        </div>
                        
                        <div class="col-lg-4 col-md-12 col-sm-12 sidebar-side" id="fixedSidebar">
                            <div class="property-sidebar default-sidebar">
                                <div class="author-widget sidebar-widget">
                                    <div class="author-box mt-2">
                                        <figure class="author-thumb"><img src="assets/images/logo-light.png" alt=""></figure>
                                        <div class="inner">
                                            <h4>SI Property</h4>
                                            <ul class="info clearfix">
                                                <li><i class="fas fa-map-marker-alt"></i><?php echo $settings->place;?>, <?php echo $settings->city;?></li>
                                            </ul>
                                            <div class="btn-box"><a style="padding: 8px;" href="tel:<?php echo $contactus->phoneno;?>"><i class="fa fa-phone mr-2" aria-hidden="true" target="_blank" ></i>Call Us</a></div>
                                            <div class="btn-box ml-1" style="margin-top: -42px;"> 
                                                 <a style="padding: 8px; margin-left:90px;" href="https://wa.me/+<?php echo $contactus->whatsapp;?>" class=" whatsapp-button" target="_blank">
                                                <i class="fab fa-whatsapp mr-1"></i>Whatsapp</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-inner" style="margin-top: -15px;">
                                       
                                        <span id='msg' style='color:green;font-weight:bold;'></span>
                                        <form id="frmcontact" novalidate="true" class="default-form" method="post" action="contactusprocess">


                                            <div class="form-group">
                                                <input type="text" name="name" placeholder="Your name" style="height: 40px;" required="">
                                            </div>
                                            <div class="form-group">
                                                <input type="email" name="email" id="email" placeholder="Your Email" style="height: 40px;" required="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="phone" placeholder="Phone" style="height: 40px;" required="">
                                            </div>
                                            <div class="form-group">
                                                <textarea id="message" 
                                                name="message" placeholder="Message"  id="message" style="height: 60px;"></textarea>
                                            </div>
                                            <div class="form-group message-btn">
                                                <button type="submit" class="theme-btn btn-one">Send Message</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                
                        </div>
                    </div>
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

<script>
  document.addEventListener("DOMContentLoaded", function() {
    // Get the section element
    var section = document.querySelector('.page-title.centred');
    // Get the sidebar element
    var sidebar = document.querySelector('.sidebar-side');
    // Get the subscribe section element
    var subscribeSection = document.querySelector('.subscribe-section.bg-color-3');

    // Function to update sidebar position
    function updateSidebarPosition() {
        var scrollY = window.scrollY || window.pageYOffset;
        var sectionBottom = section.offsetTop + section.offsetHeight;
        var subscribeSectionTop = subscribeSection.offsetTop;
        var sidebarHeight = sidebar.offsetHeight;

        // Apply fixed positioning only on larger screens (desktops and tablets)
        if (window.innerWidth > 992) {
            if (scrollY >= sectionBottom && (scrollY + sidebarHeight) < subscribeSectionTop) {
                sidebar.classList.add('sidebar-fixed');
                sidebar.style.top = "30px"; // Ensures sidebar is at the top when fixed
            } else if ((scrollY + sidebarHeight) >= subscribeSectionTop) {
                sidebar.classList.add('sidebar-fixed');
                sidebar.style.top = (subscribeSectionTop - scrollY - sidebarHeight) + "px"; // Fixes the sidebar just above the subscribe section
            } else {
                sidebar.classList.remove('sidebar-fixed');
                sidebar.style.top = ""; // Reset to default
            }
        } else {
            // For mobile view, maintain original CSS
            sidebar.classList.remove('sidebar-fixed');
            sidebar.style.top = ""; // Reset to default
        }
    }

    // Initial call to set sidebar position based on initial scroll
    updateSidebarPosition();

    // Listen for scroll events to update sidebar position
    window.addEventListener('scroll', updateSidebarPosition);
    window.addEventListener('resize', updateSidebarPosition); // Listen for window resize events
});




</script>
   

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






$('form[id="frmcontact"]').validate({  
    rules: {  
      name: 'required',  
      subject: 'required',
      phone:'required',  
      email: {  
        required: true,  
        email: true,  
      }, 
      message:"required", 
      //producttype:"required",
      subject:"required",
    },  
    messages: {  
      name: 'Name is required',  
      subject: 'Subject is required',  
      phone: 'Enter a valid Phone',
      email: 'Enter a valid Email',  
      //producttype:"Enter a valid Product Type",
      message:'Please enter Message',
      subject:"Please enter Subject", 
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
    $(".frm").val('');
    $("#email").val('');
    $("#message").val('');
    $(".email").val('');
		$('#msg').html("Your Message sent successfully");
	}            
      });		
}





      //form.submit();  
   // }  
  }); 
  
  </script>



















  </script>

    <!-- map script -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-CE0deH3Jhj6GN4YvdCFZS7DpbXexzGU"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/gmaps.js';?>"></script>
    <script src="<?php echo base_url().'siproperty/assets/js/map-helper.js';?>"></script>
    <!-- main-js -->
    <script src="<?php echo base_url().'siproperty/assets/js/script.js';?>"></script>







</body><!-- End of .page_wrapper -->
</html>
