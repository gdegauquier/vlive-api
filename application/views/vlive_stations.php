<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/foundation/6.2.4-rc2/foundation.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/foundation/6.2.4-rc2/foundation.min.css">

</head>

<body>

<table>
  <thead>
    <tr>
      <th width="200">id</th>
      <th width="200">id</th>
      <th width="200">id</th>
      <th width="200">id</th>
      <th width="200">id</th>
      <th width="200">id</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Content Goes Here</td>
      <td>This is longer content Donec id elit non mi porta gravida at eget metus.</td>
      <td>Content Goes Here</td>
      <td>Content Goes Here</td>
      <td>Content Goes Here</td>
      <td>Content Goes Here</td>
    </tr>
    <tr>
      <td>Content Goes Here</td>
      <td>This is longer content Donec id elit non mi porta gravida at eget metus.</td>
      <td>Content Goes Here</td>
      <td>Content Goes Here</td>
      <td>Content Goes Here</td>
      <td>Content Goes Here</td>
    </tr>
    <tr>
      <td>Content Goes Here</td>
      <td>This is longer content Donec id elit non mi porta gravida at eget metus.</td>
      <td>Content Goes Here</td>
      <td>Content Goes Here</td>
      <td>Content Goes Here</td>
      <td>Content Goes Here</td>
    </tr>
  </tbody>
</table>


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



</body>
</html>