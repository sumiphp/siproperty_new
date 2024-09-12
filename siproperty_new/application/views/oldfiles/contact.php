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

<!-- Stylesheets -->
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
<style>
    /* For modern browsers */
    ::-webkit-input-placeholder {
        color:  rgb(70, 66, 66);
    }
    ::-moz-placeholder {
        color:  rgb(70, 66, 66);
    }
    :-ms-input-placeholder {
        color: rgb(70, 66, 66);
    }
    ::placeholder {
        color:  rgb(70, 66, 66);
    }
</style>
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
       
        <?php include('header.php');
        
        //print_r($contactus);
        
        
        ?>
        
        
        <!-- End Mobile Menu -->



        <!--Page Title-->
        <section class="page-title centred" style="background-image: url(<?php echo base_url().'siproperty/assets/images/background/page-title-2.jpg';?>); height: 450px;">
            <div class="auto-container">
                <div class="content-box clearfix">
                    <!-- <h1>Contact Us</h1> -->
                </div>
                <ul class="bread-crumb clearfix">
                    <li><a href="<?php echo base_url().'Home/index';?>">Home</a></li>
                    <li>Contact Us</li>
                </ul>
            </div>
        </section>
        <!--End Page Title-->


        <!-- contact-info-section -->
        <section class="contact-info-section sec-pad centred contact-section bg-color-1">
            <div class="auto-container">
                <div class="sec-title" style="text-align: left;">
                    <h5>Contact us</h5>
                    <h2>Get In Touch</h2>
                </div>
                <section class="deals-style-two sec-pad" style="margin-top: -5rem;">
                    <div class="auto-container">
                        <div class="nav-style-one">
                            <div class="single-item">
                                <div class="row clearfix">
                                    
                                    <div class="col-lg-6 col-md-6 col-sm-12 deals-block mt-2 ">
                                        <div class="deals-block-one">
                                            <div class="inner-box">
                                                <div class="lower-content">
                                                    <div style=" text-align: left;" class="title-text ml-3">
                                                        <h4 style="margin: 0;"><a  style="font-weight: bolder; text-decoration: none; color: inherit;"><i class="fas fa-contact"></i> SI Property (Kerala) Pvt. Ltd</a></h4>
                                                    </div>
                                                    <ul style="padding-left: 0; margin: 0;">
                                                        <li class="mt-4 ml-4" style="list-style-type: none; margin-left: 0; display: flex; align-items: center; flex-wrap: wrap;">
                                                            <div style="width: 28px; height: 28px; display: flex; justify-content: center; align-items: center; border: 1px solid #000000; border-radius: 50%; margin-right: 8px;">
                                                                <img src="https://img.icons8.com/ios-filled/50/000000/marker.png" alt="Location Icon" style="width: 16px; height: 16px;" />
                                                            </div>
                                                            <span style="flex: 1; text-align: left;"><?php echo $contactus->location;?><?php echo $contactus->state;?>,<?php echo $contactus->country;?></span>
                                                        </li>
                                                        
                                                        <li class="mt-2 ml-4" style="list-style-type: none; margin-left: 0; display: flex; align-items: center;">
                                                            <div style="width: 28px; height: 28px; display: flex; justify-content: center; align-items: center; border: 1px solid #000000; border-radius: 50%; margin-right: 8px;">
                                                                <img src="https://img.icons8.com/ios-filled/50/000000/phone.png" alt="Phone Icon" style="vertical-align: middle; width: 14px; height: 14px;" />
                                                            </div>
                                                            <a href="tel:+<?php echo $contactus->phoneno;?>" style="text-decoration: none; color: inherit;">+<?php echo $contactus->phoneno;?></a>
                                                        </li>
                                                        
                                                        <!-- Include Font Awesome CDN in the head of your HTML document -->
                                                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

                                                        <li class="mt-2 ml-4" style="list-style-type: none; margin-left: 0; display: flex; align-items: flex-start;">
                                                            <i class="fa fa-envelope" style="font-size: 14px; margin-top: 12px; color:#353935; border: 1px solid #000000;  border-radius: 50%; padding: 4px; margin-right: 8px;"></i>
                                                            <div style="display: flex; flex-direction: column;">
                                                                <a href="mailto:<?php echo $contactus->emailid;?>" style="text-decoration: none; color: inherit; padding-left: 0; margin-left: -40px;"><?php echo $contactus->emailid;?></a>
                                                                <a href="mailto:<?php echo $contactus->emailid2;?>" style="text-decoration: none; color: inherit; padding-left: 0;"><?php echo $contactus->emailid2;?></a>
                                                            </div>
                                                        </li>

                                                    </ul>
                                                    <div style="text-align: left;" class="mt-3 ml-4">
                                                        <a href="https://www.google.com/maps?q=Silver+Oaks,+Near+Golf+Club,+Kowdiar,+Trivandrum,+Kerala,+India" 
                                                           style="text-decoration: underline; color:#353935; display: flex; align-items: center;" 
                                                           target="_blank">
                                                           <i class="fa fa-map-marker-alt" style="margin-right: 8px; font-size: 16px;"></i>
                                                           View on Map
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-10 deals-block " style="border-left: 1px solid rgb(220, 219, 219);">
                                        <h5 class="title-text mt-5 ml-5" style="font-weight: bolder; width: 80%; text-align: left;">Interested? Send us a note for more information</h5>
                                    
                                    <br>
                                        <!--form method="post" action="sendemail.php" id="contact-form" class="contact-form mt-5"-->
                                        <span id='msg' style='color:green;font-weight:bold;'></span>
                                        <form id="frmcontact" novalidate="true" class="contact-form mt-5" method="post" action="contactusprocess">
                                            <div class="form-group">
                                                <input type="text" name="name" placeholder="Your Name" required maxlength="100" class='frm' >
                                            </div>
                                            <div class="form-group">
                                                <input type="email" name="email" placeholder="Email address" required maxlength="100" class='frm'>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="phone" placeholder="Phone" required maxlength="20" class='frm'>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="subject" placeholder="Subject" required maxlength="100" class='frm'>
                                            </div>
                                            <div class="form-group">
                                                <textarea name="message" placeholder="Message" maxlength="1000" class='frm'></textarea>
                                            </div>
                                            <div class="form-group">
                                                <button class="submit-btn" type="submit" name="submit-form">Send Message</button>
                                            </div>
                                        </form>
                                        
                                        
                                    </div>
                                    
                                   
                                </div>
                            </div>
                         </div>
                        <!-- side bar container 2 -->
                            
        
                                 <!-- side bar container 3 -->
                                        
                
                            </div>
                        </section>
        
                        
                    </div>
                </section>
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


</body><!-- End of .page_wrapper -->
</html>




<script>

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
    
		$('#msg').html("Your Message sent successfully");
	}            
      });		
}





      //form.submit();  
   // }  
  }); 
  
  </script>



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



