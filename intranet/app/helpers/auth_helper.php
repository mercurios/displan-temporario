<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function checkAuth()
{
    $_ci =& get_instance();

    $userData = $_ci->session->userdata('logged_in');

    if ($userData && $userData['logado'] === true) {
        $session_data = $_ci->session->userdata('logged_in');
    } else {
        redirect('auth', 'refresh');
    }
}
