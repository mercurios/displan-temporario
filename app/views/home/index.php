    <div id="wrapper" class="container-fluid">
        <div class="bloco row-fluid">
                <div class="title col-md-10">
                    <h1 class="titulo-grande">Escolha aqui seu plano de saúde:</h1>
                </div>
                <div class="content col-md-10">
                    <div class="border-right inside col-md-4">
                        <h5 class="titulo-medio">Planos individuais</h5>
                        <img class="col-md-11 no-padding" src="<?= base_url('assets/img/individuais.jpg'); ?>" alt="individuais" title="Planos Individuais">
                        <div class="operadoras">
                            <ul class="col-md-12">
                                <?php
                                foreach ($operadoras as $o) :
                                    $cat = unserialize($o->categoria);
                                    if (in_array('individuais', $cat)) :
                                ?>
                                    <li>
                                        <a href="<?= base_url('planos-individuais/' . $o->slug) ?>">
                                            <?= $this->images->thumb('operadoras/' . $o->logo, 130, 50, '', 'operadora-img'); ?>
                                            <h5><?= $o->name ?></h5>
                                        </a>
                                    </li>
                                <?php endif; endforeach; ?>
                            </ul>
                        </div>
                    </div>
                    <div class="border-right inside col-md-4">
                        <h5 class="titulo-medio">Planos empresriais</h5>
                        <img class="col-md-11 no-padding" src="<?= base_url('assets/img/empresas.png'); ?>" alt="empresas" title="Planos Individuais">
                        <div class="operadoras">
                            <ul class="col-md-12">
                                <?php
                                foreach ($operadoras as $o) :
                                    $cat = unserialize($o->categoria);
                                    if (in_array('empresariais', $cat)) :
                                ?>
                                    <li>
                                        <a href="<?= base_url('planos-empresariais/' . $o->slug) ?>">
                                            <?= $this->images->thumb('operadoras/' . $o->logo, 130, 50, '', 'operadora-img'); ?>
                                            <h5><?= $o->name ?></h5>
                                        </a>
                                    </li>
                                <?php endif; endforeach; ?>
                            </ul>
                        </div>
                    </div>
                    <div class="inside col-md-4">
                        <h5 class="titulo-medio">Planos para profissionais</h5>
                        <img class="col-md-11 no-padding" src="<?= base_url('assets/img/profissionais.png'); ?>" alt="profissionais" title="Planos Individuais">
                        <div class="operadoras">
                            <ul class="col-md-12">
                                <?php foreach ($categorias as $c) : ?>
                                    <li>
                                        <a href="<?= base_url('planos-especiais/' . $c->slug) ?>">
                                            <h5><?= $c->name ?></h5>
                                        </a>
                                    </li>
                                <?php endforeach; ?>
                            </ul>
                        </div>
                    </div>
                </div>
        </div>
    </div>