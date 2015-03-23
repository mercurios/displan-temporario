    <footer class="page-break">
        <div id="footer" class="container-fluid">
            <div class="row-fluid">
                <div id="onde-estamos" class="col-md-4 offset1">
                    <h4 class="borda-h4">
                        <span class="glyphicon glyphicon-map-marker"></span> ONDE ESTAMOS
                    </h4>
                    <p>Av. Lins Petit, 159 - Boa Vista, Recife - PE. <br> CEP: 50070-230.
                    </p>
                    <div id="map-canvas"></div>
                </div>

                <div id="contato" class="col-md-3">
                    <h4 class="borda-h4"><span class="glyphicon glyphicon-envelope"></span> CONTATO</h4>

                    <!--forms-->
                    <p>Preencha os campos abaixo.</p>
                    <div id="formulario" class="container-fluid">
                        <form class="form-horizontal row-fluid" method="post" action="<?= base_url('contatos/sendmail') ?>">
                            <fieldset>
                                <legend>Dados da Mensagem</legend>
                                <div class="control-group">
                                    <div class="controls">
                                        <label for="inputName">Seu Nome</label>
                                        <input class="col-md-12" name="nome" type="text" id="inputName" placeholder="Nome" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <label for="inputEmail">Seu Email</label>
                                        <input class="col-md-12" name="email" type="email" id="inputEmail" placeholder="E-mail" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <label for="inputTelephone">Seu Telefone</label>
                                        <input class="col-md-12" name="telefone" type="tel" id="inputTelephone" placeholder="Telefone" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <label for="inputMessage">Sua Mensagem</label>
                                        <textarea class="col-md-12" name="message" rows="5" cols="10" id="inputMessage" placeholder="Mensagem"></textarea>
                                    </div>
                                </div>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal-1">
                                  Enviar
                                </button>

                                <!--Modals Sucesso e Falha-->

                                
                                <!-- Modal de Sucesso-->
                                <div class="modal fade" id="myModal-1" tabindex="-1" role="dialog">
                                  <div class="modal-dialog">
                                    <div class="modal-content">
                                      <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span>&times;</span><span class="sr-only">Fechar</span></button>
                                        <h4 class="modal-title modal-success">Sua mensagem foi enviada com sucesso!</h4>
                                      </div>
                                    </div>
                                  </div>
                                </div>

                                <!-- Modal de Falha-->
                                <div class="modal fade" id="myModal-2" tabindex="-1" role="dialog">
                                  <div class="modal-dialog">
                                    <div class="modal-content">
                                      <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span>&times;</span><span class="sr-only">Fechar</span></button>
                                        <h4 class="modal-title modal-fail">Falha ao enviar a mensagem!</h4>
                                      </div>
                                    </div>
                                  </div>
                                </div>

                            </fieldset>
                        </form>
                    </div>
                    <!--end forms-->
                </div>

                <div id="nossohorario" class="col-md-3">
                    <h4 class="borda-h4"><span class="glyphicon glyphicon-time"></span> NOSSO HORÁRIO</h4>
                    <p>Segunda à sexta 8:00 às 18:00h.</p>
                </div>

                <div id="telefone" class="col-md-3">
                    <h4 class="borda-h4"><span class="glyphicon glyphicon-earphone"></span> TELEFONE</h4>
                    <h5>(81) 3082.3033</h5>
                </div>
            </div>
        </div>

        <div id="copy" class="container-fluid">
            <div class="row-fluid">
                <div class="col-md-10 offset1">
                    <address class="col-md-6">&copy; COPYRIGHT 2014 DISPLAN. TODOS OS DIREITOS RESERVADOS.</address>
                    <div id="by" class="col-md-2">
                        <h6>Site garantido pela:</h6>
                        <img src="<?= base_url('assets/img/mercurios.png'); ?>" alt="mercurios" title="Mercurios">
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Scripts -->
    <script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
    <script async type="text/javascript" src="<?= base_url('assets/js/gmap3.min.js'); ?>"></script>
    <script type="text/javascript" src="<?= base_url('assets/js/jquery-1.11.1.min.js'); ?>"></script>
    <script async type="text/javascript" src="<?= base_url('assets/js/bootstrap.min.js'); ?>"></script>
    <script async type="text/javascript" src="<?= base_url('assets/js/script.js'); ?>"></script>
    <noscript>Seu navegador não suporta aplicações JavaScript!</noscript>
</body>
</html>
