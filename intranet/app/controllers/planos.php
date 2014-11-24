<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Planos extends CI_Controller
{
    /**
     * Verifica se fez o login
     * Carrega os models
     */
    public function __construct()
    {
        parent::__construct();

        if ($this->session->userdata('logged_in') && $this->session->userdata('logged_in')['logado'] === true) {
            $session_data = $this->session->userdata('logged_in');
        } else {
            redirect('auth', 'refresh');
        }

        $this->load->model('Operadora_model', 'operadoras');
    }

    /**
     * Lista os planos cadastrados
     */
    public function index()
    {
        $this->load->view('inc/header');
        $this->load->view('planos/index');
        $this->load->view('inc/footer');
    }

    /**
     * Formulário de cadastro
     */
    public function add()
    {
        $dados = array(
            'operadoras' => $this->operadoras->all()
        );

        $this->load->view('inc/header');
        $this->load->view('planos/add', $dados);
        $this->load->view('inc/footer');
    }

    public function save()
    {

    }
}
