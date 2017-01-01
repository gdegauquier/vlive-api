<?php defined('BASEPATH') OR exit('No direct script access allowed');


class Town
{
    public $name;
	public $id;
	public $count;
	
	
	public function setName($name){
		$this->name = $name;
    }

    public function getName()
    {
        return $this->name;
    }
	
	public function setCount($count){
		$this->count = $count;
    }

    public function getCount()
    {
        return $this->count;
    }
    
}