		<footer class="ls-footer" role="contentinfo">
			<div class="ls-footer-info">
				<span class="last-access ls-ico-screen">
					<strong>Memória usada: </strong><?= $this->benchmark->memory_usage(); ?>s
				</span>

				<span class="last-access ls-ico-download">
					<strong>Tempo de carregamento: </strong>(<?= $this->benchmark->elapsed_time(); ?> segundos)
				</span>

				<div class="set-ip"><span class="set-ip">
					<strong>IP:</strong> <?= $_SERVER['REMOTE_ADDR']; ?></span>
				</div>
				<p class="ls-copy-right">Copyright © 2013-<?= date('Y'); ?> Mercurios DWM</p>
			</div>
		</footer>
	</main>

	<aside class="ls-sidebar">
		<!-- Defails of user account -->
		<div data-ls-module="dropdown" class="ls-dropdown ls-user-account">
			<a href="#" class="ls-ico-user">
				<?= $this->session->userdata('nome'); ?>
			</a>
			<nav class="ls-dropdown-nav ls-user-menu">
				<ul>
					<li><a href="<?= base_url('usuarios/sair'); ?>">Sair</a></li>
				</ul>
			</nav>
		</div>

		<nav class="ls-menu">
			<ul>
				<li><a href="<?= base_url('home'); ?>" class="ls-ico-home">Página inicial</a></li>
				<li><a href="<?= base_url('operadoras'); ?>" class="ls-ico-globe">Operadoras</a></li>
				<li><a href="<?= base_url('planos'); ?>" class="ls-ico-list">Planos</a></li>
				<li><a href="<?= base_url('tabelas/listar/individuais'); ?>" class="ls-ico-table-alt">Tabelas individuais</a></li>
				<li><a href="<?= base_url('tabelas/empresariais'); ?>" class="ls-ico-table-alt">Tabelas empresariais</a></li>
				<li><a href="<?= base_url('tabelas/especiais'); ?>" class="ls-ico-table-alt">Tabelas especiais</a></li>
			</ul>
		</nav>
	</aside>

	<!-- We recommended use jQuery 1.10 or up -->
	<script type="text/javascript" src="<?= base_url(); ?>assets/modulos/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript" src="<?= base_url(); ?>assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<?= base_url(); ?>assets/modulos/locawebstyle/dist/javascripts/locastyle.js"></script>
	<script type="text/javascript" src="<?= base_url(); ?>assets/modulos/dynatable/jquery.dynatable.js"></script>
	<script type="text/javascript" src="//tinymce.cachefly.net/4.1/tinymce.min.js"></script>
	<script type="text/javascript">
		tinymce.init({selector:'textarea'});
		var url = '<?= base_url(); ?>';
	</script>
	<script type="text/javascript" src="<?= base_url(); ?>assets/js/app.js"></script>
</body>
</html>
