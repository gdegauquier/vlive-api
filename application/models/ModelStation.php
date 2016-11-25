<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ModelStation extends CI_Model {

    function __construct()
    {
        parent::__construct();
        $this->table = "station";
    }

	 function getDistinctTowns(  ){
		 
		$sql = " SELECT distinct town FROM station ";
		$query = $this->db->query($sql);
		
        return $query;
    	 
	 }

    

}
