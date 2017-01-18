<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ControllerRefresh extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->model("ModelStation");
    }

    public function index(  )
    {
		
		
// Retrieve the DOM from a given 
$htmlRaw = file_get_contents( 'http://www.vlille.fr/stations/les-stations-vlille.aspx'); 
$html =  str_get_html($htmlRaw);

echo $html;
		
		
		
        echo 'ok';
    }

}