
<!doctype html>

<html lang="en">
<head>
	<meta charset="utf-8">

	<title>Displan Saúde</title>
	<!-- Css files -->
	<link rel="stylesheet" href="<?= base_url('assets/modulos/semantic-ui/build/packaged/css/semantic.min.css') ?>">
	<link rel="stylesheet" href="<?= base_url('assets/css/style.css') ?>">

	<!--[if lt IE 9]>
	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>

	<!-- Errors container -->
	<div class="errors-container">
		<?php if (validation_errors()) : ?>
			<?= validation_errors(); ?>
		<?php endif; ?>

		<?php if ($this->session->flashdata('msgError')) : ?>
		<div class="alert alert-danger">
			<?= $this->session->flashdata('msgError'); ?>
		</div>
		<?php endif; ?>
	</div>

	<!-- Login -->
	<div class="wraper-login">

		<form method="post" action="<?= base_url('auth/logar') ?>">
			<div class="ui piled feed segment">
				<img src="http://placehold.it/365x150/f4f4f4/23456E&text=Displan%20Sa%C3%BAde">
				<div class="ui form segment">
					<div class="field">
						<label>Email</label>
						<div class="ui left labeled icon input">
							<input type="email" name="email" value="" />
							<i class="user icon"></i>
						</div>
						<small style="color: red"></small>
					</div>

					<div class="field">
						<label>Senha</label>
						<div class="ui left labeled icon input">
							<input type="password" name="password" value="" />
							<i class="lock icon"></i>
						</div>
						<small style="color: red"></small>
					</div>

					<div class="ui buttons">
						<input type="submit" class="ui positive button" value="Entrar">
						<div class="or"></div>
						<a href="#" class="ui button">Recuperar senha</a>
					</div>
				</div>
			</div>
		</form>
	</div>

	<!-- Js files -->
	<script src="<?= base_url('assets/modulos/jquery/dist/jquery.min.js') ?>"></script>
	<script src="<?= base_url('assets/js/app.js') ?>"></script>
</body>
</html>
