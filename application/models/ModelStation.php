<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ModelStation extends CI_Model {

	function __construct() {
		parent::__construct();
		$this -> table = "station";
	}

	function getLastUpdate(){

		$sql = " select max( date_update ) from  ";

	}

	function getDistinctTowns() {

		$sql = " SELECT town as name, town_id as townId, count(*) as count FROM station group by town, town_id order by town ";
		$query = $this -> db -> query($sql);

		return $query;

	}

	function stationsHaveToBeUpdated(){

		$sql = " select TIMESTAMPDIFF(MINUTE,max(date_update),CURRENT_TIMESTAMP) > 10 as toUpdate from station ";
		$query = $this -> db -> query($sql);
		$ret = false ;

		if ( $query != null && $query-> num_rows() > 0 && $query->result()[0]->toUpdate == 1 ){
			$ret = true ;
		}

		return $ret ;
	}


	function getStationsByTown($townId) {

		$sql = " SELECT id as id, name as name, address as address, town as townName , town_id as townId
				 FROM station 
				 where town_id = ? order by name";
		$query = $this -> db -> query($sql, array($townId));

		return $query;

	}

	function getStations() {

		$sql = " SELECT s.*, t.name as town_name
				 FROM station s inner join town t on s.town_id =t.id
				 order by s.name";
		$query = $this -> db -> query($sql);

		return $query;

	}

	function getStationsWithFilter($filter){

		$filter = strtolower( $filter );

		$sql = " SELECT s.*, t.name as town_name
				 FROM station s inner join town t on s.town_id =t.id 
				 WHERE ( lower(s.name) like ? or lower( t.name ) like ? )
				 order by s.name
			   ";
		$query = $this -> db -> query($sql, array('%'.$filter.'%', '%'.$filter.'%' ) );

		return $query;

	}



	function getTownById($townId) {

		$sql = " SELECT town as name , town_id as id
				 FROM station 
				 where town_id = ? LIMIT 1 ";
		$query = $this -> db -> query($sql, array($townId));

		return $query;

	}
	
	
	function getTownByName($townName) {
		$sql = " SELECT name as name , id as id
				 FROM  town 
				 where name = ? LIMIT 1 ";
		$query = $this -> db -> query($sql, array($townName));

		return $query;
	}
	
	
	/**
	* insert town into DB
	* @name name of the town
	*/
	function insertIfNotExistsTown( $name ){

		//id exists ?
		$id = null;
		$query = $this->getTownByName( $name );
		
		//returns existing id
		if ( $query != null && $query->num_rows() > 0){
			$id = $query->result()[0]->id ;
			return $id;
		}else{

			echo 'ville non trouvée';
		}
		
		//not exists ? insert town into db ...
		$sql = "insert into town ( name ) values ( ? )";
		$this->db->query($sql, array($name));
		
		//... and get created id 
		$query = $this->getTownByName( $name );
		if ( $query != null && $query->num_rows() > 0){
			$id = $query->result()[0]->id ;
			
		}
		
		return $id;

	}

	function getStationById( $id ){

		$sql = " select * from station where id = ? ";
		return $this->db->query($sql, array($id));

	}


	/** 
	* insert station into DB
	* @stationDTO
	*/
	function updateStation( $stationDTO ){


		// town OK ?
		$idTown = $this->insertIfNotExistsTown( $stationDTO->town_name );

		if ( $idTown == null){
			return ;
		}

		//station OK ?
		// does the station exist ?
		$query = $this->getStationById( $stationDTO->id );

		// update infos
		if ( $query != null && $query->num_rows() > 0){

			$sql = "update station set name = ?, address = ?, town_id = ?, bikes = ?, attachs = ?, pay = ? where id = ?";
			$this->db->query($sql, array( $stationDTO->name,  
										  $stationDTO->address, 
										  $idTown, 
										  $stationDTO->bikes, 
										  $stationDTO->attachs, 
										  $stationDTO->pay, 
										  $stationDTO->id ));


			return ;
		}



		//insert infos

		$sql = "insert into station (  id, name, address, town_id, bikes, attachs, pay  ) 
				values ( ?,?,?,?,?,?,? ) ";
			$this->db->query($sql, array( $stationDTO->id,  
										  $stationDTO->name, 
										  $stationDTO->address, 
										  $idTown,
										  $stationDTO->bikes, 
										  $stationDTO->attachs, 
										  $stationDTO->pay ));

	}



}
