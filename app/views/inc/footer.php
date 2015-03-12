    <footer>
        <div id="footer" class="container-fluid">
            <div class="row-fluid">
                <div id="onde-estamos" class="col-md-4 offset1">
                    <h4 class="borda-h4">
                        <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> ONDE ESTAMOS
                    </h4>
                    <p>Av. Lins Petit, 159 - Boa Vista, Recife - PE. <br> CEP: 50070-230.
                    </p>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7900.795549812305!2d-34.89384928795777!3d-8.06084580427212!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7ab18c4c93b44a5%3A0x2ea83372b3d473a6!2sDisplan+Distribuidora+de+Planos+de+Sa%C3%BAde!5e0!3m2!1spt-BR!2sbr!4v1414603730687" class="span11" title="Mapa" height="300" style="border:0"></iframe>
                </div>

                <div id="contato" class="col-md-3">
                    <h4 class="borda-h4"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span> CONTATO</h4>

                    <!--forms-->
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
                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">
                                  Enviar
                                </button>

                                <!--Modals Sucesso e Falha-->

                                
                                <!-- Modal de Sucesso-->
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                  <div class="modal-dialog">
                                    <div class="modal-content">
                                      <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span></button>
                                        <h4 class="modal-title modal-success">Sua mensagem foi enviada com sucesso!</h4>
                                      </div>
                                    </div>
                                  </div>
                                </div>

                                <!-- Modal de Falha-->
                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                  <div class="modal-dialog">
                                    <div class="modal-content">
                                      <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Fechar</span></button>
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
                    <h4 class="borda-h4"><span class="glyphicon glyphicon-time" aria-hidden="true"></span> NOSSO HORÁRIO</h4>
                    <p>Segunda à sexta 8:00 às 18:00h.</p>
                </div>

                <div id="telefone" class="col-md-3">
                    <h4 class="borda-h4"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> TELEFONE</h4>
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
    <script type="text/javascript" src="<?= base_url('assets/js/jquery-1.11.1.min.js'); ?>"></script>
    <noscript>Seu navegador não suporta aplicações JavaScript!</noscript>
    <script type="text/javascript" src="<?= base_url('assets/js/bootstrap.min.js'); ?>"></script>
    <noscript>Seu navegador não suporta aplicações JavaScript!</noscript>
    <script type="text/javascript" src="<?= base_url('assets/js/script.js'); ?>"></script>
    <noscript>Seu navegador não suporta aplicações JavaScript!</noscript>
</body>
</html>
