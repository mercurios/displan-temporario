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

        checkAuth();

        $this->load->model('Operadora_model', 'operadoras');
        $this->load->model('Plano_model', 'planos');
    }

    /**
     * Lista os planos cadastrados
     */
    public function index()
    {
        $dados = array('resultado' => $this->planos->all());

        $this->load->view('inc/header');
        $this->load->view('planos/index', $dados);
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
        $dados = array(
            'name'          => $this->input->post('name'),
            'operadora_id'  => $this->input->post('operadora'),
            'credenciados'  => $this->input->post('credenciados'),
            'info'          => $this->input->post('info')
        );

        if ($this->planos->save($dados)) {
            $this->load->library('Logs');
            $this->logs->save($userData['name'], 'Cadastrou o plano (' . $this->input->post('name') .')');

            $this->session->set_flashdata('msgSuccess', 'Plano cadastrado com sucesso!');
            redirect('planos');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível cadastrar o plano, tente novamente!');
            redirect('planos');
        }
    }

    public function edit($id)
    {
        if (empty($id)) {
            redirect('planos');
        }

        $dados = array(
            'resultado' => $this->planos->find($id),
            'operadoras' => $this->operadoras->all()
        );

        $this->load->view('inc/header');
        $this->load->view('planos/edit', $dados);
        $this->load->view('inc/footer');
    }

    public function update($id)
    {
        if (empty($id)) {
            redirect('planos');
        }

        $dados = array(
            'name'          => $this->input->post('name'),
            'operadora_id'  => $this->input->post('operadora'),
            'credenciados'  => $this->input->post('credenciados'),
            'info'          => $this->input->post('info')
        );

        if ($this->planos->update($dados, $id)) {
            $this->load->library('Logs');
            $this->logs->save($userData['name'], 'Atualizou o plano (' . $this->input->post('name') .')');

            $this->session->set_flashdata('msgSuccess', 'Plano atualizado com sucesso!');
            redirect('planos');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível atualizar o plano, tente novamente!');
            redirect('planos');
        }
    }

    /**
     * Deleta do banco
     */
    public function delete($id)
    {
        if (empty($id)) {
            redirect('planos');
        }

        $dados = $this->planos->find($id);

        if ($this->planos->delete($id)) {

            $this->load->library('Logs');
            $this->logs->save($userData['name'], 'Deletou uma plano. (' .$dados[0]->name. ')');

            $this->session->set_flashdata('msgSuccess', 'Plano deletado com sucesso!');
            redirect('planos');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível deletar o plano, tente novamente!');
            redirect('planos');
        }
    }

    public function findplanos($id = null)
    {
        if (empty($id)) {
            echo json_encode(array());
        } else {
            echo json_encode($this->planos->find_operadora($id));
        }
    }
}
