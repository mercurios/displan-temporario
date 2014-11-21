<div class="container-fluid">
    <h1 class="ls-title-intro">Operadoras</h1>

    <div class="ls-box col-md-12">
        <form enctype="multipart/form-data" action="<?= base_url('operadoras/save'); ?>" method="post">
            <fieldset class="row">
                <div class="col-md-6">
                    <label class="ls-label">
                        <b class="ls-label-text">Logo</b>
                        <input type="file" name="imagem" title="A logo da operadora é obrigatório" required />
                    </label>
                </div>

                <div class="col-md-12">
                    <label class="ls-label">
                        <b class="ls-label-text">Nome *</b>
                        <input type="text" name="name" placeholder="Nome da operadora" title="O nome da operadora é obrigatório" required>
                    </label>
                </div>

                <div class="col-md-12">
                    <input type="submit" class="btn btn-default" value="Salvar" />
                </div>
            </fieldset>
        </form>
    </div>
</div>
