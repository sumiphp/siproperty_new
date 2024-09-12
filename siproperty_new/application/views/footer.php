 <!-- subscribe-section -->


 <style>
.imgft{

    height:90px !important;
    width:90px !important;
}

</style>
        <section class="subscribe-section bg-color-3">
            <div class="pattern-layer" style="background-image: url(<?php echo base_url().'siproperty/assets/images/shape/shape-2.png';?>);"></div>
            <div class="auto-container">
                <div class="row clearfix">
                    <div class="col-lg-6 col-md-6 col-sm-12 text-column">
                        <div class="text">
                            <span>Subscribe</span>
                            <h2>Sign Up To Our Newsletter To Get The Latest News And Offers.</h2>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 form-column">
                        <div class="form-inner">
                            <!--form action="contact.html" method="post" class="subscribe-form"-->
                            <form class="subscribe-form" name="frmemail" id="frmemail" action="<?php echo base_url().'Home/newslettersubscribe';?>" method="post">

                                <div class="form-group">
                                    <input type="email" name="emailidnews" id="emailidnews" placeholder="Enter your email" >
                                    <button type="submit">Subscribe Now</button>
                                   
                                </div>
                                <label id="emailidnews-error" class="error errpopupmsg" style='bottom:51px;color:white;font-weight:bold;' for="emailidnews" ></label>
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
                                    <p><?php echo $settings->footercontent2;?><!--Quis nostrud exercita laboris nisi ut aliquip commodo.--></p>
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
                                        <!--li><a href="index.html">About Us</a></li>
                                        <li><a href="index.html">Property Listing</a></li>
                                        <li><a href="index.html">How It Works</a></li>
                                        <li><a href="index.html">Our Services</a></li>
                                        <li><a href="index.html">Our Blog</a></li>
                                        <li><a href="index.html">Contact Us</a></li-->

                                        <li><a href="<?php echo base_url().'Home/categories';?>">Categories</a></li>
                                        <li><a href="<?php echo base_url().'Home/aboutus';?>"><span>About Us</span></a></li> 
                                                <li><a href="<?php echo base_url().'Home/propertylist';?>">Property List</a></li>                                       
                                                <li><a href="<?php echo base_url().'Home/blog';?>"><span>Blog</span></a></li> 
                                       
                                       <li><a href="<?php echo base_url().'Home/showcase';?>"><span>Gallery</span></a></li> 
                                       <li><a href="<?php echo base_url().'Home/faq';?>"><span>Faq</span></a></li>        
                                       <li><a href="<?php echo base_url().'Home/contactUs';?>"><span>Contact</span></a></li>



                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-12 footer-column">
                            <div class="footer-widget post-widget">
                                <div class="widget-title">
                                    <h3>Top News</h3>
                                </div>
                                <div class="post-inner">

                                <?php 
        $i=0;
        
        foreach($blog as $blg){
            
            $date=$blg['date'];
            $datedt=explode("-",$date);
            
            if ($i<3){
            ?>

                                    <div class="post">
                                        <figure class="post-thumb"><a href="<?php echo base_url().'Home/blogdetails/'.$blg['blogid'];?>"><img src="<?php echo base_url().'uploads/blog/'.$blg['picture'];?>" alt="" class="imgft" ></a></figure>
                                        <h5><a href="<?php echo base_url().'Home/blogdetails/'.$blg['blogid'];?>"><?php echo $blg['blogtitle'];?></a></h5>
                                        <p><?php //$date=Date('');

echo $month = date('d',strtotime($date));?> <?php echo $month = date('M',strtotime($date));?>, <?php echo $datedt[0];?></p>
                                    </div>

                                    <?php }
                                
                                $i++;
                                
                                } ?>
                                    <!--div class="post">
                                        <figure class="post-thumb"><a href="blog-details.html"><img src="<?php echo base_url().'siproperty/assets/images/resource/footer-post-2.jpg';?>" alt=""></a></figure>
                                        <h5><a href="blog-details.html">Ways to Increase Trust</a></h5>
                                        <p>Mar 24, 2020</p>
                                    </div-->
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
                                        <li><i class="fas fa-map-marker-alt"></i><?php echo $contactus->location;?><?php echo $contactus->state;?>,<?php echo $contactus->country;?></li>
                                        <li><i class="fas fa-microphone"></i><a href="tel:<?php echo $contactus->phoneno;?>">+<?php echo $contactus->phoneno;?></a></li>
                                        <li><i class="fas fa-envelope"></i><a href="mailto:<?php echo $contactus->emailid;?>"><?php echo $contactus->emailid;?></a></li>
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
                        <figure class="footer-logo"><a href="<?php echo base_url().'Home/index';?>"><img src="<?php echo base_url().'siproperty/assets/images/footer-logo.png';?>" alt=""></a></figure>
                        <div class="copyright pull-left">
                            <p><a href="<?php echo base_url().'Home/index';?>">SI Property</a> &copy; 2024 All Right Reserved</p>
                        </div>
                        <ul class="footer-nav pull-right clearfix">
                            <li><a href="index.html">Terms of Service</a></li>
                            <li><a href="index.html">Privacy Policy</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>



       