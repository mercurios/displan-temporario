<div class="container-fluid">
    <h1 class="ls-title-intro">Adicionar tabela empresarial</h1>

    <form method="post" action="<?= base_url('tabelas/saveempresarial') ?>">

        <fieldset class="row">
            <div class="col-md-6">
                <label class="ls-label">
                    <b class="ls-label-text">Operadora *</b>
                    <select id="operadorasCombo" name="operadora" class="form-control" required>
                        <option value="">Selecione uma operadora</option>
                        <?php
                        foreach ($operadoras as $o) {
                            echo '<option value="'. $o->id .'">'. $o->name .'</option>';
                        }
                        ?>
                    </select>
                </label>
            </div>

            <div class="col-md-6">
                <label class="ls-label">
                    <b class="ls-label-text">Plano *</b>
                    <p class="comboLoad">Aguarde, carregando...</p>
                    <select id="planosCombo" name="plano" class="form-control" required>
                        <option value="">Selecione um plano</option>
                        <?php
                        foreach ($planos as $p) {
                            echo '<option value="'. $p->id .'">'. $p->name .'</option>';
                        }
                        ?>
                    </select>
                </label>
            </div>

            <div class="col-md-6">
                <label class="ls-label">
                    <b class="ls-label-text">Acomodação *</b>
                    <input type="text" name="acomodacao" placeholder="Apartamento" title="Informe uma acomodação" required>
                </label>
            </div>

            <div class="col-md-3">
                <label class="ls-label">
                    <b class="ls-label-text">Idade mínima</b>
                    <input type="text" name="idade_min" placeholder="1">
                </label>
            </div>

            <div class="col-md-3">
                <label class="ls-label">
                    <b class="ls-label-text">Idate máxima</b>
                    <input type="text" name="idade_max" placeholder="99">
                </label>
            </div>

            <div class="col-md-12">
                <label class="ls-label">
                    <b class="ls-label-text">Categoria *</b>
                    <select name="categoria" class="form-control" required>
                        <option value="">Selecione uma categoria</option>
                        <option value="pme">PME</option>
                        <option value="pmg">PMG</option>
                    </select>
                </label>
            </div>
        </fieldset>

        <h2 class="ls-title-3">
            <button id="addColuna" class="ls-btn-default ls-ico-plus">Adicionar coluna</button>
            <button id="rmvColuna" class="ls-btn-danger ls-ico-plus">Remover coluna</button>
        </h2>

        <hr>

        <table class="ls-table ls-table-striped ls-bg-header" id="tabela-de-precos">
            <tr id="titulo-tabelas">
                <td width="100">Idades</td>
                <td><input class="col-md-10" type="text" name="titulos[]" placeholder="1 Vida"></td>
            </tr>
            <tr id="valor0018">
                <td width="100">00-18</td>
                <td><input class="col-md-10" type="text" name="idade0018[]" placeholder="150,00"></td>
            </tr>
            <tr id="valor1923">
                <td width="100">19-23</td>
                <td><input class="col-md-10" type="text" name="idade1923[]" placeholder="150,00"></td>
            </tr>
            <tr id="valor2428">
                <td width="100">24-28</td>
                <td><input class="col-md-10" type="text" name="idade2428[]" placeholder="150,00"></td>
            </tr>
            <tr id="valor2933">
                <td width="100">29-33</td>
                <td><input class="col-md-10" type="text" name="idade2933[]" placeholder="150,00"></td>
            </tr>
            <tr id="valor3438">
                <td width="100">34-38</td>
                <td><input class="col-md-10" type="text" name="idade3438[]" placeholder="150,00"></td>
            </tr>
            <tr id="valor3943">
                <td width="100">39-43</td>
                <td><input class="col-md-10" type="text" name="idade3943[]" placeholder="150,00"></td>
            </tr>
            <tr id="valor4448">
                <td width="100">44-48</td>
                <td><input class="col-md-10" type="text" name="idade4448[]" placeholder="150,00"></td>
            </tr>
            <tr id="valor4953">
                <td width="100">49-53</td>
                <td><input class="col-md-10" type="text" name="idade4953[]" placeholder="150,00"></td>
            </tr>
            <tr id="valor5458">
                <td width="100">54-58</td>
                <td><input class="col-md-10" type="text" name="idade5458[]" placeholder="150,00"></td>
            </tr>
            <tr id="valor59">
                <td width="100">59 ou +</td>
                <td><input class="col-md-10" type="text" name="idade59[]" placeholder="150,00"></td>
            </tr>
        </table>

        <hr>

        <input type="submit" class="btn btn-success pull-right" value="Salvar" >
    </form>
</div>
