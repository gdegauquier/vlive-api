<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ControllerRefresh extends CI_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->model("ModelStation");
    }

    public function filter( $filter ){

    	header("Access-Control-Allow-Origin: *");
    	$data = $this->ModelStation->getStationsWithFilter( $filter );

    	$stations =  array();
		
        if ($data->num_rows() > 0) {
            foreach ($data->result() as $row) {
				
				$station = new Station();
				$station->id = $row->id;
				$station->name = $row->name;
				$station->address = $row->address;
				$station->town_name = $row->town_name;
				$station->town_id = $row->town_id;
				$station->bikes = $row->bikes;
				$station->attachs = $row->attachs;
				$station->pay = $row->pay;
				
				array_push($stations,$station);
                
            }
			
            echo json_encode($stations, JSON_UNESCAPED_UNICODE);

} else {

            echo json_encode(array(), JSON_UNESCAPED_UNICODE);
}

    }

    public function index(  )
    {
		header("Access-Control-Allow-Origin: *");
    	$hasToUpdate =  $this->ModelStation->stationsHaveToBeUpdated();

    	if ( $hasToUpdate ){
    		$this->updateDB();
    	}


//MAJ en BDD OK

$data = $this->ModelStation->getStations();

		$stations = array();
		
        if ($data->num_rows() > 0) {
            foreach ($data->result() as $row) {
				
				$station = new Station();
				$station->id = $row->id;
				$station->name = $row->name;
				$station->address = $row->address;
				$station->town_name = $row->town_name;
				$station->town_id = $row->town_id;
				$station->bikes = $row->bikes;
				$station->attachs = $row->attachs;
				$station->pay = $row->pay;
				
				array_push($stations,$station);
                
            }
			
            echo json_encode($stations, JSON_UNESCAPED_UNICODE);

} 
else {
            //header("HTTP/1.0 204 No Content");
            echo json_encode(array(), JSON_UNESCAPED_UNICODE);
        }


//$this->load->view( 'vlive_stations', $data );

    }

    private function updateDB(){


// call page with all the information...
$html = new simple_html_dom();
$html->load_file('http://www.vlille.fr/stations/les-stations-vlille.aspx');

// ... and parse it
$tab = $html->find('#ctl00_Contenu_ListeStations1_ListViewStations_itemPlaceholderContainer',0);

$station = new Station();
$fin = false;

foreach($tab->find('td') as $e){
	
	//ID
	$tagF = null;
	$tag = $e->id ;
	if ( $tag == ""){
		$tagF = $e->find('span',0);
		if ( $tagF != null){
			$tag = $tagF->id;
		}else{
			$tagF = $e->find('img',0);
			if ( $tagF != null && $tagF->alt == "Carte Bleue"){
				$tag = $tagF->alt;
			}
			
		}
	}
	
	
	//value
	if ( strpos( $tag,'LibelleLabel' ) &&  $station->id != null ){
		
		$this->ModelStation->updateStation( $station );
		$station = new Station();

		//echo '<br><br>begin -- station -- '.$e->plaintext.'<br><br>';
		$fin = false;
		
	}
	
	 if ( !$fin && ( $tag != null || $id != null) ) {
			 $id = $e->plaintext;
			// echo 'tag='.$tag . ' -> id='.$id .'<br>';

		 //town
		 if ( strpos( $tag,'Label2' ) ){
		 		$station->town_name = $e->plaintext;
		 }

		 //id station 
		 if ( strpos( $tag,'LibelleLabel' ) ){
			$station->id = $e->plaintext;		
		 }
		 //station name
		 if ( strpos( $tag,'NomLabel' ) ){
			$station->name = $e->plaintext;		
		 }
		 //adress
		 if ( strpos( $tag,'Label1' ) ){
		 		$station->address = $e->plaintext;
		 }
		 //bikes
		 if ( strpos( $tag,'NbVelo' ) ){
		 		$station->bikes = $e->plaintext;
		 }
		 //attachs
		 if ( strpos( $tag,'NbBorne' ) ){
		 		$station->attachs = $e->plaintext;
		 }
		 //pay
		 if ( $tagF != null && $tagF->alt == "Carte Bleue"){
		 		$station->pay = 1;
		 		//echo 'CB OK <br>';
		 }

	 }

}

    }

}