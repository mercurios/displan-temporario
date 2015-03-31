<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tabelas extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $this->load->model('Operadora_model', 'operadoras');
        $this->load->model('Tabelas_individual', 'tab_individual');
        $this->load->model('Tabelas_empresarial', 'tab_empresarial');
        $this->load->model('Tabelas_especial', 'tab_especial');
        $this->load->model('Categoria_model', 'categorias');
    }

    public function individuais($operadora)
    {
        $planos = $this->operadoras->find($operadora);

        $dados = array(
            'operadora'  => $this->operadoras->find($operadora),
            'operadoras' => $this->operadoras->all(),
            'tabelas'    => $this->tab_individual->find($planos[0]->id),
            'categorias' => $this->categorias->all()
        );

        $dados['breadcrumb'] = array(
            array('title' => 'Home', 'url' => '/', 'class' => ''),
            array('title' => 'Planos individuais', 'url' => 'planos-individuais/', 'class' => ''),
            array('title' => $dados['operadora'][0]->name, 'url' => 'planos-individuais/'.$operadora, 'class' => 'active'),
        );

        $dados['metaTags'] = array(
            "title"         => "Displan Saúde - Planos Individuais - " . $planos[0]->name,
            "description"   => "Displan Seguros. Planos diferenciados para empresas, profissionais e individuais.",
            "keywords"      => "Displan, Seguros, Preços"
        );

        $this->load->view('inc/header', $dados);
        $this->load->view('tabelas/index', $dados);
        $this->load->view('inc/footer');
    }

    public function empresariais($operadora)
    {
        $planos = $this->operadoras->find($operadora);

        $dados = array(
            'operadora'  => $this->operadoras->find($operadora),
            'operadoras' => $this->operadoras->all(),
            'tabelas'    => $this->tab_empresarial->find($planos[0]->id),
            'categorias' => $this->categorias->all()
        );

        $dados['breadcrumb'] = array(
            array('title' => 'Home', 'url' => '/', 'class' => ''),
            array('title' => 'Planos empresariais', 'url' => 'planos-empresariais/', 'class' => ''),
            array('title' => $dados['operadora'][0]->name, 'url' => 'planos-empresariais/'.$operadora, 'class' => 'active'),
        );

        $dados['metaTags'] = array(
            "title"         => "Displan Saúde - Planos de saúde para empresas - " . $planos[0]->name,
            "description"   => "Displan Seguros. Planos diferenciados para empresas, profissionais e individuais.",
            "keywords"      => "Displan, Seguros, Preços"
        );

        $this->load->view('inc/header', $dados);
        $this->load->view('tabelas/empresarial', $dados);
        $this->load->view('inc/footer');
    }

    public function especiais($slug)
    {
        $resultado = $this->tab_especial->all();

        $dados = array(
            'operadoras' => $this->operadoras->all(),
            'categorias' => $this->categorias->all(),
            'categoria'  => $this->categorias->find($slug)
        );

        foreach ($resultado as $r) {
            $categorias = unserialize($r->categorias);

            if (in_array($slug, $categorias)) {
                $dados['tabelas'][] = $r;
            }
        }

        $dados['breadcrumb'] = array(
            array('title' => 'Home', 'url' => '/', 'class' => ''),
            array('title' => 'Planos para profissionais', 'url' => 'planos-especiais/', 'class' => ''),
            array('title' => $dados['categoria'][0]->name, 'url' => 'planos-especiais/'.$slug, 'class' => 'active'),
        );

        $dados['metaTags'] = array(
            "title"         => "Displan Saúde - Planos para Profissionais  - " . $dados['categoria'][0]->name,
            "description"   => "Displan Seguros. Planos diferenciados para empresas, profissionais e individuais.",
            "keywords"      => "Displan, Seguros, Preços"
        );

        $this->load->view('inc/header', $dados);
        $this->load->view('tabelas/especial', $dados);
        $this->load->view('inc/footer');
    }
}
