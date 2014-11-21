<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Auth_model', 'auth');
    }

	public function index()
	{
        if ($this->session->userdata('logged_in')) {

            $session_data = $this->session->userdata('logged_in');

            if ($session_data['logado'] === true) {
                redirect('home', 'refresh');
            }
        }

        $this->load->view('auth/index');
	}

    public function logar()
    {
        $this->form_validation->set_rules('email', 'E-mail', 'required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required');
        $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');

        if ($this->form_validation->run() == false) {
			$this->index();
		} else {

            $_email = $this->input->post('email');
            $_senha = md5($this->input->post('password'));
            $_user  = $this->auth->logar($_email, $_senha);

            if (empty($_user)) {
                $this->session->set_flashdata('msgError', 'Email ou senha inválidos!');
                redirect('auth');
            } else {

                $sessao = array();

                foreach ($_user as $u) {
                    $sessao = array(
                        'id'    => $u->id,
                        'email' => $u->email,
                        'name'  => $u->name,
                        'logado' => true
                    );

                    $this->session->set_userdata('logged_in', $sessao);
                }

                redirect('home');
            }
		}
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect('auth');
    }
}
