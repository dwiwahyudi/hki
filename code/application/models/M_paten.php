<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class M_paten extends CI_Model
{

    public $table = 'ki_paten';
    public $id = 'id';
    public $order = 'DESC';

    function __construct()
    {
        parent::__construct();
    }

    // get all
    function get_all()
    {
        $this->db->order_by($this->id, $this->order);
        return $this->db->get($this->table)->result();
    }

    // get data by id
    function get_by_id($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->table)->row();
    }
    
    // get total rows
    function total_rows($q = NULL) {
        $this->db->like('id', $q);
        $this->db->or_like('nomor', $q);
        $this->db->or_like('tanggal', $q);
        $this->db->or_like('nama', $q);
        $this->db->or_like('pekerjaan', $q);
        $this->db->or_like('email', $q);
        $this->db->or_like('hp', $q);
        $this->db->or_like('wa', $q);
        $this->db->or_like('alamat_ktp', $q);
        $this->db->or_like('alamat_tinggal', $q);
        $this->db->or_like('inventor', $q);
        $this->db->or_like('file_abstrak', $q);
        $this->db->or_like('file_klaim', $q);
        $this->db->or_like('file_gambar', $q);
        $this->db->or_like('file_deskripsi', $q);
        $this->db->or_like('file_pengalihan', $q);
        $this->db->or_like('file_kepemilikan', $q);
        $this->db->or_like('status', $q);
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }

    // get data with limit and search
    function get_limit_data($limit, $start = 0, $q = NULL) {
        $this->db->order_by($this->id, $this->order);
        $this->db->like('id', $q);
        $this->db->or_like('no_pendaftaran', $q);
        $this->db->or_like('tanggal', $q);
        $this->db->or_like('nama', $q);
        $this->db->or_like('pekerjaan', $q);
        $this->db->or_like('email', $q);
        $this->db->or_like('hp', $q);
        $this->db->or_like('wa', $q);
        $this->db->or_like('alamat_ktp', $q);
        $this->db->or_like('alamat_tinggal', $q);
        $this->db->or_like('inventor', $q);
        $this->db->or_like('file_abstrak', $q);
        $this->db->or_like('file_klaim', $q);
        $this->db->or_like('file_gambar', $q);
        $this->db->or_like('file_deskripsi', $q);
        $this->db->or_like('file_pengalihan', $q);
        $this->db->or_like('file_kepemilikan', $q);
        $this->db->or_like('status', $q);
        $this->db->limit($limit, $start);
        return $this->db->get($this->table)->result();
    }

    // insert data
    function insert($data)
    {
       
        $this->db->insert($this->table, $data);

    }

    function save($no,$berkas)
    {
        $data = array(
			// 'tipe'=>'internal',
			'jns_paten'=> $this->input->post('jns_paten'),
			'nomor' => $no,
			'tanggal' => date("Y-m-d"),
			'id_pegawai' => $this->input->post('id_pegawai'),
			'nama' => $this->input->post('nama'),
			'nama_tanpa_gelar' => $this->input->post('nama_tanpa_gelar'),
			'nip' => $this->input->post('nip'),
			'id_fakultas' => $this->input->post('id_fakultas'),
			'fakultas' => $this->input->post('fakultas'),
			'pekerjaan' => $this->input->post('pekerjaan'),
			'email' => $this->input->post('email'),
			'hp' => $this->input->post('hp'),
			'wa' => $this->input->post('wa'),
			'alamat_ktp' => $this->input->post('alamat_ktp'),
			'alamat' => $this->input->post('alamat'),
			'status' => '0'
		);
        $invensi = array(
            'nomor' => $no,
            'inventor' => $this->input->post('inventor'),
			'judul_id' => $this->input->post('judul_id'),
			'judul_en' => $this->input->post('judul_en'),
			'klaim' => $this->input->post('klaim'),
			'abstrak_id' => $this->input->post('abstrak_id'),
			'abstrak_en' => $this->input->post('abstrak_en'),
            'konten' => $this->input->post('konten'),
			'status' => '0'
        );

        $inventor = json_decode($this->input->post('inventor'),true);
        $n = 1;
        foreach($inventor as $inv){
            if($n = 1){ $utama = '1'; $ktp = $berkas['file_ktp'];}else{ $utama = '2'; $ktp = '';}
            $insert_inventor[] = array(
                'nomor' => $no,
                'urutan' => $n,
                'id_pegawai' => $inv['id_pegawai'],
                'nama' => $inv['nama'],
                'nama_tanpa_gelar' => $inv['nama_tanpa_gelar'],
                'nip' => $inv['nip'],
                'id_fakultas' => $inv['id_fakultas'],
                'fakultas' => $inv['fakultas'],
                'alamat' => $inv['alamat'],
                'email' => $inv['email'],
                'telepon' => $inv['telepon'],
                'utama' => $utama,
                'scan_ktp' => $ktp
            );
            $n++;
        }
        if($this->db->insert('d_paten', $data) && 
            $this->db->insert('d_paten_invensi') &&
            $this->db->insert_batch('d_paten_inventor',$insert_inventor)
        ){
            return 'done';
        }else{
            return $this->db->error();
        }
    }


    // update data
    function update($id, $data)
    {
        $this->db->where($this->id, $id);
        $this->db->update($this->table, $data);
    }

    // delete data
    function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->table);
    }

}

/* End of file M_paten.php */
/* Location: ./application/models/M_paten.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-04-13 05:36:04 */
/* http://harviacode.com */