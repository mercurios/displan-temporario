<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="pt" xml:lang="pt">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Displan Seguros</title>
    <meta name="description" content="Displan Seguros. Planos diferenciados para empresas, profissionais e individuais." />
    <meta name="keywords" content="Displan, Seguros, Preços" />
    
    <link rel="stylesheet" href="<?= base_url('assets/css/all.css') ?>" />
    <link rel="shortcut icon" href="<?= base_url('assets/img/favicon.ico') ?>" />
</head>
<body>
    <div class="container-fluid">
        <div class="row-fluid">
            <div id="topo" class="span10 offset1">
                <h1 id="logo" class="span2">Displan</h1>
                <div id="contato-topo" class="span3">
                    <p class="contato-p1">CENTRAL DE VENDAS</p>
                    <p class="contato-p2">(81) 3222.0506</p>
                    <img src="<?= base_url('assets/img/support.png') ?>" alt="Support">
                </div>
                <img class="temp" src="<?= base_url('assets/img/temp.png') ?>" alt="temporario">
                <!--nav-->
                <div id="navbar" class="span7">
                    <div class="btn-group">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#" title="Planos Individuais">Planos Individuais
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="menu-drop" href="#">Link1</a></li>
                            <li><a class="menu-drop" href="#">Link2</a></li>
                            <li><a class="menu-drop" href="#">Link3</a></li>
                        </ul>
                    </div>
                    <div class="btn-group">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#" title="Planos Empresariais">Planos Empresariais
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="menu-drop" href="#">Link1</a></li>
                            <li><a class="menu-drop" href="#">Link2</a></li>
                            <li><a class="menu-drop" href="#">Link3</a></li>
                        </ul>
                    </div>
                    <div class="btn-group">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" href="#" title="Planos Especiais">Planos Especiais
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="menu-drop" href="#">Link1</a></li>
                            <li><a class="menu-drop" href="#">Link2</a></li>
                            <li><a class="menu-drop" href="#">Link3</a></li>
                        </ul>
                    </div>
                </div>
                <!--end nav-->
            </div><!--end topo-->
        </div>
    </div><!--carrossel-->
        <div id="myCarousel" class="carousel slide row-fluid">
            <div class="carousel-inner">
                <div class="active item">
                <img class="span12 banner" src="<?= base_url('assets/img/banner.jpg') ?>" alt="imagem do bannner 1" longdesc="imagem do bannner 1" />
            </div>
            <div class="item">
                <img class="span12 banner" src="<?= base_url('assets/img/banner2.jp') ?>g" alt="imagem do banner 2" longdesc="imagem do bannner 2" />
            </div>
            <div class="item">
                <img class="span12 banner" src="<?= base_url('assets/img/banner3.jp') ?>g" alt="imagem do banner 3" longdesc="imagem do bannner 3" />
            </div>
        </div>
    </div>
    <div class="a-carousel span12">
        <ul class="carousel-ul">
            <li title="Clique para o anterior"><a class="carousel-control left" href="#myCarousel" data-slide="prev" title="Anterior">&lsaquo;</a></li>
            <li title="Clique para o próximo"><a class="carousel-control right" href="#myCarousel" data-slide="next" title="Próximo">&rsaquo;</a></li>
        </ul>
    </div>
    <!--end carrossel-->
    <div class="container-fluid">
        <div class="row-fluid">
            <div id="wrapper" class="span10 offset1">
                <div class="title"><h3 class="titulo-grande">Lorem Ipsum</h3></div>
                <div class="content">
                    <div class="border-right span4">
                        <h5>Planos individuais</h5>
                        <img class="span11" src="<?= base_url('assets/img/individuais.png') ?>" alt="individuais" title="Planos Individuais">
                    </div>
                    <div class="border-right span4">
                        <h5>Planos empresriais</h5>
                        <img class="span11" src="<?= base_url('assets/img/empresas.png') ?>" alt="empresas" title="Planos Individuais">
                    </div>
                    <div class="span4">
                        <h5>Planos para profissionais</h5>
                        <img class="span11" src="<?= base_url('assets/img/profissionais.png') ?>" alt="profissionais" title="Planos Individuais">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div id="footer" class="container-fluid">
            <div class="row-fluid">
                <div id="onde-estamos" class="span4">
                    <h4>
                    <i class="icon-map-marker icon-white"></i>ONDE ESTAMOS</h4>
                    <hr />
                    <p>Av. Lins Petit, 159 - Boa Vista, Recife - PE. <br>
                    CEP: 50070-230.</p>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7900.795549812305!2d-34.89384928795777!3d-8.06084580427212!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7ab18c4c93b44a5%3A0x2ea83372b3d473a6!2sDisplan+Distribuidora+de+Planos+de+Sa%C3%BAde!5e0!3m2!1spt-BR!2sbr!4v1414603730687" class="span11" title="Mapa" height="300" style="border:0"></iframe>
                </div>
                <div id="contato" class="span4">
                    <h4><i class="icon-envelope icon-white"></i>CONTATO</h4>
                    <hr />
                    <!--forms-->
                    <div id="formulario">
                        <form class="form-horizontal">
                            <fieldset>
                                <legend>Dados da Mensagem</legend>
                                <div class="control-group">
                                    <div class="controls">
                                        <label for="inputName">Seu Nome</label>
                                        <input class="span12" name="nome" type="text" id="inputName" placeholder="Nome" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <label for="inputEmail">Seu Email</label>
                                        <input class="span12" name="email" type="email" id="inputEmail" placeholder="E-mail" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <label for="inputTelephone">Seu Telefone</label>
                                        <input class="span12" name="tel" type="tel" id="inputTelephone" placeholder="Telefone" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <label for="inputMessage">Sua Mensagem</label>
                                        <textarea class="span12" name="message" rows="5" id="inputMessage" placeholder="Mesage"></textarea>
                                    </div>
                                </div>
                                <input type="submit" class="btn btn-info" value="Enviar"/>
                            </fieldset>
                        </form>
                    </div>
                    <!--end forms-->
                </div>
                <div id="nossohorario" class="span3">
                    <h4><i class="icon-time icon-white"></i>NOSSO HORÁRIO</h4>
                    <hr />
                    <p>Segunda à sexta 8:00 às 18:00h.</p>
                </div>
                <div id="telefone" class="span3">
                    <img class="phone" src="<?= base_url('assets/img/phone.png') ?>" alt="phone" />
                    <h4>TELEFONE</h4>
                    <hr />
                    <p>(81) 3082.3033</p>
                </div>
                <div id="copy" class="span12">
                    <address class="span6">&copy; COPYRIGHT 2014 DISPLAN. TODOS OS DIREITOS RESERVADOS.</address>
                    <div id="by" class="span2">
                        <h6>Site garantido pela:</h6>
                        <img src="<?= base_url('assets/img/mercurios.png') ?>" alt="mercurios" title="Mercurios">
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="<?= base_url('assets/js/jquery-1.11.1.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/bootstrap.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/script.js') ?>"></script>
</body>
</html>
