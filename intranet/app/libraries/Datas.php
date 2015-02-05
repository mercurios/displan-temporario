<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CI_Datas
{
    /**
     * Formata a data para o formato brasileiro
     */
    public function to_br($data, $with_hora = true)
    {
        // Converte para timestamp
        $data = strtotime($data);

        // Organiza no padrão brasileiro
        if ($with_hora) {
            return $data = date('d/m/Y H:i:s', $data);
        }

        return $data = date('d/m/Y', $data);
    }

    /**
     * Calcula a diferença entre as datas
     */
    public function get_timeDifference($inicio, $fim)
    {
        $inicio = strtotime($inicio);
        $fim = strtotime($fim);

        $segundos = ($fim - $inicio);
        $minutos  = round(($segundos / 60));
        $horas    = round(($segundos / 60 / 60));
        $dias     = round(($segundos / 60 / 60 / 24));

        if ($segundos < 60) {
            return $segundos . ' segundo(s)';
        } else if ($minutos < 60) {
            return $minutos . ' minuto(s)';
        } else if ($horas < 24) {
            return $horas . ' hora(s)';
        } else {
            return $dias . ' dia(s)';
        }
    }
}
