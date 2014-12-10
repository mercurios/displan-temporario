<div id="wrapper" class="container-fluid">

    <?php foreach ($tabelas as $t) : ?>
    <div class="bloco-plano row-fluid">
        <div class="row-fluid">
            <div class="title col-md-10">
                <?= $this->images->thumb('operadoras/' . $t->logo, 280, 100, '', 'img-title col-md-3'); ?>
                <h1 class="titulo-unimed titulo-grande col-md-3"><?= $t->operadora ?></h1>
            </div>
        </div>
        <div class="row-fluid">
            <div class="content unimed-content col-md-10">
                <div class="subtitle col-md-12">
                    <h3><?= $t->plano ?></h3>
                    <h4>Acomodação <?= $t->acomodacao ?></h4>
                </div>
                <div class="bg-faixa-etaria col-md-12">
                    <div class="hidden col-md-12"><h3>Vire a tela para ter acesso à tabela de preços.</h3></div>
                    <div id="tabelas" class="col-md-9">
                        <div class="tabela col-md-2 t1">
                            <ul class="ul-1">
                                <li></li>
                                <li>00 - 18 <span>anos</span></li>
                                <li>00 - 18 <span>anos</span></li>
                                <li>00 - 18 <span>anos</span></li>
                                <li>00 - 18 <span>anos</span></li>
                                <li>00 - 18 <span>anos</span></li>
                                <li>00 - 18 <span>anos</span></li>
                                <li>00 - 18 <span>anos</span></li>
                                <li>00 - 18 <span>anos</span></li>
                            </ul>
                        </div>
                        <div class="parte-2">

                            <?php
                            $titulos    = unserialize($t->titulos);
                            $idade0018  = unserialize($t->idade0018);
                            $idade1923  = unserialize($t->idade1923);
                            $idade2428  = unserialize($t->idade2428);
                            $idade2933  = unserialize($t->idade2933);
                            $idade3438  = unserialize($t->idade3438);
                            $idade3943  = unserialize($t->idade3943);
                            $idade4448  = unserialize($t->idade4448);
                            $idade4953  = unserialize($t->idade4953);
                            $idade5458  = unserialize($t->idade5458);
                            $idade59    = unserialize($t->idade59);

                            $total = count($titulos);

                            for ($i = 0; $i < $total; $i++) {
                            ?>
                                <div class="tabela col-md-2 t2">
                                    <ul class="lado ul-1">
                                        <li class="li-1">1 vida</li>
                                        <li class="li-2"><span>R$</span> <?= $idade0018[$i] ?></li>
                                        <li class="li-2"><span>R$</span> <?= $idade1923[$i] ?></li>
                                        <li class="li-2"><span>R$</span> <?= $idade2428[$i] ?></li>
                                        <li class="li-2"><span>R$</span> <?= $idade2933[$i] ?></li>
                                        <li class="li-2"><span>R$</span> <?= $idade3438[$i] ?></li>
                                        <li class="li-2"><span>R$</span> <?= $idade3943[$i] ?></li>
                                        <li class="li-2"><span>R$</span> <?= $idade4448[$i] ?></li>
                                        <li class="li-2"><span>R$</span> <?= $idade4953[$i] ?></li>
                                        <li class="li-2"><span>R$</span> <?= $idade5458[$i] ?></li>
                                        <li class="li-2"><span>R$</span> <?= $idade59[$i] ?></li>
                                    </ul>
                                </div>
                            <?php } ?>
                        </div>
                    </div><!--end tabelas-->
                    <div class="aside col-md-3">
                        <div class="bg-cred-info">
                            <h5>Credenciados</h5>
                            <?= $t->credenciados; ?>
                        </div>
                        <div class="bg-cred-info info-2">
                            <h5>Informações adicionadas</h5>
                            <?= $t->info; ?>
                        </div>
                    </div>
                    <div id="tellus" class="col-md-12">
                        <h3>GOSTOU? LIGUE AGORA (81) 3222.0506</h3>
                        <img src="<?= base_url('assets/img/tellus.png'); ?>" alt="Tell us" title="Tell us">
                    </div>
                </div><!--end bg tabelas-->
            </div><!--end content-->
        </div>
    </div>
    <?php endforeach; ?>
</div>