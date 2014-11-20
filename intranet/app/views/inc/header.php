<?php $sessao = $this->session->all_userdata(); ?>
<!DOCTYPE html>
<html class="ls-theme-mercurios">
<head>
	<title>Displan saúde - Administração</title>

	<meta charset="utf-8">
	<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

	<!-- Css Files -->
	<link type="text/css" rel="stylesheet" href="<?= base_url(); ?>assets/css/bootstrap.min.css">
	<link type="text/css" rel="stylesheet" href="<?= base_url(); ?>assets/modulos/locawebstyle/dist/stylesheets/locastyle.css">
	<link type="text/css" rel="stylesheet" href="<?= base_url(); ?>assets/modulos/fontawesome/css/font-awesome.min.css">
	<link type="text/css" rel="stylesheet" href="<?= base_url(); ?>assets/css/mytheme.css">
	<link type="text/css" rel="stylesheet" href="<?= base_url(); ?>assets/css/style.css">
</head>
<body>

	<div class="ls-topbar">
		<div class="ls-notification-topbar">
			<div data-ls-module="dropdown" class="ls-dropdown ls-user-account">
				<a href="#" class="ls-ico-user">
					<?= $sessao['logged_in']['name']; ?>
				</a>
				<nav class="ls-dropdown-nav ls-user-menu">
					<ul>
						<li><a href="<?= base_url('auth/logout'); ?>">Sair</a></li>
					</ul>
				</nav>
			</div>
		</div>

		<span class="ls-show-sidebar ls-ico-menu"></span>
		<span class="ls-show-notifications ls-ico-question"></span>

		<!-- Nome do produto/marca -->
		<h1 class="ls-brand-name">
			<a class="ls-ico-earth" href="<?= base_url(); ?>">Displan saúde</a>
		</h1>
	</div>

	<?php if ($this->session->flashdata('msgSuccess')) : ?>
	<div class="alerta ls-alert-success ls-dismissable">
		<span data-ls-module="dismiss" class="ls-dismiss">&times;</span>
		<?= $this->session->flashdata('msgSuccess'); ?>
	</div>
	<?php endif; ?>

	<?php if ($this->session->flashdata('msgError')) : ?>
	<div class="alerta ls-alert-danger ls-dismissable">
		<span data-ls-module="dismiss" class="ls-dismiss">&times;</span>
		<?= $this->session->flashdata('msgError'); ?>
	</div>
	<?php endif; ?>

	<main class="ls-main ">
