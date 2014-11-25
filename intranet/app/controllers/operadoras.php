<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Operadoras extends CI_Controller
{

    /**
     * Verifica se fez o login
     * Carrega os models
     */
    public function __construct()
    {
        parent::__construct();

        if ($this->session->userdata('logged_in') && $this->session->userdata('logged_in')['logado'] === true) {
            $session_data = $this->session->userdata('logged_in');
        } else {
            redirect('auth', 'refresh');
        }

        $this->load->model('Operadora_model', 'operadora');
    }

    /**
     * Lista operadoras
     */
    public function index()
    {
        $dados = array('resultado' => $this->operadora->all());

        $this->load->view('inc/header');
        $this->load->view('operadoras/index', $dados);
        $this->load->view('inc/footer');
    }

    /**
     * Formulário de cadastro
     */
    public function add()
    {
        $this->load->view('inc/header');
        $this->load->view('operadoras/add');
        $this->load->view('inc/footer');
    }

    /**
     * Formulário de edição
     */
    public function edit($id)
    {
        if (empty($id)) {
            redirect('operadoras');
        }

        $dados = array('resultado' => $this->operadora->find($id));

        $this->load->view('inc/header');
        $this->load->view('operadoras/edit', $dados);
        $this->load->view('inc/footer');
    }

    /**
     * Salva as informações no banco de dados
     */
    public function save()
    {
        // Validação
        $this->form_validation->set_rules('name', 'Nome', 'required');

        if ($this->form_validation->run() == false) {
            $this->add();
        } else {

            $dados = array('name' => $this->input->post('name'));

            if (!empty($_FILES['imagem']['name'])) {
                $config['upload_path'] 		= '../uploads/operadoras/';
                $config['allowed_types'] 	= 'gif|jpg|png|pjpeg';
                $config['max_size'] 		= '2048';
                $config['overwrite']  		= FALSE;
                $config['encrypt_name'] 	= TRUE;

                $field_name1 = "imagem";
                $this->load->library('upload');
                $this->upload->initialize($config);

                if (!$this->upload->do_upload($field_name1)) {
                    $this->session->set_flashdata('msgError', 'Erro ao enviar imagem: ' . $this->upload->display_errors());
                    redirect('operadoras');
                } else {
                    $upload_data = $this->upload->data();
                    $dados['logo'] = $upload_data['file_name'];
                }
            }

            if ($this->operadora->save($dados)) {
                $this->load->library('Logs');
                $this->logs->save($this->session->userdata('logged_in')['name'], 'Cadastrou uma nova operadora.');

                $this->session->set_flashdata('msgSuccess', 'Operadora cadastrada com sucesso!');
                redirect('operadoras');
            } else {
                $this->session->set_flashdata('msgError', 'Não foi possível cadastrar a operadora, tente novamente!');
                redirect('operadoras');
            }
        }
    }

    /**
     * Atualiza as informações no banco
     */
    public function update($id)
    {
        if (empty($id)) {
            redirect('operadoras');
        }

        // Validação
        $this->form_validation->set_rules('name', 'Nome', 'required');

        if ($this->form_validation->run() == false) {
            $this->add();
        } else {

            $dados = array('name' => $this->input->post('name'));

            if (!empty($_FILES['imagem']['name'])) {
                $config['upload_path'] 		= '../uploads/operadoras/';
                $config['allowed_types'] 	= 'gif|jpg|png|pjpeg';
                $config['max_size'] 		= '2048';
                $config['overwrite']  		= FALSE;
                $config['encrypt_name'] 	= TRUE;

                $field_name1 = "imagem";
                $this->load->library('upload');
                $this->upload->initialize($config);

                if (!$this->upload->do_upload($field_name1)) {
                    $this->session->set_flashdata('msgError', 'Erro ao enviar imagem: ' . $this->upload->display_errors());
                    redirect('operadoras');
                } else {
                    $upload_data = $this->upload->data();
                    $dados['logo'] = $upload_data['file_name'];
                }
            } else {
                $dados['logo'] = $this->input->post('logo');
            }

            if ($this->operadora->update($dados, $id)) {
                $this->load->library('Logs');
                $this->logs->save($this->session->userdata('logged_in')['name'], 'Atualizou a operadora. (' .$this->input->post('name'). ')');

                $this->session->set_flashdata('msgSuccess', 'Operadora atualizada com sucesso!');
                redirect('operadoras');
            } else {
                $this->session->set_flashdata('msgError', 'Não foi possível atualizar a operadora, tente novamente!');
                redirect('operadoras');
            }
        }
    }

    /**
     * Deleta do banco
     */
    public function delete($id)
    {
        if (empty($id)) {
            redirect('operadoras');
        }

        $dados  = $this->operadora->find($id);
        $imagem = $dados[0]->logo;

        if ($this->operadora->delete($id)) {
            unlink('../uploads/operadoras/' . $imagem);

            $this->load->library('Logs');
            $this->logs->save($this->session->userdata('logged_in')['name'], 'Deletou uma operadora. (' .$dados[0]->name. ')');

            $this->session->set_flashdata('msgSuccess', 'Operadora deletada com sucesso!');
            redirect('operadoras');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível deletar a operadora, tente novamente!');
            redirect('operadoras');
        }
    }
}
