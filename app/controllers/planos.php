<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Planos extends CI_Controller
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
    }
    
    /**
     * ----------------------------------------
     * Exibe todos os planos individuais
     * cadastrados no banco de dados
     * ----------------------------------------
     */
    public function individuais()
    {   
        $metaTags = [
            'title'         => 'Displan Saúde - Planos individuais',
            'description'   => 'Displan Seguros. Planos diferenciados para empresas, profissionais e individuais.',
            'keywords'      => 'Displan, Seguros, Preços'
        ];
        
        $dados = [
            'operadoras' => $this->operadoras->getByCategory('individuais'),
            'categorias' => $this->categorias->all(),
            'metaTags'   => $metaTags,
            'breadcrumb' => [
                ['title' => 'Home', 'url' => '/', 'class' => ''],
                ['title' => 'Planos individuais', 'url' => 'planos-individuais/', 'class' => 'active']
            
            ]
        ];
        
        $this->load->view('inc/header', $dados);
        $this->load->view('planos/individuais', $dados);
        $this->load->view('inc/footer');
    }
    
    /**
     * ----------------------------------------
     * Exibe todos os planos empresariais
     * cadastrados no banco de dados
     * ----------------------------------------
     */
    public function empresariais()
    {        
        $metaTags = [
            'title'         => 'Displan Saúde - Planos empresariais',
            'description'   => 'Displan Seguros. Planos diferenciados para empresas, profissionais e individuais.',
            'keywords'      => 'Displan, Seguros, Preços'
        ];
        
        $dados = [
            'operadoras' => $this->operadoras->getByCategory('empresariais'),
            'categorias' => $this->categorias->all(),
            'metaTags'   => $metaTags,
            'breadcrumb' => [
                ['title' => 'Home', 'url' => '/', 'class' => ''],
                ['title' => 'Planos empresariais', 'url' => 'planos-empresariais/', 'class' => 'active']
            
            ]
        ];

        $this->load->view('inc/header', $dados);
        $this->load->view('planos/empresariais', $dados);
        $this->load->view('inc/footer');  
    }
    
    /**
     * ----------------------------------------
     * Exibe todos os planos especiais
     * cadastrados no banco de dados
     * ----------------------------------------
     */
    public function especiais()
    {
        $metaTags = [
            'title'         => 'Displan Saúde - Planos empresariais',
            'description'   => 'Displan Seguros. Planos diferenciados para empresas, profissionais e individuais.',
            'keywords'      => 'Displan, Seguros, Preços'
        ];

        $dados = array(
            'operadoras' => $this->operadoras->getByCategory('especiais'),
            'categorias' => $this->categorias->all(),
            'metaTags'   => $metaTags,
            'breadcrumb' => [
                ['title' => 'Home', 'url' => '/', 'class' => ''],
                ['title' => 'Planos para Profissionais', 'url' => 'planos-especiais/', 'class' => 'active']
            ]
        );

        $this->load->view('inc/header', $dados);
        $this->load->view('planos/especiais', $dados);
        $this->load->view('inc/footer');
    }
}