<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Plano_model extends CI_Model
{
    private $tabela     = 'planos';
    private $id         = 'id';
    private $name       = 'name';
    private $operadora  = 'operadora_id';
    private $credenciados = 'credenciados';
    private $info       = 'info';

    public function __construct()
    {
        parent::__construct();
    }

    public function all()
    {
        $query = $this->db
            ->select('p.id, p.name as pname, o.name as oname, p.credenciados, p.info')
            ->from($this->tabela . ' as p')
            ->join('operadoras as o', $this->operadora . ' = o.id')
            ->get()
            ->result();

        return $query;
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
