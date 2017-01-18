<?php 





include('simple_html_dom.php');

$servername = "localhost";
$username = "root";
$password = "";

try {
    $conn = new PDO("mysql:host=$servername;dbname=vlive", $username, $password);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
    }
catch(PDOException $e)
    {
    echo "Connection failed: " . $e->getMessage();
    }






$html = new simple_html_dom();

$html->load_file('http://www.vlille.fr/stations/les-stations-vlille.aspx');
	
$tab = $html->find('#ctl00_Contenu_ListeStations1_ListViewStations_itemPlaceholderContainer',0);

$fin = false;


$id = "" ;
$nom = "";
$ville = "";
$nbBikes = "";
$nbAttachs = "";
$cb = false;





foreach($tab->find('td') as $e){
	
	//ID
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
	
	
	
	
	if ( strpos( $tag,'LibelleLabel' ) ){
		
		echo '<br><br>';
		$fin = false;
		
		
		if ( $id != "" ){
			

	$sql = $conn->prepare("INSERT INTO station ( id, name)
					VALUES ( :id, :name )");
$sql->bindParam(':id', $id);
$sql->bindParam(':name', $nom);
	
	$sql->execute();
	
			
		}
		
		
		
		$id = "";
		$nom= "";
		$town= "";
		$address= "";
		$nbBikes = "";
		$nbAttachs= "";
		$cb = false;
		
		
	}
	
	
	
	 if ( !$fin && $tag != null ) {
		 
		 if ( strpos( $tag,'LibelleLabel' ) ){
			 $id = $e->plaintext;
			 echo $id;
		 }
		 if ( strpos( $tag,'NomLabel' ) ){
			 $nom = $e->plaintext;
		 }
	 }
		//if ( $fin ){
			//echo 'STATION FIN !!!!!!!!!!!<br><br>';
			
			
			//continue;
		//}
	 
	 	//if ( strpos( $tag,'NbBorne' ) ){
		
		//$fin = true;
		
		//}
		
	
	 
}

$conn = null;

?>	