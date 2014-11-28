<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tabelas extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();

        if ($this->session->userdata('logged_in') && $this->session->userdata('logged_in')['logado'] === true) {
            $session_data = $this->session->userdata('logged_in');
        } else {
            redirect('auth', 'refresh');
        }

        $this->load->model('Operadora_model', 'operadoras');
        $this->load->model('Plano_model', 'planos');
        $this->load->model('Tabela_model', 'tabelas');
    }

    public function index()
    {
        $this->individuais();
    }

    public function individuais()
    {
        $dados = array(
            'tabelas' => $this->tabelas->all()
        );

        $this->load->view('inc/header');
        $this->load->view('tabelas/tab_individuais', $dados);
        $this->load->view('inc/footer');
    }

    public function newindividual()
    {
        $dados = array(
            'operadoras' => $this->operadoras->all()
        );

        $this->load->view('inc/header');
        $this->load->view('tabelas/add_individual', $dados);
        $this->load->view('inc/footer');
    }

    public function editindividual($id)
    {
        $tabelas    = $this->tabelas->all();
        $operadoras = $this->operadoras->all();
        $planos     = $this->planos->find_operadora($tabelas[0]->operadora_id);

        $dados = array(
            'tabelas'       => $tabelas,
            'operadoras'    => $operadoras,
            'planos'        => $planos
        );

        $this->load->view('inc/header');
        $this->load->view('tabelas/edt_individual', $dados);
        $this->load->view('inc/footer');
    }

    public function empresariais()
    {
        $this->load->view('inc/header');
        $this->load->view('tabelas/tab_empresariais');
        $this->load->view('inc/footer');
    }

    public function especiais()
    {
        $this->load->view('inc/header');
        $this->load->view('tabelas/tab_especiais');
        $this->load->view('inc/footer');
    }

    // CRUD
    public function saveindividual()
    {
        $operadora  = $this->input->post('operadora');
        $plano      = $this->input->post('plano');
        $acomodacao = $this->input->post('acomodacao');
        $titulos    = $this->input->post('titulos');
        $idade0018  = $this->input->post('idade0018');
        $idade1923  = $this->input->post('idade1923');
        $idade2428  = $this->input->post('idade2428');
        $idade2933  = $this->input->post('idade2933');
        $idade3438  = $this->input->post('idade3438');
        $idade3943  = $this->input->post('idade3943');
        $idade4448  = $this->input->post('idade4448');
        $idade4953  = $this->input->post('idade4953');
        $idade5458  = $this->input->post('idade5458');
        $idade59    = $this->input->post('idade59');

        $dados = array(
            'operadora_id'  => $operadora,
            'plano_id'      => $plano,
            'acomodacao'    => $acomodacao,
            'titulos'       => serialize($titulos),
            'idade0018'     => serialize($idade0018),
            'idade1923'     => serialize($idade1923),
            'idade2428'     => serialize($idade2428),
            'idade2933'     => serialize($idade2933),
            'idade3438'     => serialize($idade3438),
            'idade3943'     => serialize($idade3943),
            'idade4448'     => serialize($idade4448),
            'idade4953'     => serialize($idade4953),
            'idade5458'     => serialize($idade5458),
            'idade59'       => serialize($idade59)
        );

        if ($this->tabelas->save($dados)) {
            $this->load->library('Logs');
            $this->logs->save($this->session->userdata('logged_in')['name'], 'Adicionou uma nova tabela');

            $this->session->set_flashdata('msgSuccess', 'Tabela adicionada com sucesso!');
            redirect('tabelas/individuais');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível adicionar a tabela, tente novamente!');
            redirect('tabelas/individuais');
        }
    }

    public function updateindividual($id)
    {
        $operadora  = $this->input->post('operadora');
        $plano      = $this->input->post('plano');
        $acomodacao = $this->input->post('acomodacao');
        $titulos    = $this->input->post('titulos');
        $idade0018  = $this->input->post('idade0018');
        $idade1923  = $this->input->post('idade1923');
        $idade2428  = $this->input->post('idade2428');
        $idade2933  = $this->input->post('idade2933');
        $idade3438  = $this->input->post('idade3438');
        $idade3943  = $this->input->post('idade3943');
        $idade4448  = $this->input->post('idade4448');
        $idade4953  = $this->input->post('idade4953');
        $idade5458  = $this->input->post('idade5458');
        $idade59    = $this->input->post('idade59');

        $dados = array(
            'operadora_id'  => $operadora,
            'plano_id'      => $plano,
            'acomodacao'    => $acomodacao,
            'titulos'       => serialize($titulos),
            'idade0018'     => serialize($idade0018),
            'idade1923'     => serialize($idade1923),
            'idade2428'     => serialize($idade2428),
            'idade2933'     => serialize($idade2933),
            'idade3438'     => serialize($idade3438),
            'idade3943'     => serialize($idade3943),
            'idade4448'     => serialize($idade4448),
            'idade4953'     => serialize($idade4953),
            'idade5458'     => serialize($idade5458),
            'idade59'       => serialize($idade59)
        );

        if ($this->tabelas->update($dados, $id)) {
            $this->load->library('Logs');
            $this->logs->save($this->session->userdata('logged_in')['name'], 'Atualizou uma nova tabela');

            $this->session->set_flashdata('msgSuccess', 'Tabela atualizada com sucesso!');
            redirect('tabelas/individuais');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível atualizar a tabela, tente novamente!');
            redirect('tabelas/individuais');
        }
    }
}
