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

<link href="<?php echo base_url().'siproperty/assets/css/style.css';?>" rel="stylesheet">
<link href="<?php echo base_url().'siproperty/assets/css/responsive.css';?>" rel="stylesheet">

</head>

<style>

iframe, object, embed {
    max-width: 100%;
}

</style>
<!-- page wrapper -->
<body>

    <div class="boxed_wrapper">


<!-- preloader -->
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


        <!--Page Title-->
        <section class="page-title centred pb-210" style="background-image: url(<?php echo base_url().'siproperty/assets/images/background/page-title-2.jpg';?>); height: 400px;">
            <div class="auto-container">
                <div class="content-box clearfix">
                                       
                </div>
            </div>
        </section>
        <!--End Page Title-->


        <!-- property-details -->
         <?php 
         //print_r($pd);
         
         
         if (count($pd)==0){?>
            <section class="property-details property-details-four mt-2">
            <div class="auto-container clearfix"><h3 align='center'><br>Sorry Project details not added</h3> </div> </section>
        
        
        <?php } else {?>
            <section class="property-details property-details-four mt-2">
                <div class="auto-container">
                    <div class="top-details clearfix">
                        <div class="left-column pull-left clearfix">
                            <h3><?php echo $pd1->project_name;?></h3>
                            <div class="right-column pull-right clearfix">
                                <div class="price-inner clearfix">
                                    <ul class="category clearfix pull-left mt-2" style="margin-right: 4em;">
                                        <li><a href="#"><?php if($pd1->project_status==0){
                                            echo "Ongoing";
                                        }else {
                                            echo "Completed";
                                        };?></a></li>
                                    </ul>
                                    
                                </div>
                                
                            </div>
                            <div class="author-info clearfix">
                                <div class="author-box pull-left">
                                    <figure class="author-thumb"><img src="<?php echo base_url().'siproperty/assets/images/logo-light.png';?>" alt=""></figure>
                                    <h6><?php echo $pd->prjlocation;?>, <?php echo $pd->prjaddress;?></h6>
                                </div>
                                
                            </div>
                        </div>
                        <div class="right-column pull-right clearfix">
                            <div class="price-inner clearfix">
                                <ul class="category clearfix pull-left">
                                    <span class="ml-5" style="font-size:18px ;">Price Starts From</span>
                                    <!-- <li><a href="property-details.html">Ongoing</a></li> -->
                                    <!-- <li><a href="property-details.html">Enquire Now</a></li> -->
                                </ul>
                                <div class="price-box pull-right">
                                    <h3><?php echo $pd1->price;?></h3>
                                </div>
                            </div>
                            <div>
                                <a href="tel:+91944716 9988" class="theme-btn btn-one ml-5"><span><i class="fa fa-phone" style="font-size:15px"></i></span>Book your Site visit</a>
                            </div>
                        </div>
                    </div>
                <div class="row clearfix" style="margin-top: -48px;">
                    <div class="col-lg-8 col-md-12 col-sm-12 content-side">
                        <div class="property-details-content">
                            <div class="discription-box content-widget">
                                <div class="title-box">
                                    <h4>Property Description</h4>
                                </div>
                                <div class="text">
                                    <p><?php echo $pd->project_descripition;?></p>
                                   
                                </div>
                            </div>
                            <div class="details-box content-widget">
                                <div class="title-box">
                                    <h4>Property Details</h4>
                                </div>
                                <ul class="list clearfix">
                                    <li>Project Status: <span><?php //echo $pd->project_status;
                                    if ($pd1->project_status==0){
                                        echo "Ongoing";
                                    }
                                    else{
                                        echo "Completed";
                                    }
                                    //print_r($pd1);
                                    ?></span></li>
                                    <li>Size Range: <span><?php echo $pd1->squarefeet;?></span></li>
                                    <!--li>Size Range: <span>1411-2335 Sq Ft</span></li-->
                                    <li>Property Price: <span><?php echo $pd1->price;?></span></li>
                                    <li>BHK: <span><?php echo $pd->bhk;?></span></li>
                                    <li>Year Built: <span><?php echo $pd->yearbuilt;?></span></li>
                                    <li>Property Type: <span><?php echo $pd->propertytype;?></span></li>
                                    
                                </ul>
                            </div>
                            <div class="amenities-box content-widget">
                                <div class="title-box">
                                    <h4>Amenities</h4>
                                </div>
                                <ul class="list clearfix">
                                <?php $am=$pd->amenities;
                                $amexpl=explode(',',$am);
                                //print_r($amexpl);
                                ?>
                                <ul class="list clearfix">
                                    <?php 
foreach($amexpl as $am){

?>
<li><?php echo $am;?></li>
<?php } ?>
                                                                                                        </ul>
                            </div>
                            <div class="floorplan-inner content-widget">
                                <div class="title-box">
                                    <h4>Floor Plan</h4>
                                </div>
                                <ul class="accordion-box">


                                <li class="accordion block active-block">
                                        <div class="acc-btn active">
                                            <div class="icon-outer"><i class="fas fa-angle-down"></i></div>
                                            <h5>First Floor</h5>
                                        </div>
                                        <div class="acc-content current">
                                            <div class="content-box">
                                                <p><?php echo $pd->firstfloordesc;?></p>
                                                <figure class="image-box">
                                                    <img src="<?php echo base_url('uploads/project/' . $pd->firstfloordiscp1); ?>" alt="">
                                                </figure>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="accordion block">
                                        <div class="acc-btn">
                                            <div class="icon-outer"><i class="fas fa-angle-down"></i></div>
                                            <h5>Second Floor</h5>
                                        </div>
                                        <div class="acc-content">
                                            <div class="content-box">
                                                <p><?php echo $pd->secfloordesc;?></p>
                                                <figure class="image-box">
                                                    <img src="<?php echo base_url('uploads/project/' . $pd->secfloordescp1); ?>" alt="">
                                                </figure>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="accordion block">
                                         <div class="acc-btn">
                                            <div class="icon-outer"><i class="fas fa-angle-down"></i></div>
                                            <h5>Third Floor</h5>
                                        </div>
                                        <div class="acc-content">
                                            <div class="content-box">
                                                <p><?php echo $pd->thirdfloordescp; ?></p>
                                                <figure class="image-box">
                                                    <img src="<?php echo base_url('uploads/project/'.$pd->thirdfloordescp1); ?>" alt="">
                                                </figure>
                                            </div>
                                        </div>
                                    </li>




                                <?php 

$prjid=$this->uri->segment(3);

                                foreach($prjdt as $prj){?>


<li class="accordion block">
                                         <div class="acc-btn">
                                            <div class="icon-outer"><i class="fas fa-angle-down"></i></div>
                                            <h5><?php echo $prj['floorname'];?></h5>
                                        </div>
                                        <div class="acc-content">
                                            <div class="content-box">
                                                <p><?php echo $prj['floordesc'];?></p>
                                                <figure class="image-box">
                                                    <img src="<?php echo base_url('uploads/project/'.$prj['picture']); ?>" alt="">
                                                </figure>
                                            </div>
                                        </div>
                                    </li>






<?php }

?>





                                  
                                </ul>
                            </div>
                            <div class="location-box content-widget">
                                <div class="title-box">
                                    <h4>Project Location</h4>
                                </div>
                                <ul class="info clearfix">
                                <li><?php echo $pd->prjlocation;?>,<?php echo $pd->prjaddress;?>  </li>                               
                                  
                                </ul>
                                <div class="google-map-area">
                                    <div class="map">
                                        <h4><?php echo $pd1->project_name;?></h4>
                                        <iframe 
                                            src="<?php echo $pd->gmapurl;?>" 
                                            width="600" 
                                            height="450" 
                                            style="border:0;" 
                                            allowfullscreen="" 
                                            loading="lazy" 
                                            referrerpolicy="no-referrer-when-downgrade">
                                        </iframe>
                                    </div>
                            
                                </div>
                            </div>
                            <div class="nearby-box content-widget">
                                <div class="title-box">
                                    <h4>What’s Nearby?</h4>
                                </div>
                                <div class="inner-box">
                                    <div class="single-item">
                                        <div class="icon-box"><i class="fas fa-book-reader"></i></div>
                                        <div class="inner">
                                            <h5>Education:</h5>


                                            <?php $ed=$pd->educationdetails;
                                            $ed2=$pd->edudist; 
                                $ed1=explode(',',$ed);
                                $ed22=explode(',',$ed2);
                                //print_r($ed1);
                                ?>

<?php 
$i=0;
foreach($ed1 as $ed){

?>



<div class="box clearfix">
                                                <div class="text pull-left">
                                                    <h6><?php echo $ed;?> <span>(<?php echo $ed22[$i];?>)</span></h6>
                                                </div>
                                                
                                            </div>



<?php 
$i++;

} ?>





                                        </div>
                                    </div>
                                    <div class="single-item">
                                        <div class="icon-box"><i class="fas fa-book-reader"></i></div>
                                        <div class="inner">
                                            <h5>Hospitals</h5>

                                            
                                            <?php $hp=$pd->hosp;
                                            $hp2=$pd->hospdist; 
                                $hp1=explode(',',$hp);
                                $hp22=explode(',',$hp2);
                                //print_r($ed1);
                                ?>

<?php 
$i=0;
foreach($hp1 as $hp){

?>



<div class="box clearfix">
                                                <div class="text pull-left">
                                                    <h6><?php echo $hp;?> <span>(<?php echo $hp22[$i];?>)</span></h6>
                                                </div>
                                                
                                            </div>



<?php 
$i++;

} ?>
                                           
                                        </div>
                                    </div>
                                    <div class="single-item">
                                        <div class="icon-box"><i class="fas fa-book-reader"></i></div>
                                        <div class="inner">
                                            <h5>Transport:</h5>
                                            <div class="box clearfix">
                                                <div class="text pull-left">
                                                    <h6>Bus Station<span> (<?php echo $pd->tbus;?>)</span></h6>
                                                </div>
                                                                                                </ul>
                                            </div>
                                            <div class="box clearfix">
                                                <div class="text pull-left">
                                                    <h6>Airport <span>(<?php echo $pd->airport;?>)</span></h6>
                                                </div>
                                                                                            </div>

                                                                                            <div class="box clearfix">
                                                <div class="text pull-left">
                                                    <h6>Railway <span>(<?php echo $pd->railway;?>)</span></h6>
                                                </div>
                                                                                            </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="statistics-box content-widget">
                                <div class="title-box">
                                    <h4>Project Video</h4>
                                </div>
                                <figure class="image-box">
<iframe width="710" height="400" src="<?php echo $pd->videourl;?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                                    
                                </figure>
                            </div>
                          
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12 sidebar-side">
                        <div class="property-sidebar default-sidebar">
                            <div class="author-widget sidebar-widget">
                                <div class="author-box">
                                    <figure class="author-thumb"><img src="<?php echo base_url().'siproperty/assets/images/logo-light.png';?>" alt=""></figure>
                                    <div class="inner mt-2">
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
                                <div class="form-inner">
                                   
                                    <span id='msg' style='color:green;font-weight:bold;'></span>
                                        <form id="frmcontact" novalidate="true" class="default-form" method="post" action="<?php echo base_url().'Home/contactusprocess';?>">


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
                                                <input type="text" name="subject" placeholder="Subject" style="height: 40px;" required="">
                                            </div>
                                            <div class="form-group">
                                                <textarea name="message" placeholder="Message" id="message"  style="height: 60px;"></textarea>
                                            </div>
                                            <div class="form-group message-btn">
                                                <button type="submit" class="theme-btn btn-one">Send Message</button>
                                            </div>
                                        </form>










                                </div>
                            </div>
                           
                    </div>
                </div>
            
               
        </section>
        <?php } ?>
       

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
    // Get the similar content section element
    var similarContentSection = document.querySelector('.similar-content');

    // Function to update sidebar position
    function updateSidebarPosition() {
        var scrollY = window.scrollY || window.pageYOffset;
        var sectionBottom = section.offsetTop + section.offsetHeight;
        var similarContentSectionTop = similarContentSection.offsetTop;
        var sidebarHeight = sidebar.offsetHeight;

        // Apply fixed positioning only on larger screens (desktops and tablets)
        if (window.innerWidth > 992) {
            if (scrollY >= sectionBottom && (scrollY + sidebarHeight) < similarContentSectionTop) {
                sidebar.classList.add('sidebar-fixed');
                sidebar.style.top = "30px"; // Ensures sidebar is at the top when fixed
            } else if ((scrollY + sidebarHeight) >= similarContentSectionTop) {
                sidebar.classList.add('sidebar-fixed');
                sidebar.style.top = (similarContentSectionTop - scrollY - sidebarHeight) + "px"; // Fixes the sidebar just above the similar content section
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
    <script src="<?php echo base_url().'siproperty/assets/js/timePicker.js';?>"></script> 
    <script src="<?php echo base_url().'siproperty/assets/js/bxslider.js';?>"></script>






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






    <script>
    $('form[id="frmcontact1"]').validate({  
    rules: {  
      name: 'required',  
      //subject: 'required',
      phone:'required',  
      email: {  
        required: true,  
        email: true,  
      }, 
      message:"required", 
      //producttype:"required",
      //subject:"required",
    },  
    messages: {  
      name: 'Name is required',  
      subject: 'Subject is required',  
      phone: 'Enter a valid Phone',
      email: 'Enter a valid Email',  
      //producttype:"Enter a valid Product Type",
      message:'Please enter Message',
      //subject:"Please enter Subject", 
    },  
    submitHandler: function(form) { 
      

            $.ajax({
	url: form.action,
	type: form.method,
	data: $(form).serialize(),
	success: function(response) {
        //alert(response);
        $('input[type=text]').each(function() {
        $(this).val('');
    });
    //$(".frm").val('');
    $("#email1").val('');
    $("#message1").val('');
    
		$('#msg1').html("Your Message sent successfully");
	}            
      });		
}





      //form.submit();  
   // }  
  }); 
  

  </script>



<script>
    $('form[id="frmcontact"]').validate({  
    rules: {  
      name: 'required',  
      //subject: 'required',
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
      //subject:"Please enter Subject", 
    },  
    submitHandler: function(form) { 
      

            $.ajax({
	url: form.action,
	type: form.method,
	data: $(form).serialize(),
	success: function(response) {
        //alert(response);
        $('input[type=text]').each(function() {
        $(this).val('');
    });
    //$(".frm").val('');
    $(".email").val('');
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







</body><!-- End of .page_wrapper -->
</html>


