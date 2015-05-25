<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tabelas extends CI_Controller
{
    private $userData;

    public function __construct()
    {
        parent::__construct();

        checkAuth();

        $userdata = $this->session->all_userdata();
        $this->userData = $userdata['logged_in'];

        $this->load->model('Operadora_model', 'operadoras');
        $this->load->model('Plano_model', 'planos');
        $this->load->model('Tabela_model', 'tabelas');
        $this->load->model('Categoria_model', 'categorias');
    }

    public function listar($tipo)
    {
        switch($tipo) {
            case 'individuais':
                $dados = array(
                    'tabelas' => $this->tabelas->all_individual()
                );

                $this->load->view('inc/header');
                $this->load->view('tabelas/tab_individuais', $dados);
                $this->load->view('inc/footer');
            break;

            case 'empresariais':
                $dados = array(
                    'tabelas' => $this->tabelas->all_empresarial()
                );

                $this->load->view('inc/header');
                $this->load->view('tabelas/tab_empresariais', $dados);
                $this->load->view('inc/footer');
            break;

            case 'especiais':
                $dados = array(
                    'tabelas' => $this->tabelas->all_especial()
                );

                $this->load->view('inc/header');
                $this->load->view('tabelas/tab_especiais', $dados);
                $this->load->view('inc/footer');
            break;
        }
    }

    public function add($tipo)
    {
        switch($tipo) {
            case 'individual':
                $dados = array(
                    'operadoras' => $this->operadoras->all()
                );

                $this->load->view('inc/header');
                $this->load->view('tabelas/add_individual', $dados);
                $this->load->view('inc/footer');
            break;

            case 'empresarial':
                $dados = array(
                    'operadoras' => $this->operadoras->all()
                );

                $this->load->view('inc/header');
                $this->load->view('tabelas/add_empresarial', $dados);
                $this->load->view('inc/footer');
            break;

            case 'especial':
                $dados = array(
                    'operadoras' => $this->operadoras->all(),
                    'categorias' => $this->categorias->all()
                );

                $this->load->view('inc/header');
                $this->load->view('tabelas/add_especial', $dados);
                $this->load->view('inc/footer');
            break;
        }
    }

    public function edit($tipo, $id)
    {
        switch($tipo) {
            case 'individual':


                $tabelas    = $this->tabelas->find_individual($id);
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

            break;

            case 'empresarial':
                $tabelas    = $this->tabelas->find_empresarial($id);
                $operadoras = $this->operadoras->all();
                $planos     = $this->planos->find_operadora($tabelas[0]->operadora_id);

                $dados = array(
                    'tabelas'       => $tabelas,
                    'operadoras'    => $operadoras,
                    'planos'        => $planos
                );

                $this->load->view('inc/header');
                $this->load->view('tabelas/edt_empresarial', $dados);
                $this->load->view('inc/footer');
            break;

            case 'especial':
                $tabelas    = $this->tabelas->find_especial($id);
                $operadoras = $this->operadoras->all();
                $planos     = $this->planos->find_operadora($tabelas[0]->operadora_id);

                $dados = array(
                    'tabelas'       => $tabelas,
                    'operadoras'    => $operadoras,
                    'planos'        => $planos,
                    'categorias'    => $this->categorias->all()
                );

                $this->load->view('inc/header');
                $this->load->view('tabelas/edt_especial', $dados);
                $this->load->view('inc/footer');
            break;
        }
    }

    /**
     * CRUD DAS TABELAS
     */
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

        if ($this->tabelas->save_individual($dados)) {
            $this->load->library('Logs');
            $this->logs->save($this->userData['name'], 'Adicionou uma tabela individual.');

            $this->session->set_flashdata('msgSuccess', 'Tabela adicionada com sucesso!');
            redirect('tabelas/listar/individuais');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível adicionar a tabela, tente novamente!');
            redirect('tabelas/listar/individuais');
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

        if ($this->tabelas->update_individual($dados, $id)) {
            $this->load->library('Logs');
            $this->logs->save($this->userData['name'], 'Atualizou uma tabela individual.');

            $this->session->set_flashdata('msgSuccess', 'Tabela atualizada com sucesso!');
            redirect('tabelas/listar/individuais');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível atualizar a tabela, tente novamente!');
            redirect('tabelas/listar/individuais');
        }
    }

    public function saveempresarial()
    {
        $operadora  = $this->input->post('operadora');
        $plano      = $this->input->post('plano');
        $acomodacao = $this->input->post('acomodacao');
        $idadeMin   = $this->input->post('idade_min');
        $idadeMax   = $this->input->post('idade_max');
        $categoria  = $this->input->post('categoria');
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
            'vida_min'     => $idadeMin,
            'vida_max'     => $idadeMax,
            'categoria'     => $categoria,
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

        if ($this->tabelas->save_empresarial($dados)) {
            $this->load->library('Logs');
            $this->logs->save($this->userData['name'], 'Adicionou uma nova tabela empresarial');

            $this->session->set_flashdata('msgSuccess', 'Tabela adicionada com sucesso!');
            redirect('tabelas/listar/empresariais');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível adicionar a tabela, tente novamente!');
            redirect('tabelas/listar/empresariais');
        }
    }

    public function updateempresarial($id)
    {
        $operadora  = $this->input->post('operadora');
        $plano      = $this->input->post('plano');
        $acomodacao = $this->input->post('acomodacao');
        $idadeMin   = $this->input->post('idade_min');
        $idadeMax   = $this->input->post('idade_max');
        $categoria  = $this->input->post('categoria');
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
            'vida_min'      => $idadeMin,
            'vida_max'      => $idadeMax,
            'categoria'     => $categoria,
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

        if ($this->tabelas->update_empresarial($dados, $id)) {
            $this->load->library('Logs');
            $this->logs->save($this->userData['name'], 'Atualizou uma nova tabela empresarial');

            $this->session->set_flashdata('msgSuccess', 'Tabela atualizada com sucesso!');
            redirect('tabelas/listar/empresariais');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível atualizar a tabela, tente novamente!');
            redirect('tabelas/listar/empresariais');
        }
    }

    /**
     * ESPECIAIS
     */
    public function saveespecial()
    {
        $operadora  = $this->input->post('operadora');
        $plano      = $this->input->post('plano');
        $acomodacao = $this->input->post('acomodacao');
        $categorias = $this->input->post('categorias');
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
            'categorias'    => serialize($categorias),
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

        if ($this->tabelas->save_especial($dados)) {
            $this->load->library('Logs');
            $this->logs->save($this->userData['name'], 'Adicionou uma tabela especial.');

            $this->session->set_flashdata('msgSuccess', 'Tabela adicionada com sucesso!');
            redirect('tabelas/listar/especiais');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível adicionar a tabela, tente novamente!');
            redirect('tabelas/listar/especiais');
        }
    }

    public function updateespecial($id)
    {
        $operadora  = $this->input->post('operadora');
        $plano      = $this->input->post('plano');
        $acomodacao = $this->input->post('acomodacao');
        $categorias = $this->input->post('categorias');
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
            'categorias'    => serialize($categorias),
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

        if ($this->tabelas->update_especial($dados, $id)) {
            $this->load->library('Logs');
            $this->logs->save($this->userData['name'], 'Atualizou uma tabela especial.');

            $this->session->set_flashdata('msgSuccess', 'Tabela atualizada com sucesso!');
            redirect('tabelas/listar/especiais');
        } else {
            $this->session->set_flashdata('msgError', 'Não foi possível atualizar a tabela, tente novamente!');
            redirect('tabelas/listar/especiais');
        }
    }



    public function delete($tipo, $id)
    {
        switch($tipo) {
            case 'individual':
                if ($this->tabelas->delete_individual($id)) {
                    $this->load->library('Logs');
                    $this->logs->save($this->userData['name'], 'Deletou uma tabela individual');

                    $this->session->set_flashdata('msgSuccess', 'Tabela deletada com sucesso!');
                    redirect('tabelas/listar/individuais');
                } else {
                    $this->session->set_flashdata('msgError', 'Não foi possível deletar a tabela, tente novamente!');
                    redirect('tabelas/listar/individuais');
                }
            break;

            case 'empresarial':
                if ($this->tabelas->delete_empresarial($id)) {
                    $this->load->library('Logs');
                    $this->logs->save($this->userData['name'], 'Deletou uma tabela empresarial');

                    $this->session->set_flashdata('msgSuccess', 'Tabela deletada com sucesso!');
                    redirect('tabelas/listar/empresariais');
                } else {
                    $this->session->set_flashdata('msgError', 'Não foi possível deletar a tabela, tente novamente!');
                    redirect('tabelas/listar/empresariais');
                }
            break;

            case 'especial':
                if ($this->tabelas->delete_especial($id)) {
                    $this->load->library('Logs');
                    $this->logs->save($this->userData['name'], 'Deletou uma tabela especial');

                    $this->session->set_flashdata('msgSuccess', 'Tabela deletada com sucesso!');
                    redirect('tabelas/listar/especiais');
                } else {
                    $this->session->set_flashdata('msgError', 'Não foi possível deletar a tabela, tente novamente!');
                    redirect('tabelas/listar/especiais');
                }
            break;
        }
    }
}
