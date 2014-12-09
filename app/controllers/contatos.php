<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Contatos extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        redirect('home');
    }

    public function sendmail()
    {
        $nome       = $this->input->post('nome');
        $mail       = $this->input->post('email');
        $fone       = $this->input->post('telefone');
        $message    = $this->input->post('message');

        $config = array();
        $config['useragent']    = "CodeIgniter";
        $config['mailpath']     = "/usr/bin/sendmail"; // or "/usr/sbin/sendmail"
        $config['protocol']     = "smtp";
        $config['smtp_host']    = "mail.mercurios.in";
        $config['smtp_user']    = "tassiano@mercurios.in";
        $config['smtp_pass']    = "123456";
        $config['smtp_port']    = "25";
        $config['mailtype']     = 'html';
        $config['charset']      = 'utf-8';
        $config['newline']      = "\r\n";
        $config['wordwrap']     = TRUE;

        $this->load->library('email');
        $this->email->initialize($config);

        $this->email->from($mail, $nome .' ' . $fone);
        $this->email->to('tassianomac@me.com');

        $this->email->subject('Contato do site');
        $this->email->message($message);

        if ($this->email->send()) {
            $this->session->set_flashdata('msgOK', 'Recebemos sua mensagem, em breve entraremos em contato.');
            redirect('contatos/mensagem');
        } else {
            $this->session->set_flashdata('msgERROR', 'Não foi possível enviar sua mensagem, tente novamente.');
            redirect('contatos/mensagem');
        }
    }

    public function mensagem()
    {
        $this->load->model('Operadora_model', 'operadoras');
        $this->load->model('Categoria_model', 'categorias');

        $dados = array(
            'operadoras' => $this->operadoras->all(),
            'categorias' => $this->categorias->all()
        );

        $this->load->view('inc/header', $dados);
        $this->load->view('contato/mensagem');
        $this->load->view('inc/footer');
    }
}
