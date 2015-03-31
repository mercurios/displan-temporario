
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
    <img class="static-banner" src="<?= base_url('assets/img/banner.png') ?>" alt="imagem do bannner 1" />
    <div class="darken"></div>
</div>

<div id="wrapper" class="container-fluid">
    <div class="bloco-plano row-fluid">
        <div class="title blue-title col-md-10 check-pattern">
            <img src="<?= base_url('assets/img/icon-home.png') ?>" alt="Check" class=" offset1" />
            <h1 class="titulo-grande">Planos Individuais</h1>
            <h3 class="titulo-grande">ESCOLHA ABAIXO A OPERADORA DE SUA PREFERÊNCIA.</h3>
        </div>

        <div class="content col-md-10">
            <div class="plano-text col-md-12">
                <p class="explain">Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família. Faça um plano de saúde e garanta já sua saúde e de sua família.</p>
            </div>

            <?php
            foreach ($operadoras as $o) :

                $cat = unserialize($o->categoria);

                if (in_array('individuais', $cat)) :
            ?>

            <div class="plano-box border-right col-md-3">
                <h2 class="titulo-pequeno"><?= $o->name ?></h2>
                <?= $this->images->thumb('operadoras/' . $o->logo, 199, 64, 'individuais', 'col-md-12 no-padding'); ?>

                <div class="operadoras">
                    <a href="<?= base_url('planos-individuais/' . $o->slug) ?>" class="btn-more">Ver preços</a>
                </div>
            </div>

            <?php
                endif;
            endforeach;
            ?>
        </div>
    </div>
</div>