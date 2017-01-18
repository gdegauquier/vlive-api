<?php
defined('BASEPATH') OR exit('No direct script access allowed');

echo '<p><strong>towns</strong></p>';

if ($towns -> num_rows() > 0) {

	echo '<ul>';


	foreach ($towns->result() as $row) {
		echo '<li><a href="'.site_url('stations/'.$row -> townId).'">'.$row -> name . ' ( ' . $row -> count . ' )</a></li>';
	}
	echo '</ul>';

}
?>