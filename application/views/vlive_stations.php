<?php
defined('BASEPATH') OR exit('No direct script access allowed');



if ( $stations == null || $stations->num_rows() == 0  ){
    return ;
}


foreach (  $stations->result() as $row     ){

    echo '<br>id '.$row->id.'<br>';
    echo 'name '.$row->name.'<br>';
    echo 'address '.$row->address.'<br>';
    echo 'town '.$row->town_name.'<br>';
    echo 'bikes '.$row->bikes.'<br>';
    echo 'attachs '.$row->attachs.'<br>';
}




?>
