<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Pendaftaran extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_paten','paten');
        $this->load->library('form_validation');
    }

    public function paten(){
        $data = array(
            'button' => 'Create',
            'action' => site_url('paten/create_action'),
			'id' => set_value('id'),
			'no_pendaftaran' => set_value('no_pendaftaran'),
			'tanggal' => set_value('tanggal'),
			'nama' => set_value('nama'),
			'pekerjaan' => set_value('pekerjaan'),
			'email' => set_value('email'),
			'hp' => set_value('hp'),
			'wa' => set_value('wa'),
			'alamat_ktp' => set_value('alamat_ktp'),
			'alamat_tinggal' => set_value('alamat_tinggal'),
			'inventor' => set_value('inventor'),
			'file_abstrak' => set_value('file_abstrak'),
			'file_klaim' => set_value('file_klaim'),
			'file_gambar' => set_value('file_gambar'),
			'file_deskripsi' => set_value('file_deskripsi'),
			'file_pengalihan' => set_value('file_pengalihan'),
			'file_kepemilikan' => set_value('file_kepemilikan'),
			'status' => set_value('status'),
	    );
		$header['css'] = 'vendor/select2/select2.custom.min.css';
		$footer['js'] = array('js/paten.js','vendor/ckeditor4/ckeditor.js','vendor/select2/select2.min.js');
        $this->load->view('template/header',$header);
        $this->load->view('paten/ki_paten_form',$data);
        $this->load->view('template/footer',$footer);
    }

	public function hakcipta(){
		$footer['js'] = array('js/hakcipta.js','vendor/ckeditor4/ckeditor.js','vendor/select2/select2.min.js');
		$header['css'] = 'vendor/select2/select2.custom.min.css';
        $this->load->view('template/header',$header);
        $this->load->view('hakcipta/ki_hakcipta_form');
        $this->load->view('template/footer',$footer);
	}

	public function getNIP($id){
		$url = 'https://simpeg.uns.ac.id/api/v2/keu-pegawai/'.$id.'?token='.md5(date('Y-m-d') . 'simpeg');
        $json = file_get_contents($url);
        // $json = json_decode($json,true);
		echo $json;
	}

	public function test()
	{
		$this->load->view('paten/test');
	}
}