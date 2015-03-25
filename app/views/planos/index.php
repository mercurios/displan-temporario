<!DOCTYPE html>
<html lang="pt-br" xml:lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Cache-control" etag="<?= base_url('assets/css/fonts/glyphicons-halflings-regular.woff'); ?>" />
    <meta http-equiv="Cache-control" content="private" max-age="30:00 minutes" etag="http://maps.google.com/maps/api/js?sensor=false&language=en" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>Displan Seguros</title>
    <meta name="description" content="Displan Seguros. Planos diferenciados para empresas, profissionais e individuais." />
    <meta name="keywords" content="Displan, Seguros, Preços" />

    <!--TAGS do FACEBOOK-->
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:url" content="http://www.displansaude.com" />
    <meta property="og:title" content="Displan Saúde" />
    <meta property="og:site_name" content="Displan Saúde" />
    <meta property="og:description" content="Displan Seguros. Planos diferenciados para empresas, profissionais e individuais." />
    <meta property="og:type" content="website" />
    <!--FACE THUMBNAIL-->
    <meta property="og:image" content="www.displansaude.com/assets/img/logo.png" />
    <meta property="og:image:type" content="www.displansaude.com/assets/img/logo.png" />
    <meta property="og:image:width" content="140" />
    <meta property="og:image:height" content="85" />
    <!--END FACE TAGS-->

    <!-- Style -->
    <link rel="shortcut icon" href="../../../assets/img/favicon.png" />
    <link type="text/css" rel="stylesheet" href="../../../assets/css/style.css" />
    <link type="text/css" rel="stylesheet" href="../../../assets/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="../../../assets/css/bootstrap-responsive.min.css" />
</head>
<body>
    <div class="container-fluid">

    <!--Faixa TMP<img class="temp" src="<?= base_url('assets/img/temp.png'); ?>" alt="temporario">-->
    
        <div class="row-fluid">
            <div id="topo" class="col-md-10 offset1">
                <a href="<?= base_url(); ?>" title="Displan" id="logo" class="col-md-2">
                    <h1>Displan</h1>
                </a>
                <img src="<?= base_url('assets/img/logo.png'); ?>" id="logo-print" alt="Logo">
                <div id="contato-topo" class="col-md-3">
                    <p class="contato-p1">CENTRAL DE VENDAS</p>
                    <p class="contato-p2">(81) 3222.0506</p>
                    <img src="<?= base_url('assets/img/support.png'); ?>" alt="Suporte" />
                </div>
                <!--nav-->
                <div id="navbar" class="col-md-8 nav nav-bar-nav">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Planos Individuais <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <?php foreach ($operadoras as $o) : ?>
                                        <?php
                                        $cat = unserialize($o->categoria);
                                        if (in_array('individuais', $cat)) :
                                        ?>
                                        <li><a href="<?= base_url('planos-individuais/' . $o->slug) ?>"><?= $o->name ?></a></li>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Planos Empresariais <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <?php foreach ($operadoras as $o) : ?>
                                        <?php
                                        $cat = unserialize($o->categoria);
                                        if (in_array('empresariais', $cat)) :
                                            ?>
                                            <li><a href="<?= base_url('planos-empresariais/' . $o->slug) ?>"><?= $o->name ?></a></li>
                                        <?php endif; ?>
                                    <?php endforeach; ?>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Planos para Profissionais <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <?php foreach ($categorias as $c) : ?>
                                        <li><a href="<?= base_url('planos-especiais/' . $c->slug) ?>"><?= $c->name ?></a></li>
                                    <?php endforeach; ?>
                                </ul>
                            </li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!--end nav-->
            </div><!--end topo-->
        </div><!--end row-->
    </div>

    <?php if(!empty($this->uri->segment(1))) : ?>

    <!-- BREADCRUMBS -->
    <ol class="breadcrumb col-md-7 offset1">
        <li>Você está em:</li>
        <?php foreach ($breadcrumb as $b) : ?>
            <li class="<?= (empty($b['class'])) ? '' : 'active' ?>">
                <a href="<?= base_url($b['url']) ?>"><?= $b['title'] ?></a>
            </li>
        <?php endforeach; ?>        
    </ol>

    <?php endif; ?>


    <!--banner-->
    <div class="outer-banner">
        <img class="static-banner" src="../../../assets/img/banner.png" alt="imagem do bannner 1" />
        <div class="darken"></div>
    </div>
    <!--end banner-->
    <div id="wrapper" class="container-fluid">
        <div class="bloco-plano row-fluid">
            <div class="title blue-title col-md-10 check-pattern">
                <img src="../../../assets/img/icon-home.png" alt="Check" class=" offset1" />
                <h1 class="titulo-grande">Planos Odontológicos</h1>
                <h3 class="titulo-grande">ESCOLHA ABAIXO A OPERADORA DE SUA PREFERÊNCIA.</h3>
            </div>
            <div class="content col-md-10">
                <div class="plano-text col-md-10">
                    <p class="explain">Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família.</p>
                </div>
                <div class="plano-box border-right col-md-3">
                    <h2 class="titulo-medio">Amil Ferusbil</h2>
                    <img class="col-md-12 no-padding" src="../../../assets/img/unilife-grande.jpg" alt="individuais" title="Planos Individuais">
                    <div class="operadoras">
                        <p class="col-md-12">Faça um plano de saúde e garanta já sua saúde e de sua família.</p>
                        <a href="#" class="btn-more">Ver mais</a>
                    </div>
                </div>
                <div class="plano-box border-right col-md-3">
                    <h2 class="titulo-medio">Amil Ferusbil</h2>
                    <img class="col-md-12 no-padding" src="../../../assets/img/sulamerica-grande.jpg" alt="individuais" title="Planos Individuais">
                    <div class="operadoras">
                        <p class="col-md-12">Faça um plano de saúde e garanta já sua saúde e de sua família.</p>
                        <a href="#" class="btn-more">Ver mais</a>
                    </div>
                </div> 
                <div class="plano-box border-right col-md-3">
                    <h2 class="titulo-medio">Amil Ferusbil</h2>
                    <img class="col-md-12 no-padding" src="../../../assets/img/unilife-grande.jpg" alt="individuais" title="Planos Individuais">
                    <div class="operadoras">
                        <p class="col-md-12">Faça um plano de saúde e garanta já sua saúde e de sua família.</p>
                        <a href="#" class="btn-more">Ver mais</a>
                    </div>
                </div>
                <div class="plano-box border-right col-md-3">
                    <h2 class="titulo-medio">Amil Ferusbil</h2>
                    <img class="col-md-12 no-padding" src="../../../assets/img/sulamerica-grande.jpg" alt="individuais" title="Planos Individuais">
                    <div class="operadoras">
                        <p class="col-md-12">Faça um plano de saúde e garanta já sua saúde e de sua família.</p>
                        <a href="#" class="btn-more">Ver mais</a>
                    </div>
                </div>
                <div class="plano-box border-right col-md-3">
                    <h2 class="titulo-medio">Amil Ferusbil</h2>
                    <img class="col-md-12 no-padding" src="../../../assets/img/sulamerica-grande.jpg" alt="individuais" title="Planos Individuais">
                    <div class="operadoras">
                        <p class="col-md-12">Faça um plano de saúde e garanta já sua saúde e de sua família.</p>
                        <a href="#" class="btn-more">Ver mais</a>
                    </div>
                </div>
                <div class="plano-box border-right col-md-3">
                    <h2 class="titulo-medio">Amil Ferusbil</h2>
                    <img class="col-md-12 no-padding" src="../../../assets/img/sulamerica-grande.jpg" alt="individuais" title="Planos Individuais">
                    <div class="operadoras">
                        <p class="col-md-12">Faça um plano de saúde e garanta já sua saúde e de sua família.</p>
                        <a href="#" class="btn-more">Ver mais</a>
                    </div>
                </div>
                <div class="plano-box border-right col-md-3">
                    <h2 class="titulo-medio">Amil Ferusbil</h2>
                    <img class="col-md-12 no-padding" src="../../../assets/img/sulamerica-grande.jpg" alt="individuais" title="Planos Individuais">
                    <div class="operadoras">
                        <p class="col-md-12">Faça um plano de saúde e garanta já sua saúde e de sua família.</p>
                        <a href="#" class="btn-more">Ver mais</a>
                    </div>
                </div>
                <div class="plano-box border-right col-md-3">
                    <h2 class="titulo-medio">Amil Ferusbil</h2>
                    <img class="col-md-12 no-padding" src="../../../assets/img/sulamerica-grande.jpg" alt="individuais" title="Planos Individuais">
                    <div class="operadoras">
                        <p class="col-md-12">Faça um plano de saúde e garanta já sua saúde e de sua família.</p>
                        <a href="#" class="btn-more">Ver mais</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
    <script async type="text/javascript" src="../../../assets/js/gmap3.min.js"></script>
    <script type="text/javascript" src="../../../assets/js/jquery-1.11.1.min.js"></script>
    <script async type="text/javascript" src="../../../assets/js/bootstrap.min.js"></script>
    <script async type="text/javascript" src="../../../assets/js/script.js"></script>
    <noscript>Seu navegador não suporta aplicações JavaScript!</noscript>
</body>
</html>
