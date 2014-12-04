<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tabelas extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->model('Operadora_model', 'operadoras');
        $this->load->model('Tabelas_individual', 'tab_individual');
    }

    public function individuais($operadora)
    {
        $planos = $this->operadoras->find($operadora);

        $dados = array(
            'operadora'  => $this->operadoras->find($operadora),
            'operadoras' => $this->operadoras->all(),
            'tabelas'    => $this->tab_individual->find($planos[0]->id)
        );

        $this->load->view('inc/header', $dados);
        $this->load->view('tabelas/index', $dados);
        $this->load->view('inc/footer');
    }
}
