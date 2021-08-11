<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_home', 'home');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $this->ki();
    }

    public function ki()
    {
        $where = false;
        if (isset($_GET['t']) && $_GET['q'] <> '') {
            $where = "hki = '" . $_GET['t'] . "' ";
        }
        if (isset($_GET['q']) && $_GET['q'] <> '') {
            $where .= "AND (";
            $where .= "no_pendaftaran='" . $_GET['q'] . "' OR nomor='" . $_GET['q'] . "' OR judul LIKE '%" . $_GET['q'] . "%'";
            $where .= ")";
        }
        $total_row = $this->home->get_data(false, false, $where)->num_rows();
        $this->load->library('pagination');
        $config['base_url'] = base_url() . 'index.php/home/ki/';
        $config['total_rows'] = $total_row;
        $config['per_page'] = 5;
        $config['uri_segment'] = 3;
        $config['reuse_query_string'] = TRUE;
        // Membuat Style pagination untuk BootStrap v4
        $config['first_link']       = 'First';
        $config['last_link']        = 'Last';
        $config['next_link']        = 'Next';
        $config['prev_link']        = 'Prev';
        $config['full_tag_open']    = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close']   = '</ul></nav></div>';
        $config['num_tag_open']     = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close']    = '</span></li>';
        $config['cur_tag_open']     = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close']    = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close']  = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close']  = '</span>Next</li>';
        $config['first_tag_open']   = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open']    = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close']  = '</span></li>';
        $this->pagination->initialize($config);
        $data['page'] = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
        $data['fakultas'] = $this->home->fakultas();

        $data['data'] = $this->home->get_data($config['per_page'], $data['page'], $where);
        $data['pagination'] = $this->pagination->create_links();
        $this->load->view('template/header');
        $this->load->view('page/home', $data);
        $this->load->view('template/footer');
    }

    public function g_peg()
    {
        $url = 'https://simpeg.uns.ac.id/api/v2/keu-pegawai?id_jenis_staf=1&token=' . md5(date('Y-m-d') . 'simpeg') . '&per-page=0';
        $json = file_get_contents($url);
        $json = json_decode($json, true);
        function Json_Super_Unique($array, $key)
        {
            $temp_array = array();
            foreach ($array as &$v) {
                if (!isset($temp_array[$v[$key]]))
                    $temp_array[$v[$key]] = &$v;
            }
            $array = array_values($temp_array);
            return $array;
        }

        $depositeArrayNew = Json_Super_Unique($json['data'], 'ID');
        function querySort($x, $y)
        {
            return strcasecmp($x['NAMA_TANPA_GELAR'], $y['NAMA_TANPA_GELAR']);
        }

        usort($depositeArrayNew, 'querySort');
        echo json_encode($depositeArrayNew);
    }
}
