<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller {

    private $userData;

    public function __construct()
    {
        parent::__construct();

        checkAuth();

        $userdata = $this->session->all_userdata();
        $this->userData = $userdata['logged_in'];

        $this->load->model('User_model', 'users');
    }

    public function index()
    {
        $dados = array('resultado' => $this->users->all());

        $this->load->view('inc/header');
        $this->load->view('users/index', $dados);
        $this->load->view('inc/footer');
    }

    public function add()
    {
        $this->load->view('inc/header');
        $this->load->view('users/add');
        $this->load->view('inc/footer');
    }

    public function edit($id)
    {
        $dados = array(
            'user' => $this->users->find($id)
        );

        $this->load->view('inc/header');
        $this->load->view('users/edit', $dados);
        $this->load->view('inc/footer');
    }


    public function save()
    {
        $dados = array(
            'name'      => $this->input->post('name'),
            'email'     => $this->input->post('email'),
            'password'  => md5($this->input->post('password')),
            'status'    => 1
        );

        if ($this->users->save($dados)) {
            $this->load->library('Logs');
            $this->logs->save($this->userData['name'], 'Cadastrou um administrador (' . $this->input->post('name') .')');

            $this->session->set_flashdata('msgSuccess', 'Administrador cadastrado com sucesso!');
            redirect('users');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível cadastrar o administrador, tente novamente!');
            redirect('users');
        }
    }

    public function update($id)
    {
        $dados = array(
            'name'      => $this->input->post('name'),
            'email'     => $this->input->post('email'),
            'password'  => md5($this->input->post('password')),
            'status'    => 1
        );

        if ($this->users->update($dados, $id)) {
            $this->load->library('Logs');
            $this->logs->save($this->userData['name'], 'Atualizou um administrador (' . $this->input->post('name') .')');

            $this->session->set_flashdata('msgSuccess', 'Administrador atualizado com sucesso!');
            redirect('users');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível atualizar o administrador, tente novamente!');
            redirect('users');
        }
    }

    public function delete($id)
    {
        $users = $this->users->all();

        if (count($users) == 1) {
            $this->session->set_flashdata('msgError', 'Você não pode deletar o último usuário.');
            redirect('users');
        } else {

            $user = $this->users->find($id);
            $usuario_logado = $userData['name'];

            if ($user[0]->name === $usuario_logado) {

                // Deleta, destroi a sessao e redireciona
                if ($this->users->delete($id)) {
                    $this->load->library('Logs');
                    $this->logs->save($this->userData['name'], 'Se auto deletou o.O');

                    $this->session->sess_destroy();
                    redirect('auth');
                } else {
                    $this->session->set_flashdata('msgError', 'Erro ao tentar deletar o usuário, tente novamente.');
                    redirect('users');
                }
            } else {
                if ($this->users->delete($id)) {
                    $this->load->library('Logs');
                    $this->logs->save($this->userData['name'], 'Deletou um administrador (' . $user[0]->name .')');

                    $this->session->set_flashdata('msgSuccess', 'Administrador deletado com sucesso!');
                    redirect('users');
                } else {
                    $this->session->set_flashdata('msgError', 'Erro ao tentar deletar o usuário, tente novamente.');
                    redirect('users');
                }
            }
        }
    }
}
