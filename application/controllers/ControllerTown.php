<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ControllerTown extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->model("ModelStation");
    }

    public function index()
    {
        $data = $this->ModelStation->getDistinctTowns();

		$towns = array();
		
        if ($data->num_rows() > 0) {
            foreach ($data->result() as $row) {
				
				$town = new Town();
				$town->setName( $row->name );
				
				array_push($towns,$town);
                
            }
            echo json_encode($towns);
        } else {
            header("HTTP/1.0 204 No Content");
            echo json_encode("204: no products in the database");
        }
    }

}