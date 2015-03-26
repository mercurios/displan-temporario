<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->model('Operadora_model', 'operadoras');
        $this->load->model('Categoria_model', 'categorias');
        $this->load->model('Tabelas_individual', 'tbind');
    }

    public function index()
    {
        $metaTags = [
            "title"         => "Displan Saúde - Home",
            "description"   => "Displan Seguros. Planos diferenciados para empresas, profissionais e individuais.",
            "keywords"      => "Displan, Seguros, Preços"
        ];

        $dados = array(
            'operadoras' => $this->operadoras->all(),
            'categorias' => $this->categorias->all(),
            'metaTags'   => $metaTags
        );

        $this->load->view('inc/header', $dados);
        $this->load->view('home/index', $dados);
        $this->load->view('inc/footer');
    }
}
