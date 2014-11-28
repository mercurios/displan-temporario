<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tabela_model extends CI_Model
{
    private $tabela     = 'tabelas';
    private $id         = 'id';
    private $operadora  = 'operadora_id';
    private $plano      = 'plano_id';

    public function __construct()
    {
        parent::__construct();
    }

    public function all()
    {
        return $this->db->get($this->tabela)->result();
    }

    public function find($id)
    {
        $this->db->where($this->id, $id);
        return $this->db->get($this->tabela)->result();
    }

    public function save($dados)
    {
        $dados['criado']  = date('Y-m-d H:i:s');
        $dados['editado'] = date('Y-m-d H:i:s');

        $this->db->insert($this->tabela, $dados);
        return $this->db->insert_id();
    }

    public function update($dados, $id)
    {
        $dados['editado'] = date('Y-m-d H:i:s');

        $this->db->where($this->id, $id);
        $this->db->update($this->tabela, $dados);
        return true;
    }

    public function delete($id)
    {
        $this->db->where($this->id, $id);
        $this->db->delete($this->tabela);
        return true;
    }
}
