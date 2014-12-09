<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="pt" xml:lang="pt">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Displan Seguros</title>
    <meta name="description" content="Displan Seguros. Planos diferenciados para empresas, profissionais e individuais." />
    <meta name="keywords" content="Displan, Seguros, Preços" />

    <!-- Style -->
    <link rel="shortcut icon" href="<?= base_url('assets/img/favicon.ico'); ?>" />
    <link rel="stylesheet" href="<?= base_url('assets/css/all.css'); ?>" />
</head>
<body>
    <div class="container-fluid">
        <img class="temp" src="<?= base_url('assets/img/temp.png'); ?>" alt="temporario">
        <div class="row-fluid">
            <div id="topo" class="col-md-10 offset1">
                <a href="<?= base_url(); ?>" title="Displan" id="logo" class="col-md-2">
                    <h1>Displan</h1>
                </a>

                <div id="contato-topo" class="col-md-3">
                    <p class="contato-p1">CENTRAL DE VENDAS</p>
                    <p class="contato-p2">(81) 3222.0506</p>
                    <img src="<?= base_url('assets/img/support.png'); ?>" alt="Support">
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
                                        <li><a href="<?= base_url('planos-individuais/' . $o->slug) ?>"><?= $o->name ?></a></li>
                                    <?php endforeach; ?>
                                    <!-- <li class="divider"></li> -->
                                    <!-- <li><a href="#">Link Separado</a></li> -->
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Planos Empresariais <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <?php foreach ($operadoras as $o) : ?>
                                        <li><a href="<?= base_url('planos-empresariais/' . $o->slug) ?>"><?= $o->name ?></a></li>
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

    <!--carrossel-->
    <div id="myCarousel" class="carousel slide row-fluid">
        <div class="carousel-inner">
            <div class="active item">
                <img class="span12 banner" src="<?= base_url('assets/img/banner.jpg'); ?>" alt="imagem do bannner 1" />
            </div>
            <div class="item">
                <img class="span12 banner" src="<?= base_url('assets/img/banner2.jpg'); ?>" alt="imagem do banner 2" />
            </div>
            <div class="item">
                <img class="span12 banner" src="<?= base_url('assets/img/banner3.jpg'); ?>" alt="imagem do banner 3" />
            </div>
        </div>
    </div>
    <div class="a-carousel col-md-12">
        <ul class="carousel-ul">
            <li title="Clique para o anterior"><a class="carousel-control left" href="#myCarousel" data-slide="prev" title="Anterior">&lsaquo;</a></li>
            <li title="Clique para o próximo"><a class="carousel-control right" href="#myCarousel" data-slide="next" title="Próximo">&rsaquo;</a></li>
        </ul>
    </div>
    <!--end carrossel-->
