<?php
  defined('BASEPATH') OR exit('No direct script access allowed');
?>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/foundation/6.2.4-rc2/foundation.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/foundation/6.2.4-rc2/foundation.min.css">

</head>

<body>




<div class="row"  style="background-color: #da353d;padding:1em;" >
  <div class="small-6 columns" style="color:#FFFFFF;"><b>V-LIVE</b></div>
  <div class="small-6 columns" style="text-align:right;"><a href="<?= site_url().'/api/v1/refresh' ?>"><img src="<?=base_url().'assets/reload.png'?>" width="32" alt="pay"/> </a></div>
</div>

<table>
  <thead>
    <tr>
      
      <th width="200"></th>
      <th width="50"><img src="<?=base_url().'assets/bicycle.png'?>" width="32" alt="bike"/></th>
      <th width="50"><img src="<?=base_url().'assets/parking_sign.png'?>" width="32" alt="attachs"/></th>
      <th width="50"><img src="<?=base_url().'assets/credit_card.png'?>" width="32" alt="pay"/></th>
      
    </tr>
  </thead>
  <tbody>
    

<?php

if ( $stations != null || $stations->num_rows() > 0  ){
    

  foreach (  $stations->result() as $row  ){


      $img = "";
      if ( $row->pay != null && $row->pay == 1 ){
          $img = '<img src="'.base_url().'assets/credit_card.png'.'" width="32" alt="pay"/>';
      }

      echo '<tr>';
        
        echo '<td> <h6 style="font-size:.8rem;"><span class="badge"> '.$row->id.' </span> '.$row->name.'</h6><h6 class="subheader" style="font-size:.6rem;">'.$row->town_name.'</h6></td>';
        echo '<td><b>'.$row->bikes.'</b></td>';
        echo '<td><b>'.$row->attachs.'</b></td>';
        echo '<td>'.$img.'</td>';
      echo '</tr>';

  }

}

?>
</tbody>
</table>


</body>
</html>