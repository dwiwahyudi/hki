<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Unduh extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_paten','paten');
        $this->load->library('form_validation');
        $this->load->helper('uri');
        $this->load->model('m_unduh','unduh');
    }

    public function index2(){
        if (isset($_GET['filename'])) {
            $filename    = decrypt($_GET['filename']);
        
            $back_dir    ="download/";
            $file = $back_dir.$_GET['filename'];
             
            if (file_exists($file)) {
                    header('Content-Description: File Transfer');
                    header('Content-Type: application/octet-stream');
                    header('Content-Disposition: attachment; filename='.basename($file));
                    header('Content-Transfer-Encoding: binary');
                    header('Expires: 0');
                    header('Cache-Control: private');
                    header('Pragma: private');
                    header('Content-Length: ' . filesize($file));
                    ob_clean();
                    flush();
                    readfile($file);
                    
                    exit;
            } 
            else {
                $_SESSION['pesan'] = "Oops! File - $filename - not found ...";
                header("location:index.php");
            }
        }else{
            $this->load->view('template/header');
            $this->load->view('unduh/list');
            $this->load->view('template/footer');
        }
    }

    public function files(){

    }

    public function paten(){
        $where = array('id_jnsunduh'=>'2');
        $data['files'] = $this->unduh->get_data($where);
        // print_r($data->result());
        $this->load->view('template/header');
            $this->load->view('unduh/list',$data);
            $this->load->view('template/footer');
    }
}
