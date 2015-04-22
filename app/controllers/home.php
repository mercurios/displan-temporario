<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends CI_Controller
{
    /**
     * ----------------------------------------
     * Carregamento dos models
     * ----------------------------------------
     */
    public function __construct()
    {
        parent::__construct();
        
        $this->load->model('Operadora_model', 'operadoras');
        $this->load->model('Categoria_model', 'categorias');
        $this->load->model('Tabelas_individual', 'tbind');
    }
    
    /**
     * ----------------------------------------
     * Exibe a página home do site
     * ----------------------------------------
     */
    public function index()
    {
        $metaTags = [
            'title'         => 'Displan Saúde - Home',
            'description'   => 'Displan Seguros. Planos diferenciados para empresas, profissionais e individuais.',
            'keywords'      => 'Displan, Seguros, Preços'
        ];
        
        $dados = [
            'operadoras' => $this->operadoras->all(),
            'categorias' => $this->categorias->all(),
            'metaTags'   => $metaTags
        ];
    }   
}
