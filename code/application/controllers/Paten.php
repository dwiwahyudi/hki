<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Paten extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_paten');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $q = urldecode($this->input->get('q', TRUE));
        $start = intval($this->input->get('start'));
        
        if ($q <> '') {
            $config['base_url'] = base_url() . 'paten/index.html?q=' . urlencode($q);
            $config['first_url'] = base_url() . 'paten/index.html?q=' . urlencode($q);
        } else {
            $config['base_url'] = base_url() . 'paten/index.html';
            $config['first_url'] = base_url() . 'paten/index.html';
        }

        $config['per_page'] = 10;
        $config['page_query_string'] = TRUE;
        $config['total_rows'] = $this->M_paten->total_rows($q);
        $paten = $this->M_paten->get_limit_data($config['per_page'], $start, $q);

        $this->load->library('pagination');
        $this->pagination->initialize($config);

        $data = array(
            'paten_data' => $paten,
            'q' => $q,
            'pagination' => $this->pagination->create_links(),
            'total_rows' => $config['total_rows'],
            'start' => $start,
        );
        $this->load->view('paten/ki_paten_list', $data);
    }

    public function read($id) 
    {
        $row = $this->M_paten->get_by_id($id);
        if ($row) {
            $data = array(
		'id' => $row->id,
		'no_pendaftaran' => $row->no_pendaftaran,
		'tanggal' => $row->tanggal,
		'nama' => $row->nama,
		'pekerjaan' => $row->pekerjaan,
		'email' => $row->email,
		'hp' => $row->hp,
		'wa' => $row->wa,
		'alamat_ktp' => $row->alamat_ktp,
		'alamat_tinggal' => $row->alamat_tinggal,
		'inventor' => $row->inventor,
		'file_abstrak' => $row->file_abstrak,
		'file_klaim' => $row->file_klaim,
		'file_gambar' => $row->file_gambar,
		'file_deskripsi' => $row->file_deskripsi,
		'file_pengalihan' => $row->file_pengalihan,
		'file_kepemilikan' => $row->file_kepemilikan,
		'status' => $row->status,
	    );
            $this->load->view('paten/ki_paten_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('paten'));
        }
    }

    public function create() 
    {
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
        $this->load->view('paten/ki_paten_form', $data);
    }
    
    public function create_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->create();
        } else {
            $data = array(
			'no_pendaftaran' => $this->input->post('no_pendaftaran',TRUE),
			'tanggal' => $this->input->post('tanggal',TRUE),
			'nama' => $this->input->post('nama',TRUE),
			'pekerjaan' => $this->input->post('pekerjaan',TRUE),
			'email' => $this->input->post('email',TRUE),
			'hp' => $this->input->post('hp',TRUE),
			'wa' => $this->input->post('wa',TRUE),
			'alamat_ktp' => $this->input->post('alamat_ktp',TRUE),
			'alamat_tinggal' => $this->input->post('alamat_tinggal',TRUE),
			'inventor' => $this->input->post('inventor',TRUE),
			'file_abstrak' => $this->input->post('file_abstrak',TRUE),
			'file_klaim' => $this->input->post('file_klaim',TRUE),
			'file_gambar' => $this->input->post('file_gambar',TRUE),
			'file_deskripsi' => $this->input->post('file_deskripsi',TRUE),
			'file_pengalihan' => $this->input->post('file_pengalihan',TRUE),
			'file_kepemilikan' => $this->input->post('file_kepemilikan',TRUE),
			'status' => $this->input->post('status',TRUE),
			);

            $this->M_paten->insert($data);
            $this->session->set_flashdata('message', 'Create Record Success');
            redirect(site_url('paten'));
        }
    }

	public function ext($filename){
		$dname = explode(".", $filename);
		return end($dname);
	}
	
	public function save(){
		$this->db->select('max(id) as id');
		$d = $this->db->get('ki_paten')->row();
		$no = date("Ym").'01'.($d->id+1);

		$config['upload_path']          = './files';
		$config['allowed_types']        = 'pdf|docx';
		$config['overwrite']			= true;
		$config['max_size']             = 2048; // 2MB
		// $config['encrypt_name']			= TRUE;
		$daftar_file = array();
		$error = [];
		if($this->input->post('file_abstrak') !== ''){
			$config['file_name']            = $no.'_abstrak.'.$this->ext($_FILES['file_abstrak']['name']);
			$this->load->library('upload', $config);
			$this->upload->initialize($config,TRUE);
			if (!$this->upload->do_upload('file_abstrak')) {
				$error[] = $this->upload->display_errors();
			}else{
				// $daftar_file[] = array('file_gambar'=>$this->upload->data('file_name'));
				$daftar_file['file_abstrak'] = $config['file_name'];
				// $daftar_file[] = array('file_gambar'=>$config['file_name']);
			}
		}

		if($this->input->post('file_klaim') !== ''){
			$config['file_name']            = $no.'_klaim.'.$this->ext($_FILES['file_klaim']['name']);
			$this->load->library('upload', $config);
			$this->upload->initialize($config,TRUE);
			if (!$this->upload->do_upload('file_klaim')) {
				$error[] = $this->upload->display_errors();
			}else{
				// $daftar_file[] = array('file_gambar'=>$this->upload->data('file_name'));
				$daftar_file['file_klaim'] = $config['file_name'];
				// $daftar_file[] = array('file_gambar'=>$config['file_name']);
			}
		}
		if($_FILES['file_gambar']['name'] !== ''){
			$config['file_name']            = $no.'_gambar.'.$this->ext($_FILES['file_gambar']['name']);
			$this->load->library('upload', $config);
			$this->upload->initialize($config,TRUE);
			if (!$this->upload->do_upload('file_gambar')) {
				$error[] = $this->upload->display_errors();
			}else{
				// $daftar_file[] = array('file_gambar'=>$this->upload->data('file_name'));
				$daftar_file['file_gambar'] = $config['file_name'];
				// $daftar_file[] = array('file_gambar'=>$config['file_name']);
			}
		}
		if($this->input->post('file_deskripsi') !== ''){
			$config['file_name']            = $no.'_deskripsi.'.$this->ext($_FILES['file_deskripsi']['name']);
			$this->load->library('upload', $config);
			$this->upload->initialize($config,TRUE);
			if (!$this->upload->do_upload('file_deskripsi')) {
				$error[] = $this->upload->display_errors();
			}else{
				// $daftar_file[] = array('file_gambar'=>$this->upload->data('file_name'));
				$daftar_file['file_deskripsi'] = $config['file_name'];
			}
		}
		if($this->input->post('file_pengalihan') !== ''){
			$config['file_name']            = $no.'_pengalihan.'.$this->ext($_FILES['file_pengalihan']['name']);
			$this->load->library('upload', $config);
			$this->upload->initialize($config,TRUE);
			if (!$this->upload->do_upload('file_pengalihan')) {
				$error[] = $this->upload->display_errors();
			}else{
				// $daftar_file[] = array('file_gambar'=>$this->upload->data('file_name'));
				$daftar_file['file_pengalihan'] = $config['file_name'];
			}
		}
		if($this->input->post('file_kepemilikan') !== ''){
			$config['file_name']            = $no.'_kepemilikan.'.$this->ext($_FILES['file_kepemilikan']['name']);
			$this->load->library('upload', $config);
			$this->upload->initialize($config,TRUE);
			if (!$this->upload->do_upload('file_kepemilikan')) {
				$error[] = $this->upload->display_errors();
			}else{
				// $daftar_file[] = array('file_gambar'=>$this->upload->data('file_name'));
				$daftar_file['file_kepemilikan'] = $config['file_name'];
			}
		}
		
		if(count($error) > 0){
			echo 'Error! Ada file yang tidak lengkap atau tidak sesuai<br> - File harus diisi<br>- File dalam bentuk PDF';
		}else{
			echo $this->M_paten->save($no,$daftar_file);
		}
	}
    
    public function update($id) 
    {
        $row = $this->M_paten->get_by_id($id);

        if ($row) {
            $data = array(
                'button' => 'Update',
                'action' => site_url('paten/update_action'),
				'id' => set_value('id', $row->id),
				'no_pendaftaran' => set_value('no_pendaftaran', $row->no_pendaftaran),
				'tanggal' => set_value('tanggal', $row->tanggal),
				'nama' => set_value('nama', $row->nama),
				'pekerjaan' => set_value('pekerjaan', $row->pekerjaan),
				'email' => set_value('email', $row->email),
				'hp' => set_value('hp', $row->hp),
				'wa' => set_value('wa', $row->wa),
				'alamat_ktp' => set_value('alamat_ktp', $row->alamat_ktp),
				'alamat_tinggal' => set_value('alamat_tinggal', $row->alamat_tinggal),
				'inventor' => set_value('inventor', $row->inventor),
				'file_abstrak' => set_value('file_abstrak', $row->file_abstrak),
				'file_klaim' => set_value('file_klaim', $row->file_klaim),
				'file_gambar' => set_value('file_gambar', $row->file_gambar),
				'file_deskripsi' => set_value('file_deskripsi', $row->file_deskripsi),
				'file_pengalihan' => set_value('file_pengalihan', $row->file_pengalihan),
				'file_kepemilikan' => set_value('file_kepemilikan', $row->file_kepemilikan),
				'status' => set_value('status', $row->status),
				);
            $this->load->view('paten/ki_paten_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('paten'));
        }
    }
    
    public function update_action() 
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('id', TRUE));
        } else {
            $data = array(
		'no_pendaftaran' => $this->input->post('no_pendaftaran',TRUE),
		'tanggal' => $this->input->post('tanggal',TRUE),
		'nama' => $this->input->post('nama',TRUE),
		'pekerjaan' => $this->input->post('pekerjaan',TRUE),
		'email' => $this->input->post('email',TRUE),
		'hp' => $this->input->post('hp',TRUE),
		'wa' => $this->input->post('wa',TRUE),
		'alamat_ktp' => $this->input->post('alamat_ktp',TRUE),
		'alamat_tinggal' => $this->input->post('alamat_tinggal',TRUE),
		'inventor' => $this->input->post('inventor',TRUE),
		'file_abstrak' => $this->input->post('file_abstrak',TRUE),
		'file_klaim' => $this->input->post('file_klaim',TRUE),
		'file_gambar' => $this->input->post('file_gambar',TRUE),
		'file_deskripsi' => $this->input->post('file_deskripsi',TRUE),
		'file_pengalihan' => $this->input->post('file_pengalihan',TRUE),
		'file_kepemilikan' => $this->input->post('file_kepemilikan',TRUE),
		'status' => $this->input->post('status',TRUE),
	    );

            $this->M_paten->update($this->input->post('id', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('paten'));
        }
    }
    
    public function delete($id) 
    {
        $row = $this->M_paten->get_by_id($id);

        if ($row) {
            $this->M_paten->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('paten'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('paten'));
        }
    }

    public function _rules() 
    {
	$this->form_validation->set_rules('no_pendaftaran', 'no pendaftaran', 'trim|required');
	$this->form_validation->set_rules('tanggal', 'tanggal', 'trim|required');
	$this->form_validation->set_rules('nama', 'nama', 'trim|required');
	$this->form_validation->set_rules('pekerjaan', 'pekerjaan', 'trim|required');
	$this->form_validation->set_rules('email', 'email', 'trim|required');
	$this->form_validation->set_rules('hp', 'hp', 'trim|required');
	$this->form_validation->set_rules('wa', 'wa', 'trim|required');
	$this->form_validation->set_rules('alamat_ktp', 'alamat ktp', 'trim|required');
	$this->form_validation->set_rules('alamat_tinggal', 'alamat tinggal', 'trim|required');
	$this->form_validation->set_rules('inventor', 'inventor', 'trim|required');
	$this->form_validation->set_rules('file_abstrak', 'file abstrak', 'trim|required');
	$this->form_validation->set_rules('file_klaim', 'file klaim', 'trim|required');
	$this->form_validation->set_rules('file_gambar', 'file gambar', 'trim|required');
	$this->form_validation->set_rules('file_deskripsi', 'file deskripsi', 'trim|required');
	$this->form_validation->set_rules('file_pengalihan', 'file pengalihan', 'trim|required');
	$this->form_validation->set_rules('file_kepemilikan', 'file kepemilikan', 'trim|required');
	$this->form_validation->set_rules('status', 'status', 'trim|required');

	$this->form_validation->set_rules('id', 'id', 'trim');
	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

}

/* End of file Paten.php */
/* Location: ./application/controllers/Paten.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2021-04-13 05:36:04 */
/* http://harviacode.com */