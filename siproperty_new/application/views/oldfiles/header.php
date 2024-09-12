 <header class="main-header header-style-two">
           
            <div class="header-lower">
                <div class="outer-box">
                    <div class="main-box" style="height:100px;"> <!-- Reduced height -->
                        <div class="logo-box">
                            <figure class="logo">
                                <a href="<?php echo base_url().'Home/index';?>">
                                   <img style="width:6em; margin-left: 50px; margin-top: -30px;" src="<?php echo base_url().'uploads/settings/'.$settings->logo;?>" alt=""> <!-- Reduced margin-top -->
                                </a>
                            </figure>
                        </div>
                        <div class="menu-area clearfix">
                            <!--Mobile Navigation Toggler-->
                            <div class="mobile-nav-toggler">
                                <i class="icon-bar"></i>
                                <i class="icon-bar"></i>
                                <i class="icon-bar"></i>
                            </div>
                            <nav class="main-menu navbar-expand-md navbar-light">
                                <div class="collapse navbar-collapse show clearfix" id="navbarSupportedContent">
                                    <ul class="navigation clearfix">
                                        <li><a href="<?php echo base_url().'Home/index';?>"><span>Home</span></a></li>
                                        <li><a href="<?php echo base_url().'Home/propertylist';?>"><span>Projects</span></a></li>
                                        <li class="dropdown1"><a href="<?php echo base_url().'Home/aboutus';?>"><span>About Us</span></a>
                                            <!--ul>
                                                <li><a href="<?php //echo base_url().'Home/aboutUs';?>">About Us</a></li>
                                               
                                            </ul-->
                                        </li>
                                        <!--li><a href=""><span>Rentals/Resale</span></a></li-->
                                        
                                        <li><a href="<?php echo base_url().'Home/homecare';?>"><span>Homecare</span></a></li>
                                       
                                        <li><a href="<?php echo base_url().'Home/showcase';?>"><span>Showcase</span></a></li>
                                        <li><a href="<?php echo base_url().'Home/blog';?>"><span>Blog</span></a></li>
                                        <li><a href="<?php echo base_url().'Home/contactUs';?>"><span>Contact</span></a></li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                        <div style="display: flex; align-items: center; margin-top: -20px;">
                            <a href="tel:+<?php echo $contactus->phoneno;?>" style="display: flex; align-items: center; justify-content: center; width: 36px; height: 36px; background-color: green; border-radius: 50%; margin-right: 8px; text-decoration: none;">
                                <i class="fa fa-phone" style="font-size: 18px; color: white;"></i>
                            </a>
                            <div style="display: flex; flex-direction: column;">
                                <span style="font-size: 14px;">Call Anytime</span>
                                <a href="tel:<?php echo $contactus->phoneno;?>" style="display: inline-block; color: rgb(231, 229, 229);  text-decoration: none; font-size: 14px; font-weight: bold; margin-top: -8px;">
                                <?php echo $contactus->phoneno;?>
                                </a>
                                
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        
           
            <div class="sticky-header stickmedia" style="height:100px;  margin-top: -15px;">
                <div class="outer-box">
                    <div class="main-box" style="height:6em">
                        <div class="logo-box">
                            <figure class="logo" ><a href="<?php echo base_url().'Home/index';?>"><img style="width:5em; margin-left: 50px; margin-top: -5px;" src="<?php echo base_url().'uploads/settings/'.$settings->logo;?>" alt=""></a></figure>
                        </div>
                        <div class="menu-area clearfix" style="margin-left: 150px;">
                            <nav class="main-menu clearfix"  style="margin-left: -150px;margin-top: 10px;">
                                <!--Keep This Empty / Menu will come through Javascript-->
                            </nav>
                        </div>
                        <div style="display: flex; align-items: center;margin-top: 10px;">
                            <a href="tel:+<?php echo $contactus->phoneno;?>" style="display: flex; align-items: center; justify-content: center; width: 36px; height: 36px; background-color: green; border-radius: 50%; margin-right: 8px; text-decoration: none;">
                                <i class="fa fa-phone" style="font-size: 18px; color: white;"></i>
                            </a>
                            <div style="display: flex; flex-direction: column;">
                                <span style="font-size: 14px;">Call Anytime</span>
                                <a href="tel:+<?php echo $contactus->phoneno;?>" style="display: inline-block; color: rgb(0, 0, 0);  text-decoration: none; font-size: 14px; font-weight: bold; margin-top: -8px;">
                                <?php echo $contactus->phoneno;?>
                                </a>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <div class="mobile-menu">
            <div class="menu-backdrop"></div>
            <div class="close-btn"><i class="fas fa-times"></i></div>
            
            <nav class="menu-box">
                <div class="nav-logo"><a href="<?php echo base_url().'Home/index';?>"><img style="margin-top: -50px;" src="<?php echo base_url().'uploads/settings/'.$settings->logo;?>" alt="" title=""></a></div>
                <div class="menu-outer"></div>
                <div class="contact-info" style="margin-top: -100px;">
                    <h4>Contact Info</h4>
                    <ul>
                        <li><?php echo $contactus->location;?>,<?php echo $contactus->state;?>,<?php echo $contactus->country;?></li>
                        <li><a href="tel:<?php echo $contactus->phoneno;?>"><?php echo $contactus->phoneno;?></a></li>
                        <li><a href="mailto:<?php echo $contactus->emailid;?>"><?php echo $contactus->emailid;?></a></li>
                    </ul>
                </div>
                <div class="social-links">
                    <ul class="clearfix">
                        <li><a href="<?php echo $settings->TwitterLink;?>" target=_blank><span class="fab fa-twitter"></span></a></li>
                        <li><a href="<?php echo $settings->Fblink;?>" target=_blank><span class="fab fa-facebook-square"></span></a></li>
                        <li><a href="<?php echo $settings->linkedlink;?>" target=_blank><span class="fab fa-linkedin-in"></span></a></li>
                        <li><a href="<?php echo $settings->insta;?>" target=_blank><span class="fab fa-instagram"></span></a></li>
                        <li><a href="<?php echo $settings->YouTubeLink;?>" target=_blank><span class="fab fa-youtube"></span></a></li>
                    </ul>
                </div>
            </nav>
        </div>


        