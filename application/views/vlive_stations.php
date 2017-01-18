<?php
defined('BASEPATH') OR exit('No direct script access allowed');

header("Access-Control-Allow-Origin: free.fr");


$town = '';
if ($towns -> num_rows() > 0) {

	//echo $towns -> num_rows();

	$row = $towns -> result();
	$town = $row[0] -> name;
}

echo '<p><strong><a href="'.site_url('').'">towns</a> > ' . $town . ' > stations ('.$stations -> num_rows().')</strong></p>';

echo '<ul>';

foreach ($stations->result() as $row) {

	echo '<li><a href="' . site_url('station/' . $row -> id) . '">' . $row -> name . ' </a></li>';
	//echo file_get_contents('http://vlille.fr/stations/xml-station.aspx?borne='.$row -> id);


}
echo '</ul>';
// http://vlille.fr/stations/xml-station.aspx?borne=<ID>



$station = 'LFBO';
 
function getTemperature($station) {
    // LFBO correspond au code de Toulouse
    //  Pour trouver le code d'une station : http://weather.uwyo.edu/surface/meteogram/
        $lien='http://weather.uwyo.edu/cgi-bin/wyowx.fcgi?TYPE=sflist&DATE=current&HOUR=current&UNITS=A&STATION='.$station;
        $curl = curl_init($lien);
        curl_setopt($curl, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 6.1; fr; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13');
        curl_setopt($curl, CURLOPT_REFERER, 'http://www.google.fr');
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $file = curl_exec($curl);
        curl_close($curl);
        $infos=strstr($file,$station.' ');       
    //isoler la portion de ligne intéressante
    $temperature = substr($infos,17, 3);
    return $temperature;
}
 $temperature = getTemperature($station);
 echo $temperature;




?>
