<div class="container-fluid">
    <h1 class="ls-title-intro">Editar tabela especial</h1>

    <h2 class="ls-title-3">
        <button id="addColuna" class="ls-btn-default ls-ico-plus">Adicionar coluna</button>
        <button id="rmvColuna" class="ls-btn-danger ls-ico-plus">Remover coluna</button>
    </h2>

    <hr>

    <?php foreach ($tabelas as $t) :

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
    ?>
    <form method="post" action="<?= base_url('tabelas/updateespecial/' . $t->id) ?>">

        <fieldset class="row">
            <div class="col-md-6">
                <label class="ls-label">
                    <b class="ls-label-text">Operadora *</b>
                    <select id="operadorasCombo" name="operadora" class="form-control" required>
                        <option value="">-- Selecione uma operadora --</option>
                        <?php foreach ($operadoras as $o) : ?>
                            <option value="<?= $o->id ?>" <?= ($o->id == $t->operadora_id) ? 'selected' : '' ?>><?= $o->name ?></option>
                        <?php endforeach; ?>
                    </select>
                </label>
            </div>

            <div class="col-md-6">
                <label class="ls-label">
                    <b class="ls-label-text">Plano *</b>
                    <p class="comboLoad">Aguarde, carregando...</p>
                    <select id="planosCombo" name="plano" class="form-control" required>
                        <option value="">-- Selecione um plano --</option>
                        <?php foreach ($planos as $p) : ?>
                            <option value="<?= $p->id ?>" <?= ($p->id == $t->plano_id) ? 'selected' : '' ?>><?= $p->name ?></option>
                        <?php endforeach; ?>
                    </select>
                </label>
            </div>

            <div class="col-md-12">
                <label class="ls-label">
                    <b class="ls-label-text">Acomodação *</b>
                    <input type="text" name="acomodacao" placeholder="Acomodação" title="Informe uma acomodação" value="<?= $t->acomodacao ?>" required>
                </label>
            </div>

            <div class="col-md-12">
                <?php $categorias = unserialize($t->categorias); ?>
                <b class="ls-label-text">Categorias</b>
                <p></p>
                <label class="checkbox-inline">
                    <input type="checkbox" name="categorias[]" <?= (in_array('advogados', $categorias)) ? 'checked' : '' ?> value="advogados"> Advogados
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" name="categorias[]" <?= (in_array('arquitetos', $categorias)) ? 'checked' : '' ?> value="arquitetos"> Arquitetos
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" name="categorias[]" <?= (in_array('fpublico', $categorias)) ? 'checked' : '' ?> value="fpublico"> Funcionários público
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" name="categorias[]" <?= (in_array('medicos', $categorias)) ? 'checked' : '' ?> value="medicos"> Médicos
                </label>
                <label class="checkbox-inline">
                    <input type="checkbox" name="categorias[]" <?= (in_array('fisioterapeutas', $categorias)) ? 'checked' : '' ?> value="fisioterapeutas"> Fisioterapeutas
                </label>
            </div>
        </fieldset>

        <table class="ls-table ls-table-striped ls-bg-header" id="tabela-de-precos">
            <tr id="titulo-tabelas">
                <td width="100">Idades</td>
                <?php foreach ($titulos as $ti) : ?>
                    <td><input class="col-md-10" type="text" name="titulos[]" placeholder="1 Vida" value="<?= $ti ?>"></td>
                <?php endforeach; ?>
            </tr>
            <tr id="valor0018">
                <td width="100">00-18</td>
                <?php foreach ($idade0018 as $i) : ?>
                    <td><input class="col-md-10" type="text" name="idade0018[]" placeholder="150,00" value="<?= $i ?>"></td>
                <?php endforeach; ?>
            </tr>
            <tr id="valor1923">
                <td width="100">19-23</td>
                <?php foreach ($idade1923 as $i) : ?>
                    <td><input class="col-md-10" type="text" name="idade1923[]" placeholder="150,00" value="<?= $i ?>"></td>
                <?php endforeach; ?>
            </tr>
            <tr id="valor2428">
                <td width="100">24-28</td>
                <?php foreach ($idade2428 as $i) : ?>
                    <td><input class="col-md-10" type="text" name="idade2428[]" placeholder="150,00" value="<?= $i ?>"></td>
                <?php endforeach; ?>
            </tr>
            <tr id="valor2933">
                <td width="100">29-33</td>
                <?php foreach ($idade2933 as $i) : ?>
                    <td><input class="col-md-10" type="text" name="idade2933[]" placeholder="150,00" value="<?= $i ?>"></td>
                <?php endforeach; ?>
            </tr>
            <tr id="valor3438">
                <td width="100">34-38</td>
                <?php foreach ($idade2428 as $i) : ?>
                    <td><input class="col-md-10" type="text" name="idade3438[]" placeholder="150,00" value="<?= $i ?>"></td>
                <?php endforeach; ?>
            </tr>
            <tr id="valor3943">
                <td width="100">39-43</td>
                <?php foreach ($idade3943 as $i) : ?>
                    <td><input class="col-md-10" type="text" name="idade3943[]" placeholder="150,00" value="<?= $i ?>"></td>
                <?php endforeach; ?>
            </tr>
            <tr id="valor4448">
                <td width="100">44-48</td>
                <?php foreach ($idade4448 as $i) : ?>
                    <td><input class="col-md-10" type="text" name="idade4448[]" placeholder="150,00" value="<?= $i ?>"></td>
                <?php endforeach; ?>
            </tr>
            <tr id="valor4953">
                <td width="100">49-53</td>
                <?php foreach ($idade4953 as $i) : ?>
                    <td><input class="col-md-10" type="text" name="idade4953[]" placeholder="150,00" value="<?= $i ?>"></td>
                <?php endforeach; ?>
            </tr>
            <tr id="valor5458">
                <td width="100">54-58</td>
                <?php foreach ($idade5458 as $i) : ?>
                    <td><input class="col-md-10" type="text" name="idade5458[]" placeholder="150,00" value="<?= $i ?>"></td>
                <?php endforeach; ?>
            </tr>
            <tr id="valor59">
                <td width="100">59 ou +</td>
                <?php foreach ($idade59 as $i) : ?>
                    <td><input class="col-md-10" type="text" name="idade59[]" placeholder="150,00" value="<?= $i ?>"></td>
                <?php endforeach; ?>
            </tr>
        </table>

        <hr>

        <input type="submit" class="btn btn-success pull-right" value="Salvar" >
        <?php endforeach; ?>
    </form>
</div>
