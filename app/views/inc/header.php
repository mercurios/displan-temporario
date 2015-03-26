<!DOCTYPE html>
<html lang="pt-br" xml:lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Cache-control" content="max-age=2592000, public" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title><?= $metaTags['title'] ?></title>
    <meta name="description" content="<?= $metaTags['description'] ?>" />
    <meta name="keywords" content="<?= $metaTags['keywords'] ?>" />

    <!--TAGS do FACEBOOK-->
    <meta property="og:locale" content="pt_BR" />
    <meta property="og:url" content="http://www.displansaude.com" />
    <meta property="og:title" content="<?= $metaTags['title'] ?>" />
    <meta property="og:site_name" content="Displan Saúde" />
    <meta property="og:description" content="<?= $metaTags['description'] ?>" />
    <meta property="og:type" content="website" />
    <!--FACE THUMBNAIL-->
    <meta property="og:image" content="www.displansaude.com/assets/img/logo.png" />
    <meta property="og:image:type" content="www.displansaude.com/assets/img/logo.png" />
    <meta property="og:image:width" content="140" />
    <meta property="og:image:height" content="85" />
    <!--END FACE TAGS-->

    <!-- Style -->
    <link rel="shortcut icon" type="image/x-icon" href="<?= base_url('assets/img/favicon.png'); ?>" />
    <link type="text/css" rel="stylesheet" href="<?= base_url('assets/css/style.css'); ?>" />
    <link type="text/css" rel="stylesheet" href="<?= base_url('assets/css/bootstrap.min.css'); ?>" />
    <link type="text/css" rel="stylesheet" href="<?= base_url('assets/css/bootstrap-responsive.min.css'); ?>" />
</head>
<body>
    <div class="container-fluid">

    <!--Faixa TMP<img class="temp" src="<?= base_url('assets/img/temp.png'); ?>" alt="temporario">-->

        <div class="row-fluid">
            <div id="topo" class="col-md-10 offset1">
                <a href="<?= base_url(); ?>" title="Displan" id="logo" class="col-md-2">
                    <img src="<?= base_url('assets/img/logo.png'); ?>" alt="Displan Logo">
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

