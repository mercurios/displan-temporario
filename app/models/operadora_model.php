<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Operadora_model extends CI_Model
{
    private $table      = 'operadoras';
    private $id         = 'id';
    private $logo       = 'logo';
    private $name       = 'name';
    private $slug       = 'slug';
    private $categoria  = 'categoria';

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * ----------------------------------------
     * Busca todas as operadoras cadastradas
     * ----------------------------------------
     */
    public function all()
    {
        $this->db->order_by($this->name, 'asc');
        return $this->db->get($this->table)->result();
    }
    
    /**
     * ----------------------------------------
     * Busca as operadoras cadastradas por slug
     * ----------------------------------------
     */
    public function find($slug)
    {
        $this->db->where($this->slug, $slug);
        $this->db->order_by($this->name, 'asc');
        return $this->db->get($this->table)->result();
    }
    
    /**
     * ----------------------------------------
     * Busca as operadoras cadastradas na categoria
     * individual
     * ----------------------------------------
     */
    public function getByCategory($category)
    {
        $this->db->like($this->categoria, $category); 
        $this->db->order_by($this->name, 'asc');
        return $this->db->get($this->table)->result();
    }

}
