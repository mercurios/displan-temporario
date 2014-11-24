<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CI_Logs
{
    private $ci;

    public function __construct()
    {
        $this->ci =& get_instance();
    }

    public function all()
    {
        return $this->ci->db->get('logs')->result();
    }

    public function save($user, $message)
    {
        $dados = array(
            'usuario'   => $user,
            'mensagem'  => $message,
            'data'      => date('Y-m-d H:i:s')
        );

        $this->ci->db->insert('logs', $dados);
        return $this->ci->db->insert_id();
    }

    public function generateTable()
    {
        $this->ci->db->query('
            CREATE TABLE IF NOT EXISTS `teste` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `usuario` varchar(45) DEFAULT NULL,
                `mensagem` text,
                `data` datetime DEFAULT NULL,
                PRIMARY KEY (`id`)
            ) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
        ');
    }
}
