<div class="container-fluid">
    <h1 class="ls-title-intro">Planos</h1>

    <div class="ls-box col-md-12">
        <form enctype="multipart/form-data" action="<?= base_url('planos/update/' . $resultado[0]->id); ?>" method="post">
            <fieldset class="row">
                <div class="col-md-6">
                    <label class="ls-label">
                        <b class="ls-label-text">Nome *</b>
                        <input type="text" name="name" placeholder="Nome do plano" value="<?= $resultado[0]->name ?>" required>
                    </label>
                </div>

                <div class="col-md-6">
                    <label class="ls-label">
                        <b class="ls-label-text">Operadora *</b>
                        <select name="operadora" class="form-control" required>
                            <option value="">Selecione uma operadora</option>
                            <?php foreach ($operadoras as $o) : ?>
                                <option value="<?= $o->id ?>" <?= ($o->id == $resultado[0]->operadora_id) ? 'selected' : '' ?>><?= $o->name ?></option>';
                            <?php endforeach; ?>
                        </select>
                    </label>
                </div>

                <div class="col-md-6">
                    <label class="ls-label">
                        <b class="ls-label-text">Credenciados</b>
                        <textarea name="credenciados"><?= $resultado[0]->credenciados ?></textarea>
                    </label>
                </div>

                <div class="col-md-6">
                    <label class="ls-label">
                        <b class="ls-label-text">Informações adicionais</b>
                        <textarea name="info"><?= $resultado[0]->info ?></textarea>
                    </label>
                </div>

                <div class="col-md-12">
                    <input type="submit" class="btn btn-default" value="Salvar" />
                </div>
            </fieldset>
        </form>
    </div>
</div>
