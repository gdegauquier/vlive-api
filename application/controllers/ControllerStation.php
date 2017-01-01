<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ControllerStation extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->model("ModelStation");
    }

    public function index( $town )
    {
        $data = $this->ModelStation->getStationsFromTown( $town );
		$stations = array();
		
        if ($data->num_rows() > 0) {
            foreach ($data->result() as $row) {
				
				$station = new Station();
				$station->id = $row->id;
				$station->name = $row->name;
				$station->address = $row->address;
				$station->town_name = $row->townName;
				$station->town_id = $row->townId;
				
				array_push($stations,$station);
                
            }
            echo json_encode($stations);
        } else {
            header("HTTP/1.0 204 No Content");
            echo json_encode("204: no products in the database");
        }
    }

}