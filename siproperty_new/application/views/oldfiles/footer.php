

<style>
label.error.errpopupmsg {
    /*position: absolute;
    bottom: -35px;*/
    color:white;
    font-style: italic;
    font-weight: 600;
}

</style>

<section class="subscribe-section bg-color-3">
            <div class="pattern-layer" style="background-image: url(<?php echo base_url().'siproperty/assets/images/shape/shape-2.png';?>);"></div>
            <div class="auto-container">
                <div class="row clearfix">
                    <div class="col-lg-6 col-md-6 col-sm-12 text-column">
                        <div class="text">
                            <span>Subscribe</span>
                            <h2>Sign Up To Our Newsletter To Get The Latest News & Updates.</h2>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 form-column">
                        <div class="form-inner">
                            <!--form action="#" method="post" class="subscribe-form"-->

                            <form class="subscribe-form" name="frmemail" id="frmemail" action="<?php echo base_url().'Home/newslettersubscribe';?>" method="post">


                                <div class="form-group">
                                    <input type="email" name="emailidnews"  id="emailnews"  placeholder="Enter your email" >
                                   
                                    <button type="submit">Subscribe Now</button>
                                </div>
                                <label id="emailnews-error" class="error errpopupmsg" for="emailnews" ></label>
                                <span id="newsmsg" style='bottom:51px;color:red;font-weight:bold;'></span>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
 
 

        

 
 
 <footer class="main-footer">
            <div class="footer-top bg-color-2">
                <div class="auto-container">
                    <div class="row clearfix">
                        <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget about-widget">
                                <div class="widget-title">
                                    <h3>About</h3>
                                </div>
                                <div class="text">
                                    <p><?php echo $settings->footercontent;?></p>
                                    
                                </div>
                                <div class="row ml-1 mt-3">
                                    <img src="<?php echo base_url().'uploads/settings/'.$settings->logo;?>" alt="Company Logo" style="width: 20%; height: auto;">
                                                        <li><a href="<?php echo $settings->Fblink;?>" target=_blank><i class="fab fa-facebook-f ml-4 mt-5"></i></a></li>
                                                        <li><a href="<?php echo $settings->insta;?>" target=_blank><i class="fab fa-instagram ml-4 mt-5"></i></a></li>
                                                        <li><a href="<?php echo $settings->linkedlink;?>" target=_blank><i class="fab fa-linkedin-in ml-4 mt-5"></i></a></li>
                                </div>
                                
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget links-widget ml-70">
                                <div class="widget-title">
                                    <h3>Quick Links</h3>
                                </div>
                                <div class="widget-content">
                                    <ul class="links-list class">
                                        <li><a href="<?php echo base_url().'Home/aboutus';?>">About Us</a></li>
                                        <li><a href="<?php echo base_url().'Home/propertylist';?>">Projects</a></li>
                                        <!--li><a href="">Corporate</a></li-->
                                        <!--li><a href="">Rentals/Resale</a></li-->
                                        <li><a href="<?php echo base_url().'Home/homecare';?>">Homecare</a></li>
                                        <li><a href="<?php echo base_url().'Home/gallery';?>">Showcase</a></li>
                                        <!--li><a href="">Career</a></li-->
                                        <li><a href="<?php echo base_url().'Home/contactUs';?>">Contact Us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget post-widget">
                                <div class="widget-title">
                                    <h3>Latest Updates</h3>
                                </div>

                                


                                <div class="post-inner">

                                <?php /*$sql = "SELECT * FROM `blogs` limit 2";
      $result = mysqli_query($db,$sql);
      $blogs = array();
      while ($row = mysqli_fetch_row($result)) {
        $title=$row[3];
        $date=$row[2];
        $img=$row[8];
        $blog_id=$row[0];
      
        
        
        $date=$row[10];
        $datedt=explode("-",$date);
        //print_r($datedt);
        $mon=$datedt[1];*/
        ?>
        <?php 
        $i=0;
        
        foreach($blog as $blg){
            
            $date=$blg['date'];
            $datedt=explode("-",$date);
            
            if ($i<3){
            ?>


                                    <div class="post">
                                        <figure class="post-thumb"><a href="<?php echo base_url().'Home/blogdetails/'.$blg['blogid'];?>"><img src="<?php echo base_url().'uploads/blog/'.$blg['picture'];?>" alt=""></a></figure>
                                        <h5><a href="<?php echo base_url().'Home/blogdetails/'.$blg['blogid'];?>"><?php echo $blg['blogtitle'];?></a></h5>
                                        <p><?php //$date=Date('');

                                       echo $month = date('d',strtotime($date));?> <?php echo $month = date('M',strtotime($date));?>, <?php echo $datedt[0];?>


                                        </p>
                                    </div>
                                    <?php }
                                $i++;
                                
                                }  ?>
                                    <!--div class="post">
                                        <figure class="post-thumb"><a href="#"><img src="<?php //echo base_url().'siproperty/assets/images/news/news-1.jpg';?>" alt=""></a></figure>
                                        <h5><a href="#">Ways to Increase Trust</a></h5>
                                        <p>July 05, 2024</p>
                                    </div--->
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget contact-widget">
                                <div class="widget-title">
                                    <h3>Contacts</h3>
                                </div>
                                <div class="widget-content">
                                    <ul class="info-list clearfix">
                                        <li><i class="fas fa-map-marker-alt"></i><?php echo $contactus->location;?>,<?php echo $contactus->state;?>,<?php echo $contactus->country;?></li>
                                        <li><i class="fas fa-microphone"></i><a href="tel:+<?php echo $contactus->phoneno;?>">+<?php echo $contactus->phoneno;?></a></li>
                                        <li><i class="fas fa-envelope"></i><a href="mailto:<?php echo $contactus->emailid;?>"><?php echo $contactus->emailid;?></a> <a href="mailto:<?php echo $contactus->emailid2;?>"><?php echo $contactus->emailid2;?></a></li>
                                        

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="auto-container">
                    <div class="inner-box clearfix">
                        <figure class="footer-logo"><a href="<?php echo base_url().'Home/index';?>"><img style="width:6em; margin-top: 25px;" src="<?php echo base_url().'/uploads/settings/'.$settings->logo;?>" alt=""></a></figure>
                        <div class="copyright pull-left">
                            <p>Copyright © 2024 SI Property</p>
                        </div>
                        <ul class="footer-nav pull-right clearfix">
                            <li><a href="#">Terms of Service</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        


       