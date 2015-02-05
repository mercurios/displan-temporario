<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        checkAuth();
    }

    public function index()
    {
        $this->load->library('Logs');
        $dados = array('logs' => $this->logs->all());

        $this->load->view('inc/header');
        $this->load->view('home/index', $dados);
        $this->load->view('inc/footer');
    }
}
