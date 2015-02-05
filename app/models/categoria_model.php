<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Categoria_model extends CI_Model
{
    private $table  = 'categorias';
    private $id     = 'id';
    private $name   = 'name';
    private $slug   = 'slug';

    public function __construct()
    {
        parent::__construct();
    }

    public function all()
    {
        $this->db->order_by('name', 'asc');
        return $this->db->get($this->table)->result();
    }

    public function find($slug)
    {
        $this->db->where($this->slug, $slug);
        return $this->db->get($this->table)->result();
    }
}
