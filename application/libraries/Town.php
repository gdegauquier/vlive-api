<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Town
{
    public $name;
	
	
	public function setName($name){
		$this->name = $name;
    }

    public function getName()
    {
        return $this->name;
    }
    
}