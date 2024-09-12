<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public $categories = [];
    public $recentCategories = [];

	public function __construct()
	{
		parent::__construct();
        error_reporting(0);
		$this->data['page_title'] = "Home";
        $this->load->model('Manage_frontend', 'frontend');
        
        $this->load->library('cart');
        $this->load->model('product');
        $this->load->library('email');
        $this->load->library("pagination");
        //$this->load->model('checkout');
	}
    
    public function index()
	{
        //ini_set('error_reporting', E_ALL & ~E_DEPRECATED);

        
        $blog_slug='';
        $this->data['blog'] = $this->frontend->getBlogs($blog_slug);
        
        $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
        $this->data['homepagedetails']= $this->frontend->homepagedetails();
        $this->data['homepagedetails2']= $this->frontend->homepagedetails2();
        $this->data['settings']= $this->frontend->settings();
        $this->data['chooseus']= $this->frontend->chooseus();
        $this->data['carousel']= $this->frontend->carousel();
        $this->data['projects']=$this->frontend->get_ongoingprojects();
        $this->data['projectscomp']=$this->frontend->get_compprojects();
        $this->data['testimonial']=$this->frontend->get_testimonialactive();
        $this->data['clients']=$this->frontend->get_clientsactive();
        $this->data['agents']=$this->frontend->get_agentsactive();
        $config = array();
        $config["base_url"] = base_url() . "Home/propertylist";
        //$config["total_rows"] = $this->sm->get_countsolutions();
        $config["total_rows"]=$this->frontend->get_countpropertylist();
        $config["per_page"] = 3;
        $config["uri_segment"] = 3;
        $config['full_tag_open'] = '<ul class="pagination">';
    $config['full_tag_close'] = '</ul>';
    $config['attributes'] = ['class' => 'page-link'];
    $config['first_link'] = false;
    $config['last_link'] = false;
    $config['first_tag_open'] = '<li class="page-item">';
    $config['first_tag_close'] = '</li>';
    $config['prev_link'] = '&laquo';
    $config['prev_tag_open'] = '<li class="page-item">';
    $config['prev_tag_close'] = '</li>';
    $config['next_link'] = '&raquo';
    $config['next_tag_open'] = '<li class="page-item">';
    $config['next_tag_close'] = '</li>';
    $config['last_tag_open'] = '<li class="page-item">';
    $config['last_tag_close'] = '</li>';
    $config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
    $config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
    $config['num_tag_open'] = '<li class="page-item">';
    $config['num_tag_close'] = '</li>';
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->data["links"] = $this->pagination->create_links();
        $this->data['homeprojects']=$this->frontend->get_propertylist($config["per_page"],$page);
        $this->data['places']=$this->frontend->get_placesactive();





		$this->load->view('index',$this->data);
	}


    public function contactUs()
	{
       
        $blog_slug='';
        $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
        $this->data['blog'] = $this->frontend->getBlogs($blog_slug);
        $this->data['settings']= $this->frontend->settings();
        $this->load->view('contact.php',$this->data);
	}


public function showcase(){
    $blog_slug='';
        $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
        $this->data['blog'] = $this->frontend->getBlogs($blog_slug);
        $this->data['gallery'] = $this->frontend->getGallery($blog_slug);
        $this->data['settings']= $this->frontend->settings();
    $this->load->view('gallery.php',$this->data);
}


public function homecare(){
    $blog_slug='';
        $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
        $this->data['blog'] = $this->frontend->getBlogs($blog_slug);
        $this->data['homecare'] = $this->frontend->gethomecare($blog_slug);
        $this->data['settings']= $this->frontend->settings();
    $this->load->view('homecare.php',$this->data);
}


public function blog(){
    $blog_slug='';
        $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);



        $config = array();
        $config["base_url"] = base_url() . "Home/blog";
        //$config["total_rows"] = $this->sm->get_countsolutions();
        $config["total_rows"]=$this->frontend->get_countblogs();
        $config["per_page"] = 10;
        $config["uri_segment"] = 3;
        $config['full_tag_open'] = '<ul class="pagination">';
    $config['full_tag_close'] = '</ul>';
    $config['attributes'] = ['class' => 'page-link'];
    $config['first_link'] = false;
    $config['last_link'] = false;
    $config['first_tag_open'] = '<li class="page-item">';
    $config['first_tag_close'] = '</li>';
    $config['prev_link'] = '&laquo';
    $config['prev_tag_open'] = '<li class="page-item">';
    $config['prev_tag_close'] = '</li>';
    $config['next_link'] = '&raquo';
    $config['next_tag_open'] = '<li class="page-item">';
    $config['next_tag_close'] = '</li>';
    $config['last_tag_open'] = '<li class="page-item">';
    $config['last_tag_close'] = '</li>';
    $config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
    $config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
    $config['num_tag_open'] = '<li class="page-item">';
    $config['num_tag_close'] = '</li>';
        $this->pagination->initialize($config);
        $page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $this->data["links"] = $this->pagination->create_links();
 $this->data['blog'] = $this->frontend->get_Blogs($config["per_page"],$page);
        //$this->data['blog'] = $this->frontend->getBlogs($blog_slug);
        //print_r($this->data['blog']);
        //die;
        $this->data['homecare'] = $this->frontend->gethomecare($blog_slug);
        $this->data['settings']= $this->frontend->settings();
        $this->data['homepagedetails2']= $this->frontend->homepagedetails2();
    $this->load->view('blog.php',$this->data);
}


public function blogdetails(){
    $blog_slug='';
        $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
        $this->data['blog'] = $this->frontend->getBlogs($blog_slug);
        //print_r($this->data['blog']);
        //die;
        $this->data['homecare'] = $this->frontend->gethomecare($blog_slug);
        $this->data['settings']= $this->frontend->settings();
        $this->data['homepagedetails2']= $this->frontend->homepagedetails2();
        $this->data['aboutus']= $this->frontend->get_aboutus();
        $id=1;
        $this->data['pd']= $this->frontend->propertydetails($id);
        $this->data['pd1']= $this->frontend->homeprojects1($id);
        $id=$this->uri->segment(3);
        $this->data['pd2']= $this->frontend->blogdetails($id);
        $this->data['blogdesc'] = $this->frontend->getBlogsdesc($blog_slug);
    $this->load->view('blog-details.php',$this->data);
}







public function aboutUs(){
    $blog_slug='';
        $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
        $this->data['blog'] = $this->frontend->getBlogs($blog_slug);
        $this->data['settings']= $this->frontend->settings();
        $this->data['homepagedetails']= $this->frontend->homepagedetails();
        $this->data['homepagedetails2']= $this->frontend->homepagedetails2();
        $this->data['activities']= $this->frontend->activities();
        $this->data['aboutus']= $this->frontend->get_aboutus();
        $this->data['testimonial']=$this->frontend->get_testimonialactive();
        $this->data['services']=$this->frontend->get_servicesactive();
        $this->data['clients']=$this->frontend->get_clientsactive();
        $this->data['agents']=$this->frontend->get_agentsactive();
    $this->load->view('about.php',$this->data);
}

public function newslettersubscribe(){
	
    $newsletteremailid=$this->input->post('emailidnews');
    $data=array('subscribeemailid'=>$newsletteremailid);
    $this->db->insert('newslettersubscribe', $data);
    $this->data['settings']= $this->frontend->settings();
    echo ($this->db->affected_rows() != 1) ? 'Error in Subscription' : 'Your emailid subscribed Successfully';

}

public function contactusprocess(){
    $data = $this->input->post(null, true);
    //print_r($data);
    //die;
    $date=Date("Y-m-d");
    $arr = array(
        
        'name' => trim($data['name']),
        'emailid' => trim($data['email']),
        'phoneno' => trim($data['phone']),
        'subject' => trim($data['subject']),
'message' => trim($data['message']),
'date'=>$date

    );

    $save = $this->frontend->saveContactus($arr);




}


public function propertylist(){
    $blog_slug='';
    $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
    $this->data['blog'] = $this->frontend->getBlogs($blog_slug);
    $this->data['settings']= $this->frontend->settings();
    //$this->data['homeprojects']= $this->frontend->homeprojects();

    $config = array();
	$config["base_url"] = base_url() . "Home/propertylist";
	//$config["total_rows"] = $this->sm->get_countsolutions();
	$config["total_rows"]=$this->frontend->get_countpropertylist();
	$config["per_page"] = 3;
	$config["uri_segment"] = 3;
    $config['full_tag_open'] = '<ul class="pagination">';
$config['full_tag_close'] = '</ul>';
$config['attributes'] = ['class' => 'page-link'];
$config['first_link'] = false;
$config['last_link'] = false;
$config['first_tag_open'] = '<li class="page-item">';
$config['first_tag_close'] = '</li>';
$config['prev_link'] = '&laquo';
$config['prev_tag_open'] = '<li class="page-item">';
$config['prev_tag_close'] = '</li>';
$config['next_link'] = '&raquo';
$config['next_tag_open'] = '<li class="page-item">';
$config['next_tag_close'] = '</li>';
$config['last_tag_open'] = '<li class="page-item">';
$config['last_tag_close'] = '</li>';
$config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
$config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
$config['num_tag_open'] = '<li class="page-item">';
$config['num_tag_close'] = '</li>';
	$this->pagination->initialize($config);
	$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
	$this->data["links"] = $this->pagination->create_links();
	$this->data['homeprojects']=$this->frontend->get_propertylist($config["per_page"],$page);
    $this->data['ame']=$this->frontend->get_amlist();
    $this->data['places']=$this->frontend->get_placesactive();
    $this->load->view('property-list.php',$this->data);
}




public function propertydetails(){
    $blog_slug='';
    $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
    $this->data['settings']= $this->frontend->settings();
$id=$this->uri->segment(3);

$this->data['pd1']= $this->frontend->homeprojects1($id);
$this->data['pd']= $this->frontend->propertydetails($id);
//print_r($this->data['pd']);
//die;
$this->data['blog'] = $this->frontend->getBlogs($blog_slug);
$this->db->where('status',1);
$this->db->where('projectid',$id);
$this->db->select('*');
$this->db->from('floors');
$query = $this->db->get();
$this->data['prjdt']=$query->result_array();
//$this->load->view('propertydetails.php',$this->data);
$this->load->view('property-details.php',$this->data);
}


public function propertydetailsdesign(){
    $blog_slug='';
    $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
    $this->data['settings']= $this->frontend->settings();
$id=$this->uri->segment(3);
$id=1;
//die;
$this->data['pd1']= $this->frontend->homeprojects1($id);
$this->data['pd']= $this->frontend->propertydetails($id);
//print_r($this->data['pd']);
//die;
$this->data['blog'] = $this->frontend->getBlogs($blog_slug);

$this->db->where('projectid',$id);
$this->db->select('*');
$this->db->from('floors');
$query = $this->db->get();
$this->data['prjdt']=$query->result_array();


    $this->load->view('property-details.php',$this->data);

}



public function testimonials(){
    $blog_slug='';
    $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
    $this->data['settings']= $this->frontend->settings();
    $this->data['testimonial']=$this->frontend->get_testimonialactive();
    $this->data['blog'] = $this->frontend->getBlogs($blog_slug);
    $this->load->view('testimonials.php',$this->data);

}

public function services(){
    $blog_slug='';
    $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
    $this->data['settings']= $this->frontend->settings();
    $this->data['testimonial']=$this->frontend->get_testimonialactive();
    $this->data['blog'] = $this->frontend->getBlogs($blog_slug);


    $this->data['services']=$this->frontend->get_servicesactive();
    $this->data['clients']=$this->frontend->get_clientsactive();
    $this->data['agents']=$this->frontend->get_agentsactive();
    $this->data['homeprojects']=$this->frontend->get_propertylist($config["per_page"],$page);
    $this->load->view('services.php',$this->data);

}

public function categories(){
    $blog_slug='';
    $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
    $this->data['settings']= $this->frontend->settings();
    $this->data['testimonial']=$this->frontend->get_testimonialactive();
    $this->data['blog'] = $this->frontend->getBlogs($blog_slug);

    $this->data['cat']=$this->frontend->get_catactive();




    $config["base_url"] = base_url() . "Home/propertylist";
	//$config["total_rows"] = $this->sm->get_countsolutions();
	$config["total_rows"]=$this->frontend->get_countpropertylist();
	$config["per_page"] = 3;
	$config["uri_segment"] = 3;
    $config['full_tag_open'] = '<ul class="pagination">';
$config['full_tag_close'] = '</ul>';
$config['attributes'] = ['class' => 'page-link'];
$config['first_link'] = false;
$config['last_link'] = false;
$config['first_tag_open'] = '<li class="page-item">';
$config['first_tag_close'] = '</li>';
$config['prev_link'] = '&laquo';
$config['prev_tag_open'] = '<li class="page-item">';
$config['prev_tag_close'] = '</li>';
$config['next_link'] = '&raquo';
$config['next_tag_open'] = '<li class="page-item">';
$config['next_tag_close'] = '</li>';
$config['last_tag_open'] = '<li class="page-item">';
$config['last_tag_close'] = '</li>';
$config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
$config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
$config['num_tag_open'] = '<li class="page-item">';
$config['num_tag_close'] = '</li>';
	$this->pagination->initialize($config);
	$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
	$this->data["links"] = $this->pagination->create_links();
	$this->data['homeprojects']=$this->frontend->get_propertylist($config["per_page"],$page);

    $this->load->view('categories.php',$this->data);

}



public function faq(){
    $blog_slug='';
    $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
    $this->data['settings']= $this->frontend->settings();
    $this->data['testimonial']=$this->frontend->get_testimonialactive();
    $this->data['blog'] = $this->frontend->getBlogs($blog_slug);
    $this->data['faq']=$this->frontend->get_faqactive();
    $this->load->view('faq.php',$this->data);

}


public function propertylisttype(){
    $blog_slug='';
    $this->data['contactus'] = $this->frontend->getcontactus($blog_slug);
    $this->data['blog'] = $this->frontend->getBlogs($blog_slug);
    $this->data['settings']= $this->frontend->settings();
    //$this->data['homeprojects']= $this->frontend->homeprojects();

    $config = array();
	$config["base_url"] = base_url() . "Home/propertylisttype";
	//$config["total_rows"] = $this->sm->get_countsolutions();
    $type=$this->uri->segment(4);
	$config["total_rows"]=$this->frontend->get_countpropertylisttype($type);
	$config["per_page"] = 3;
	$config["uri_segment"] = 3;
    $config['full_tag_open'] = '<ul class="pagination">';
$config['full_tag_close'] = '</ul>';
$config['attributes'] = ['class' => 'page-link'];
$config['first_link'] = false;
$config['last_link'] = false;
$config['first_tag_open'] = '<li class="page-item">';
$config['first_tag_close'] = '</li>';
$config['prev_link'] = '&laquo';
$config['prev_tag_open'] = '<li class="page-item">';
$config['prev_tag_close'] = '</li>';
$config['next_link'] = '&raquo';
$config['next_tag_open'] = '<li class="page-item">';
$config['next_tag_close'] = '</li>';
$config['last_tag_open'] = '<li class="page-item">';
$config['last_tag_close'] = '</li>';
$config['cur_tag_open'] = '<li class="page-item active"><a href="#" class="page-link">';
$config['cur_tag_close'] = '<span class="sr-only">(current)</span></a></li>';
$config['num_tag_open'] = '<li class="page-item">';
$config['num_tag_close'] = '</li>';
	$this->pagination->initialize($config);
	$page = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
	$this->data["links"] = $this->pagination->create_links();
	$this->data['homeprojects']=$this->frontend->get_propertylisttype($config["per_page"],$page,$type);
    $this->data['ame']=$this->frontend->get_amlist();
    $this->data['places']=$this->frontend->get_placesactive();
    $this->load->view('property-list.php',$this->data);
}

















}