<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model_admin extends CI_Model {
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	
	
//-- for 2 choosen ---///////////////////////////////////////////
private function _get_datatables_query($nm_coloum,$orderby,$where)
	{	
		$i = 0;
		foreach ($nm_coloum as $item) 
		{
			if($_POST['search']['value'])
				($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
			$column[$i] = $item;
			$i++;
		}
		
		if(isset($_POST['order']))
		{
				$n=0;
            $sort=$_POST['order'];
            foreach($sort as $i =>$val){
             $this->db->order_by($column[$_POST['order'][$n]['column']], $_POST['order'][$n]['dir']);   
             $n++;
            }
			//$this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		}
		else if(isset($orderby))
		{
			
			$order = $orderby;
			$this->db->order_by(key($order), $order[key($order)]);
			
		}
		
		if($where != ''){
        $this->db->where($where); 
		}
}

function get_datatables($selected,$nm_tabel,$nm_coloum,$orderby,$where,$nm_tabel2,$kolom1,$kolom2)
	{
		
		$this->db->select($selected);
	    $this->db->from($nm_tabel);
		//$this->db->join($nm_tabel2,$kolom1.'='.$kolom2,'LEFT');

		//$this->db->group_by('a.Id'); 
		$this->_get_datatables_query($nm_coloum,$orderby,$where);
	
        if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
}

public function count_all($nm_tabel,$nm_coloum,$nm_tabel2,$kolom1,$kolom2)
	{
		$this->db->from($nm_tabel);
		$this->db->join($nm_tabel2,$kolom1.'='.$kolom2,'LEFT');
		return $this->db->count_all_results();
}

public function count_filtered($nm_tabel,$nm_coloum,$orderby,$where,$nm_tabel2,$kolom1,$kolom2)
	{
		$this->_get_datatables_query($nm_coloum,$orderby,$where);
        $this->db->from($nm_tabel);
		$this->db->join($nm_tabel2,$kolom1.'='.$kolom2,'LEFT');

		return $this->db->count_all_results();
}


//========================Others Query========================
public function get_by_id($id,$nmtabel,$key)
	{
		$this->db->from($nmtabel);
		$this->db->where($key,$id);
		$query = $this->db->get();
		return $query->row();
	}
    function getCustom($kolom,$table,$where) 
	{
	$query=$this->db->query("select ".$kolom." from ".$table." $where");		
	return $query->result();
 	}
    
	function getMaxId($table,$kolom) 
	{
	//$query=$this->db->query("select MAX(Id) AS maxi from ".$table." $where");	
	$maxid = $this->db->query('SELECT MAX('.$kolom.') AS maxid FROM '.$table.'')->row()->maxid;
	return $maxid;
 	}
	
	public function save($nmtabel,$data)
	{
		$this->db->insert($nmtabel, $data);
		return $this->db->insert_id();
	}

function update($table,$kolom,$id,$data)
	    {
	      $this->db->where($kolom,$id);
	       $ubah= $this->db->update($table,$data);
			return $ubah;
	    }
function delete_data($table,$kolom,$id)
	{
		$this->db->where($kolom,$id);
		$this->db->delete($table);
	}


		
	//========================count record ========================
public function count_record($table,$where) {
      $query = $this->db->query("SELECT * FROM $table $where ");
	  return $query->num_rows(); 
    }
	//========================Get Header ========================
public function getDataCustom($kolom,$table,$where) {
      $query = $this->db->query("SELECT " .$kolom. " FROM $table $where ");
	 return $query->result(); 
    }

  
 function update_user_online($table,$kolom,$id,$data)
	    {
	      $this->db->where($kolom,$id);
	       $ubah= $this->db->update($table,$data);
		   //$query = $this->db->query("update $table set last_active=date('Y-m-d H:i:s') where $kolom='$id'");
			return $ubah;
	    }
 function update_user_offline($table,$kolom,$id,$kolom2,$id2,$data)
	    {
	      $this->db->where($kolom,$id);
		  $this->db->where($kolom2,$id2);
	       $ubah= $this->db->update($table,$data);
		   //$query = $this->db->query("update $table set last_active=date('Y-m-d H:i:s') where $kolom='$id'");
			return $ubah;
	    }


}
