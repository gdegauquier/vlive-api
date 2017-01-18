<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ModelStation extends CI_Model {

	function __construct() {
		parent::__construct();
		$this -> table = "station";
	}

	function getDistinctTowns() {

		$sql = " SELECT town as name, town_id as townId, count(*) as count FROM station group by town, town_id order by town ";
		$query = $this -> db -> query($sql);

		return $query;

	}

	function getStationsByTown($townId) {

		$sql = " SELECT id as id, name as name, address as address, town as townName , town_id as townId
				 FROM station 
				 where town_id = ? order by name";
		$query = $this -> db -> query($sql, array($townId));

		return $query;

	}

	function getTownById($townId) {

		$sql = " SELECT town as name , town_id as id
				 FROM station 
				 where town_id = ? LIMIT 1 ";
		$query = $this -> db -> query($sql, array($townId));

		return $query;

	}

}
