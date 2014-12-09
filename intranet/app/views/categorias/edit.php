<div class="container-fluid">
    <h1 class="ls-title-intro">Categorias</h1>

    <div class="ls-box col-md-12">
        <form enctype="multipart/form-data" action="<?= base_url('categorias/update/' . $resultado[0]->id); ?>" method="post">
            <fieldset class="row">
                <div class="col-md-12">
                    <label class="ls-label">
                        <b class="ls-label-text">Nome *</b>
                        <input type="text" name="name" placeholder="Nome da categoria" title="O nome da categoria é obrigatório" value="<?= $resultado[0]->name ?>" required>
                    </label>
                </div>

                <div class="col-md-12">
                    <input type="submit" class="btn btn-default" value="Salvar" />
                </div>
            </fieldset>
        </form>
    </div>
</div>
