<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_unduh extends CI_Model
{
    public function get_data($where = false){
        if($where == true){
            $this->db->where($where);
        }
        return $this->db->get('d_unduh');
    }
}
