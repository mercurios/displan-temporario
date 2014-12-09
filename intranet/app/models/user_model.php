<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User_model extends CI_Model
{
    private $tabela     = 'users';
    private $id         = 'id';
    private $name       = 'name';
    private $email      = 'email';
    private $senha      = 'password';
    private $status     = 'status';

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
        $this->db->insert($this->tabela, $dados);
        return $this->db->insert_id();
    }

    public function update($dados, $id)
    {
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
