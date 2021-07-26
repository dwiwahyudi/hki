<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_home extends CI_Model
{
    public $fakultas = 'ref_fakultas';

    public function fakultas(){
        return $this->db->get($this->fakultas);
    }

    public function get_data($number = false,$offset = false,$where = false){
        // $sql = "select nomor as nomor, judul_id as judul, no_pendaftaran, tgl_penerimaan, status_pendaftaran, abstrak_id as abstrak, 'patent' as hki from ki_paten where no_pendaftaran is not null or no_pendaftaran <> ''";
        // $this->db->select("nomor as nomor, judul_id as judul, no_pendaftaran, tgl_penerimaan, status_pendaftaran, abstrak_id as abstrak, 'patent' as hki");
        if($number == true){
            $this->db->limit($number,$offset);
        }
        if($where == true){
            $this->db->where($where,null,false);
        }
        return $this->db->get('v_ki');
    }
}
