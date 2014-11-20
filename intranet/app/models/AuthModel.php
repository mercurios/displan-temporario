<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Authmodel extends CI_Model
{
    private $tabela     = 'users';
    private $id         = 'id';
    private $name       = 'name';
    private $email      = 'email';
    private $password   = 'password';
    private $status     = 'status';
    
    public function __construct()
    {
        parent::__construct();
    }
    
    public function logar($email, $password)
    {
        $this->db->where($this->email, $email);
        $this->db->where($this->password, $password);
        $this->db->limit(1);
        
        return $this->db->get($this->tabela)->result();
    }
}