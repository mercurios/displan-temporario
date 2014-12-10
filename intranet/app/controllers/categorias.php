<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Categorias extends CI_Controller {

    public function __construct()
    {
        parent::__construct();

        $userData = $this->session->userdata('logged_in');

        if ($userData && $userData['logado'] === true) {
            $session_data = $this->session->userdata('logged_in');
        } else {
            redirect('auth', 'refresh');
        }

        $this->load->model('Categoria_model', 'categorias');
    }

    public function index()
    {
        $dados = ['resultado' => $this->categorias->all()];

        $this->load->view('inc/header');
        $this->load->view('categorias/index', $dados);
        $this->load->view('inc/footer');
    }

    public function add()
    {
        $this->load->view('inc/header');
        $this->load->view('categorias/add');
        $this->load->view('inc/footer');
    }

    public function save()
    {
        $dados = array(
            'name' => $this->input->post('name'),
            'slug' => generate_uri($this->input->post('name'))
        );

        if ($this->categorias->save($dados)) {
            $this->load->library('Logs');
            $this->logs->save($userData['name'], 'Cadastrou a categoria (' . $this->input->post('name') . ')');

            $this->session->set_flashdata('msgSuccess', 'Categoria cadastrada com sucesso!');
            redirect('categorias');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível cadastrar a categoria, tente novamente!');
            redirect('categorias');
        }
    }

    public function edit($id)
    {
        if ( empty($id) ) {
            redirect('categorias');
        }

        $dados = ['resultado' => $this->categorias->find($id)];

        $this->load->view('inc/header');
        $this->load->view('categorias/edit', $dados);
        $this->load->view('inc/footer');
    }

    public function update($id)
    {
        if ( empty($id) ) {
            redirect('categorias');
        }

        $dados = array(
            'name' => $this->input->post('name'),
            'slug' => generate_uri($this->input->post('name'))
        );

        if ($this->categorias->update($dados, $id)) {
            $this->load->library('Logs');
            $this->logs->save($userData['name'], 'Atualizou a categoria (' . $this->input->post('name') . ')');

            $this->session->set_flashdata('msgSuccess', 'Categoria atualizada com sucesso!');
            redirect('categorias');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível atualizar a categoria, tente novamente!');
            redirect('categorias');
        }
    }

    public function delete($id)
    {
        if ( empty($id) ) {
            redirect('categorias');
        }

        $resultado = $this->categorias->find($id);

        if ($this->categorias->delete($id)) {
            $this->load->library('Logs');
            $this->logs->save($userData['name'], 'Deletou a categoria (' . $resultado[0]->name . ')');

            $this->session->set_flashdata('msgSuccess', 'Categoria deletada com sucesso!');
            redirect('categorias');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível deletar a categoria, tente novamente!');
            redirect('categorias');
        }
    }
}
