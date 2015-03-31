<?php

class Planos extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->load->model('Operadora_model', 'operadoras');
        $this->load->model('Categoria_model', 'categorias');
        $this->load->model('Tabelas_individual', 'tbind');
    }

    public function individuais()
    {

        $metaTags = [
            "title"         => "Displan Saúde - Planos individuais",
            "description"   => "Displan Seguros. Planos diferenciados para empresas, profissionais e individuais.",
            "keywords"      => "Displan, Seguros, Preços"
        ];

        $dados = array(
            'operadoras' => $this->operadoras->all(),
            'categorias' => $this->categorias->all(),
            'metaTags'   => $metaTags
        );

        $dados['breadcrumb'] = array(
            array('title' => 'Home', 'url' => '/', 'class' => ''),
            array('title' => 'Planos individuais', 'url' => 'planos-individuais/', 'class' => 'active')
        );

        $this->load->view('inc/header', $dados);
        $this->load->view('planos/individuais', $dados);
        $this->load->view('inc/footer');
    }

    public function empresariais()
    {

        $metaTags = [
            "title"         => "Displan Saúde - Planos empresariais",
            "description"   => "Displan Seguros. Planos diferenciados para empresas, profissionais e individuais.",
            "keywords"      => "Displan, Seguros, Preços"
        ];

        $dados = array(
            'operadoras' => $this->operadoras->all(),
            'categorias' => $this->categorias->all(),
            'metaTags'   => $metaTags
        );

        $dados['breadcrumb'] = array(
            array('title' => 'Home', 'url' => '/', 'class' => ''),
            array('title' => 'Planos empresariais', 'url' => 'planos-empresariais/', 'class' => 'active')
        );


        $this->load->view('inc/header', $dados);
        $this->load->view('planos/empresariais', $dados);
        $this->load->view('inc/footer');
    }

    public function especiais()
    {

        $metaTags = [
            "title"         => "Displan Saúde - Planos empresariais",
            "description"   => "Displan Seguros. Planos diferenciados para empresas, profissionais e individuais.",
            "keywords"      => "Displan, Seguros, Preços"
        ];

        $dados = array(
            'operadoras' => $this->operadoras->all(),
            'categorias' => $this->categorias->all(),
            'metaTags'   => $metaTags
        );

        $dados['breadcrumb'] = array(
            array('title' => 'Home', 'url' => '/', 'class' => ''),
            array('title' => 'Planos para Profissionais', 'url' => 'planos-especiais/', 'class' => 'active')
        );


        $this->load->view('inc/header', $dados);
        $this->load->view('planos/especiais', $dados);
        $this->load->view('inc/footer');
    }





}