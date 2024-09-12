<?php class Servicesmodel extends CI_Model {

        /*public $title;
        public $content;
        public $date;

        public function get_last_ten_entries()
        {
                $query = $this->db2->get('entries', 10);
                return $query->result();
        }

        public function insert_entry()
        {
                $this->title    = $_POST['title']; // please read the below note
                $this->content  = $_POST['content'];
                $this->date     = time();

                $this->db2->insert('entries', $this);
        }

        public function update_entry()
        {
                $this->title    = $_POST['title'];
                $this->content  = $_POST['content'];
                $this->date     = time();

                $this->db2->update('entries', $this, array('id' => $_POST['id']));
        }*/

public function get_user($username,$password){


    $this->db2->where('username',$username);
    $this->db2->where('password',$password);
    $this->db2->select('*');
    $this->db2->from('login');

    //$this->db2->order_by('donor_id','desc');

    $query=$this->db2->get();
    


//echo $this->db->last_query();
    if ($query->num_rows() > 0){
        return 1;
    }
    else{
        return 0;
    }
}


function get_count(){

    $this->db2->select('*');
    $this->db2->from('category');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();

}

function get_categories($limit,$start){
    $this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('category');
    $query = $this->db2->get();
    return $query->result_array();
}


function get_categoriesall(){
    $this->db2->select('*');
    $this->db2->from('category');
    $query = $this->db2->get();
    return $query->result_array();
}


function get_subcategoriesall(){
    $this->db2->select('*');
    $this->db2->from('subcategory');
    $query = $this->db2->get();
    return $query->result_array();
}


function get_servicesall(){
    $this->db2->select('*');
    $this->db2->from('services');
    $query = $this->db2->get();
    return $query->row();

}

function get_aboutus(){
    $this->db2->select('*');
    $this->db2->from('aboutus');
    $query = $this->db2->get();
    return $query->row();
}

function get_subcategories($limit,$start){
$this->db2->limit($limit,$start);
$this->db2->select('*');
$this->db2->from('subcategory');
$query = $this->db2->get();
return $query->result_array(); 
}

function get_countsub(){
    $this->db2->select('*');
    $this->db2->from('subcategory');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();
}


function get_enquiries($limit,$start){
    $this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('contactenquiries');
    $query = $this->db2->get();
    return $query->result_array(); 
}

function get_countenquiries(){
    $this->db2->select('*');
    $this->db2->from('contactenquiries');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();
}


function get_contactenquiries($limit,$start){
$this->db2->limit($limit,$start);
$this->db2->select('*');
$this->db2->from('contactenquiries');
$query = $this->db2->get();
return $query->result_array(); 
}


function getSiteDetails(){
    //$this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('settings');
    $query = $this->db2->get();
    return $query->result_array(); 
    }

    function getSiteDt(){
        //$this->db2->limit($limit,$start);
        $this->db2->select('*');
        $this->db2->from('settings');
        $query = $this->db2->get();
        return $query->row(); 
        }

    function get_countsitedetails(){
        $this->db2->select('*');
        $this->db2->from('sitedetails');
        $query = $this->db2->get();
        return $rowcount = $query->num_rows();
    }
    
function activities(){
    $this->db2->select('*');
    $this->db2->from('reasontochooseus');
    $query = $this->db2->get();
    return $query->result_array(); 

}

function get_countactivities(){
    $this->db2->select('*');
    $this->db2->from('reasontochooseus');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();
}




function get_countcontactenquiries(){
    $this->db2->select('*');
    $this->db2->from('contactenquiries');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();
}



function get_bookenquiries($limit,$start){
    $this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('bookingenquiries');
    $query = $this->db2->get();
    return $query->result_array(); 
    }
    
    function get_countbookenquiries(){
        $this->db2->select('*');
        $this->db2->from('bookingenquiries');
        $query = $this->db2->get();
        return $rowcount = $query->num_rows();
    }

function get_services($limit,$start){
    $this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('services');
    $query = $this->db2->get();
    return $query->result_array();


}

function get_countservices(){
    $this->db2->select('*');
    $this->db2->from('services');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();
}

function get_aboutusadmin(){
    //$this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('aboutus');
    $query = $this->db2->get();
    return $query->result_array();


}

function get_blog(){
    $this->db2->select('*');
    $this->db2->from('blogcontents');
    $query = $this->db2->get();
    return $query->row();
    
}

function get_blogcontents(){
    $this->db2->select('*');
    $this->db2->from('blog');
    $query = $this->db2->get();
    return $query->result_array();

}

public function get_home_story() {
        $query = $this->db2->get('home_story');
        return $query->result_array();
    }

    public function get_home_reason() {
        $query = $this->db2->get('home_reason');
        return $query->result_array();
    }
    public function get_home_section() {
        $query = $this->db2->get('home_section');
        return $query->result_array();
    }

    public function get_home_ceo() {
        $query = $this->db2->get('home_ceo');
        return $query->result_array();
    }

    public function update_home_story($id, $data) {
        $this->db->where('id', $id);
        return $this->db2->update('home_story', $data);
    }
    public function update_home_section($id,$data) {
        $this->db->where('id', $id);
        return $this->db2->update('home_section', $data);
    }
    public function update_home_reason($id, $data) {
        $this->db->where('reason_id', $id);
        return $this->db2->update('home_reason', $data);
    }

    public function update_home_ceo($id, $data) {
        $this->db->where('id', $id);
        return $this->db2->update('home_ceo', $data);
    }

function get_blogcontentstop(){

    $this->db2->where('toparticle','Yes');
    $this->db2->select('*');
    $this->db2->from('blogcontents');
    $query = $this->db2->get();
    return $query->row();


}


function get_blogcontentstopcount(){

    $this->db2->where('toparticle','Yes');
    $this->db2->select('*');
    $this->db2->from('blogcontents');
    $query = $this->db2->get();
    return $query->num_rows();


}




function get_faq(){
    $this->db2->select('*');
    $this->db2->from('faq');
    $query = $this->db2->get();
    return $query->result_array();


}
function get_faqactive(){
    $this->db2->where('active',1);
    $this->db2->select('*');
    $this->db2->from('faq');
    $query = $this->db2->get();
    return $query->result_array();


}

function get_testimonial(){
    $this->db2->select('*');
    $this->db2->from('testimonials');
    $query = $this->db2->get();
    return $query->result_array();
}


function get_contactus(){
    
    $this->db2->select('*');
    $this->db2->from('contactus');
    $query = $this->db2->get();
    return $query->row();


}

function get_newsletter(){
    $this->db2->select('*');
    $this->db2->from('newsletter');
    $query = $this->db2->get();
    return $query->row();

}
function get_contactusrow(){
    $this->db2->select('*');
    $this->db2->from('contactus');
    $query = $this->db2->get();
    return $query->row();
}

function get_countfaq(){
    $this->db2->select('*');
    $this->db2->from('faq');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();

}


function get_faqadmin($limit,$start){
    $this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('faq');
    $query = $this->db2->get();
    return $query->result_array(); 
    }

    function get_countmenu(){
        $this->db2->select('*');
        $this->db2->from('menus');
        $query = $this->db2->get();
        return $rowcount = $query->num_rows();
    
    }
    
    
    function get_menuadmin($limit,$start){
        $this->db2->limit($limit,$start);
        $this->db2->select('*');
        $this->db2->from('menus');
        $query = $this->db2->get();
        return $query->result_array(); 
        }






    function get_countblog(){
        $this->db2->select('*');
        $this->db2->from('blogcontents');
        $query = $this->db2->get();
        return $rowcount = $query->num_rows();


    }
    function get_counttestimonials(){
        $this->db2->select('*');
        $this->db2->from('testimonials');
        $query = $this->db2->get();
        return $rowcount = $query->num_rows();


    }

    function get_testimonialsadmin($limit,$start){
        $this->db2->limit($limit,$start);
        $this->db2->select('*');
        $this->db2->from('testimonials');
        $query = $this->db2->get();
        return $query->result_array(); 
        }
    function get_blogadmin($limit,$start){
        $this->db2->limit($limit,$start);
        $this->db2->select('*');
        $this->db2->from('blogcontents');
        $query = $this->db2->get();
        return $query->result_array(); 
        }

function get_servicedetals($serid){
    //$this->db2->limit($limit,$start);
    $this->db2->where('categoryid',$serid);
    $this->db2->select('*');
    $this->db2->from('subcategory');
    $query = $this->db2->get();
    //echo $this->db2->last_query();
    return $query->result_array(); 


}

function get_featureupdate(){
    //$this->db2->where('categoryid',$serid);
    $this->db2->select('*');
    $this->db2->from('featureupdate');
    $query = $this->db2->get();
    //echo $this->db2->last_query();
    return $query->result_array();

}


function get_blogpagedetails(){
    $this->db2->select('*');
    $this->db2->from('blog');
    $query = $this->db2->get();
    return $query->result_array();


}

function get_newsletterall(){
    $this->db2->select('*');
    $this->db2->from('newsletter');
    $query = $this->db2->get();
    return $query->result_array();


}


function get_countnewslettersubscribers(){
    $this->db2->select('*');
    $this->db2->from('newslettersubscribe');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();


}

function get_newslettersubscribersall($limit,$start){
    $this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('newslettersubscribe');
    $query = $this->db2->get();
    return $query->result_array();

}


function get_lowestpackage($serid){
    $this->db2->where('active',1);
    $this->db2->where('categoryid',$serid);
    $this->db2->select('*');                
    $this->db2->order_by('price');
    $this->db2->limit(1);
    $query = $this->db2->get('subcategory');
   
 return $query->row();

}


function get_lowestpackagecount($serid){
    $this->db2->where('active',1);
    $this->db2->where('categoryid',$serid);
    $this->db2->select('*');                
    $this->db2->order_by('price');
    $this->db2->limit(1);
    $query = $this->db2->get('subcategory');
   
 return $query->num_rows();

}
function get_problems(){
    $this->db2->select('*');
    $this->db2->from('problems');
    $query = $this->db2->get();
    return $query->result_array();

}

function get_homepage(){
    $this->db2->select('*');
    $this->db2->from('homepage');
    $query = $this->db2->get();
    return $query->row();


}
function get_homepageadmin(){
    $this->db2->select('*');
    $this->db2->from('homepage');
    $query = $this->db2->get();
    return $query->result_array();


}

function get_countsolutions(){
    $this->db2->select('*');
    $this->db2->from('problems');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();

}

function get_solutions($limit,$start){
    $this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('problems');
    $query = $this->db2->get();
    return $query->result_array();
    
}

function get_countquality(){
    $this->db2->select('*');
    $this->db2->from('quality');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();


}

function get_qualityadmin($limit,$start){
    $this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('quality');
    $query = $this->db2->get();
    return $query->result_array();
    
}

function get_qualities(){
    //$this->db2->limit($limit,$start);
    $this->db2->order_by('orderno');
    $this->db2->select('*');
    $this->db2->from('quality');
    $query = $this->db2->get();
    return $query->result_array();

}

function get_menus(){
    $this->db2->where('menutype',1);
    $this->db2->where('status',1);
    $this->db2->order_by("orderno", "asc");
    $this->db2->select('*');
    $this->db2->from('menus');
    $query = $this->db2->get();
    return $query->result_array();

}


function get_siteinf(){

    $this->db2->select('*');
    $this->db2->from('siteinformation');
    $query = $this->db2->get();
    return $query->row();

}
function get_socialmedialinks(){
    $this->db2->select('*');
    $this->db2->from('socialmedialinks');
    $query = $this->db2->get();
    return $query->row();

}

function get_subcategoriesrand(){
    $this->db2->order_by('id','RANDOM');
    $this->db2->limit(8);
    //$this->db2->where('status',1);
    $this->db2->select('*');
    $this->db2->from('subcategory');
    $query = $this->db2->get();
    return $query->result_array();


}

function get_quality($id){
    $this->db2->where('qualityid',$id);
    $this->db2->select('*');
    $this->db2->from('quality');
    $query = $this->db2->get();
    return $query->row();



}


function get_servicesdetails(){
    $this->db2->select('*');
    $this->db2->from('servicedetails');
    $query = $this->db2->get();
    return $query->row();


}
function get_parentmenus(){
    $this->db2->where('status',1);
    $this->db2->where('menutype',1);
    $this->db2->select('*');
    $this->db2->from('menus');
    $query = $this->db2->get();
    return $query->result_array();
}

function upgoogleanalytics(){



    
}

/*function get_countservicessteps(){


}*/

function get_countservicessteps(){
    $this->db2->select('*');
    $this->db2->from('solutionsteps');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();

}

function get_servicessteps($limit,$start){
    $this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('solutionsteps');
    $query = $this->db2->get();
    return $query->result_array();
    
}


function get_steps(){
    $this->db2->select('*');
    $this->db2->from('solutionsteps');
    $query = $this->db2->get();
    return $query->result_array();
}

public function getData($rowno,$rowperpage) {
 
    $this->db2->select('*');
    $this->db2->from('posts');
    $this->db2->limit($rowperpage, $rowno);  
    $query = $this->db2->get();
 
    return $query->result_array();
  }

  // Select total records
  public function getrecordCount() {

    $this->db2->select('count(*) as allcount');
    $this->db2->from('posts');
    $query = $this->db2->get();
    $result = $query->result_array();
 
    return $result[0]['allcount'];
  }

  
  function get_categoriesallactive(){
    $this->db2->where('active',1);
    $this->db2->select('*');
    $this->db2->from('category');
    $query = $this->db2->get();
    return $query->result_array();
}

function get_stepsactive(){
    $this->db2->where('active',1);
    $this->db2->select('*');
    $this->db2->from('solutionsteps');
    $query = $this->db2->get();
    return $query->result_array();
}

function get_problemsactive(){
    $this->db2->where('active',1);
    $this->db2->select('*');
    $this->db2->from('problems');
    $query = $this->db2->get();
    return $query->result_array();

}

function get_subcategoriesallactive(){
    $this->db2->where('active',1);
    $this->db2->select('*');
    $this->db2->from('subcategory');
    $query = $this->db2->get();
    return $query->result_array();
}


function get_servicedetalsactive($serid){
    //$this->db2->limit($limit,$start);
    $this->db2->where('active',1);
    $this->db2->where('categoryid',$serid);
    $this->db2->select('*');
    $this->db2->from('subcategory');
    $query = $this->db2->get();
    //echo $this->db2->last_query();
    return $query->result_array(); 


}

function get_blogcontentsactive(){
    $this->db2->where('active',1);
    $this->db2->select('*');
    $this->db2->from('blogcontents');
    $query = $this->db2->get();
    return $query->result_array();

}



function get_testimonialactive(){
    $this->db2->where('active',1);
    $this->db2->select('*');
    $this->db2->from('testimonials');
    $query = $this->db2->get();
    return $query->result_array();
}


function get_featureupdateactive(){
    $this->db2->where('active',1);
    $this->db2->select('*');
    $this->db2->from('featureupdate');
    $query = $this->db2->get();
    //echo $this->db2->last_query();
    return $query->result_array();

}


function get_qualitiesactive(){
    $this->db2->where('active',1);
    $this->db2->order_by('orderno');
    $this->db2->select('*');
    $this->db2->from('quality');
    $query = $this->db2->get();
    return $query->result_array();

}

function getrecordCountsubcategory(){
    $this->db2->select('*');
    $this->db2->from('subcategory');
    $query = $this->db2->get();
    return $query->num_rows();
}


function getDatasubcategory($rowno,$rowperpage){
    $this->db2->limit($rowperpage,$rowno);
$this->db2->select('*');
$this->db2->from('subcategory');
$query = $this->db2->get();
return $query->result_array();
}

function get_blogdt($blogid){
    $this->db2->where('contentid',$blogid);
    //$this->db2->order_by('orderno');
    $this->db2->select('*');
    $this->db2->from('blogcontents');
    $query = $this->db2->get();
    return $query->row();

}
function get_downloads(){
    $this->db2->select('*');
    $this->db2->from('downloads');
    $query = $this->db2->get();
    return $query->result_array();

}
function get_downloadsdt(){
    $this->db2->select('*');
    $this->db2->from('downloads');
    $query = $this->db2->get();
    return $query->row();

}
function get_bookings(){
    $this->db2->select('*');
    $this->db2->from('booking');
    $query = $this->db2->get();
    return $query->result_array();

}




function get_prdspec(){

$this->db2->select('*');
    $this->db2->from('productspecifications');
    $query = $this->db2->get();
    return $query->result_array();


}

function get_carousalactive(){
    $this->db2->where('active',1);
    $this->db2->select('*');
    $this->db2->from('carousel');
    $query = $this->db2->get();
    return $query->result_array();


}


function get_carousalactivedis($flag){
    $this->db2->where('showinfront',$flag);
    $this->db2->where('active',1);
    $this->db2->select('*');
    $this->db2->from('carousel');
    $query = $this->db2->get();
    return $query->result_array();


}
function get_countcarousel(){
$this->db2->select('*');
    $this->db2->from('home_carosel');
    $query = $this->db2->get();
    return $query->num_rows();


}

public function get_carousel($limit,$start){
    $this->db2->limit($limit,$start);
    //$this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('home_carosel');
    $query = $this->db2->get();
    return $query->result_array();



}
function get_productactive(){
    $this->db2->where('active',1);
    $this->db2->select('*');
    $this->db2->from('item');
    $query = $this->db2->get();
    return $query->result_array();


}

function get_countitems(){
    $this->db2->select('*');
    $this->db2->from('item');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();

}

function get_items($limit,$start){
    $this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('item');
    $query = $this->db2->get();
    return $query->result_array(); 
    }


function get_countproducttype(){
    $this->db2->select('*');
    $this->db2->from('producttype');
    $query = $this->db2->get();
    return $rowcount = $query->num_rows();

}


function get_producttypeadmin($limit,$start){
    $this->db2->limit($limit,$start);
    $this->db2->select('*');
    $this->db2->from('producttype');
    $query = $this->db2->get();
    return $query->result_array(); 
    }

    public function add_project($data) {
        return $this->db2->insert('home_projects', $data);
    }
    public function get_home_projects() {
        $query = $this->db2->get('home_projects');
        return $query->result_array();
    }
    public function get_home_project_by_id($id) {
        $this->db2->where('id', $id);
        $query = $this->db2->get('home_projects');
        return $query->result_array(); 
    }

    public function update_project($id, $data) {
        $this->db2->where('id', $id);
        return $this->db2->update('home_projects', $data);
    }

    public function update_projectdt($id, $data) {
        
        $this->db2->where('projectid', $id);
        $query = $this->db2->get('projectdetails');
        $rowcount = $query->num_rows();
        if ($rowcount==0){
            return $this->db2->insert('projectdetails', $data);

        }
else{
        $this->db2->where('projectid', $id);
        return $this->db2->update('projectdetails', $data);
         //echo $this->db2->last_query();
         //die;
}
    }




    public function update_floordt($id, $data) {
        /*$this->db2->where('projectid', $id);
        $query = $this->db2->get('projectdetails');
        $rowcount = $query->num_rows();
        if ($rowcount==0){*/
        //$this->db2->where('projectid',$id);
       //$this->db2->delete('floors');
        return $this->db2->insert('floors', $data);

        }
/*else{
        $this->db2->where('projectid', $id);
        return $this->db2->update('projectdetails', $data);
        
}*/
    //}







    function get_countongoingprojects(){
        $this->db2->select('*');
        $this->db2->from('home_projects');
        $query = $this->db2->get();
        return $rowcount = $query->num_rows();

    }
    function get_ongoingprojects($limit,$start){
        //$this->db2->where('project_status',0);
        $this->db2->limit($limit,$start);
        $this->db2->select('*');
        $this->db2->from('home_projects');
        $query = $this->db2->get();
        return $query->result_array(); 
        }


        function get_countfeatureupdate(){
            $this->db2->select('*');
            $this->db2->from('featureupdate');
            $query = $this->db2->get();
            return $rowcount = $query->num_rows();
    
        }
        function get_productsactive($producttype){

        /*function get_featureupdate($limit,$start){
            $this->db2->limit($limit,$start);
            $this->db2->select('*');
            $this->db2->from('featureupdate');
            $query = $this->db2->get();
            return $query->result_array(); 
            }*/
            $this->db2->where('type',$producttype);
            $this->db2->where('active',1);
            $this->db2->select('*');
            $this->db2->from('item');
            $query = $this->db2->get();
            return $query->result_array();
        }


        function get_productslistactive($limit,$start,$producttype){

            /*function get_featureupdate($limit,$start){
                $this->db2->limit($limit,$start);
                $this->db2->select('*');
                $this->db2->from('featureupdate');
                $query = $this->db2->get();
                return $query->result_array(); 
                }*/
                $this->db2->limit($limit,$start);
                $this->db2->where('type',$producttype);
                $this->db2->where('active',1);
                $this->db2->select('*');
                $this->db2->from('item');
                $query = $this->db2->get();
                return $query->result_array();
            }

            function get_countproductslistactive($producttype){
            $this->db2->where('type',$producttype);
                $this->db2->where('active',1);
                $this->db2->select('*');
                $this->db2->from('item');
                $query = $this->db2->get();
                return $query->num_rows();
            }

        function get_prdspecactive($productid){
            $this->db2->where('productid',$productid);
            $this->db2->select('*');
            $this->db2->from('productspecifications');
            $query = $this->db2->get();
            return $query->result_array();
        
        
        }

        function get_prdimgactive($productid){
            $this->db2->where('productid',$productid);
            $this->db2->select('*');
            $this->db2->from('productimages');
            $query = $this->db2->get();
            return $query->result_array();
        
        
        }

        function get_prdactive($productid){

            /*function get_featureupdate($limit,$start){
                $this->db2->limit($limit,$start);
                $this->db2->select('*');
                $this->db2->from('featureupdate');
                $query = $this->db2->get();
                return $query->result_array(); 
                }*/
                $this->db2->where('itemid',$productid);
                $this->db2->where('active',1);
                $this->db2->select('*');
                $this->db2->from('item');
                $query = $this->db2->get();
                return $query->row();
            }

            function get_productstypeactive($prdtype){

                /*function get_featureupdate($limit,$start){
                    $this->db2->limit($limit,$start);
                    $this->db2->select('*');
                    $this->db2->from('featureupdate');
                    $query = $this->db2->get();
                    return $query->result_array(); 
                    }*/
                    $this->db2->where('producttypeid',$prdtype);
                    $this->db2->where('active',1);
                    $this->db2->select('*');
                    $this->db2->from('producttype');
                    $query = $this->db2->get();
                    return $query->row();
                }



                function get_countkeywords(){
                    $this->db2->select('*');
                    $this->db2->from('products');
                    $query = $this->db2->get();
                    return $rowcount = $query->num_rows();
            
                }


                function get_keywords($limit,$start){
                    $this->db2->limit($limit,$start);
                    $this->db2->select('*');
                    $this->db2->from('products');
                    $query = $this->db2->get();
                    return $query->result_array();
            
                }

                function get_countdata($table)
                {
                    $this->db2->select('*');
                    $this->db2->from($table);
                    $query = $this->db2->get();
                    return $rowcount = $query->num_rows();
            
                }


                function get_data($limit,$start,$table){
                    //$this->db2->where('active',1);
                    $this->db2->limit($limit,$start);
                    $this->db2->select('*');
                    $this->db2->from($table);
                    $query = $this->db2->get();
                    return $query->result_array();
            
                }

                function get_activedata($table){
                   $this->db2->where('active',1);
                    //$this->db2->limit($limit,$start);
                    $this->db2->select('*');
                    $this->db2->from($table);
                    $query = $this->db2->get();
                    return $query->result_array();
            
                }



                function get_activedataser($table){
                    $this->db2->where('active',1);
                    $this->db2->where('showinservices',1);
                     $this->db2->select('*');
                     $this->db2->from($table);
                     $query = $this->db2->get();
                     return $query->result_array();
             
                 }




                function get_activedatawhere($table,$id,$fieldid){
                $this->db2->where($fieldid,$id);
                //$this->db2->limit($limit,$start);
                $this->db2->select('*');
                $this->db2->from($table);
                $query = $this->db2->get();
                return $query->result_array();
        
            }

            function get_activedatarowwhere($table,$id,$fieldid){
                $this->db2->where($fieldid,$id);
                //$this->db2->limit($limit,$start);
                $this->db2->select('*');
                $this->db2->from($table);
                $query = $this->db2->get();
                return $query->row();
        
            }


            function get_activedatacount($table,$id,$fieldid){
                $this->db2->where($fieldid,$id);
                //$this->db2->limit($limit,$start);
                $this->db2->select('*');
                $this->db2->from($table);
                $query = $this->db2->get();
                return $query->num_rows();
        
            }



            function get_datarowwhere($table,$id,$fieldid1){
                $this->db2->where($fieldid1,$id);
                //$this->db2->limit($limit,$start);
                $this->db2->select('*');
                $this->db2->from($table);
                $query = $this->db2->get();
                return $query->row();
        
            }



            function get_countflightenquiries(){
                $this->db2->select('*');
                $this->db2->from('enquiries');
                $query = $this->db2->get();
                return $rowcount = $query->num_rows();
            }

            function get_flightenquiries(){
            //$this->db2->where('productid',$productid);
            $this->db2->select('*');
            $this->db2->from('enquiries');
            $query = $this->db2->get();
            return $query->result_array();}


            function get_countflight(){
                $this->db2->select('*');
                $this->db2->from('touristplaces');
                $query = $this->db2->get();
                return $rowcount = $query->num_rows();
            }

            function get_flightadmin($limit,$start){
             
                    //$this->db2->where('active',1);
                    $this->db2->limit($limit,$start);
                $this->db2->select('*');
                $this->db2->from('touristplaces');
                $query = $this->db2->get();
                return $query->result_array();}

                function get_countduration(){
                    $this->db2->select('*');
                    $this->db2->from('tourduration');
                    $query = $this->db2->get();
                    return $rowcount = $query->num_rows();
                }
          
                function get_durationadmin($limit,$start){
             
                    //$this->db2->where('active',1);
                    $this->db2->limit($limit,$start);
                $this->db2->select('*');
                $this->db2->from('tourduration');
                $query = $this->db2->get();
                return $query->result_array();}


}
?>