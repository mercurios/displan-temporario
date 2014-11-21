<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        if ($this->session->userdata('logged_in') && $this->session->userdata('logged_in')['logado'] === true) {
            $session_data = $this->session->userdata('logged_in');
        } else {
            redirect('auth', 'refresh');
        }
    }

    public function index()
    {
        $this->load->view('inc/header');
        $this->load->view('home/index');
        $this->load->view('inc/footer');
    }
}
