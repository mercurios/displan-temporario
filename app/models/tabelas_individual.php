<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Tabelas_individual extends CI_Model
{
    private $table      = 'tabelas_individuais';
    private $id         = 'id';
    private $operadora  = 'operadora_id';
    private $plano      = 'plano_id';

    public function __construct()
    {
        parent::__construct();
    }

    public function find($operadora)
    {
        $this->db->select('
            t.id,
            t.acomodacao,
            t.titulos,
            t.idade0018,
            t.idade1923,
            t.idade2428,
            t.idade2933,
            t.idade3438,
            t.idade3943,
            t.idade4448,
            t.idade4953,
            t.idade5458,
            t.idade59,
            t.acomodacao,
            o.logo,
            p.name as plano,
            p.info,
            p.credenciados
        ');

        $this->db->from('tabelas_individuais as t');
        $this->db->join('operadoras as o', 't.operadora_id = o.id');
        $this->db->join('planos as p', 't.plano_id = p.id');
        $this->db->where('t.operadora_id', $operadora);
        return $this->db->get()->result();
    }
}
