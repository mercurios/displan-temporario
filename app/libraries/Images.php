<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class CI_Images
{

	/**
	 * Gera o thumb e salva em uma pasta específica, thumb
	 */
	public function thumb($path, $width, $height, $alt = null, $class = null, $id = null)
	{
		// Define a pasta da imagem
		$path = 'uploads/' . $path;

	 	// Instacia o CI
	 	$CI =& get_instance();

	 	// Pathinfo
	 	$pathinfo = pathinfo($path);

	 	// Pega o nome da imagem
	 	$imagem_name = $pathinfo['filename'];

	 	// Pega a extensão
	 	$imagem_ext = $pathinfo['extension'];

	 	// Gera a miniatura
	 	$imagem_thumb = dirname( $path ) . '/thumb/' . $imagem_name . '_' . $height . '_' . $width . '.' . $imagem_ext;

	 	// Verifica se já existe uma thumbnail criada, se não, cria uma nova.
	 	if (!file_exists($imagem_thumb)) {

	 		// Carrega a biblioteca
	 		$CI->load->library('image_lib');

	 		// Configura a biblioteca
	 		$config_library = array(
	 			'image_library' => 'gd2',
	 			'source_image' 	=> $path,
	 			'new_image' 	=> $imagem_thumb,
	 			'maintain_ratio' => FALSE,
	 			'height' 		=> $height,
	 			'width' 		=> $width
	 		);

	 		// Starta a biblioteca
	 		$CI->image_lib->initialize($config_library);
	 		$CI->image_lib->resize();
	 		$CI->image_lib->clear();
	 	}

	 	// Verifica se foi colocado os atributos
		return '<img src="'. base_url() . $imagem_thumb .'" alt="'. $alt .'" class="'. $class .'" id="'. $id .'" />';
	}
}
