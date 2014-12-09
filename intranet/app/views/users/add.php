<div class="container-fluid">
    <h1 class="ls-title-intro">Planos</h1>

    <div class="ls-box col-md-12">
        <form enctype="multipart/form-data" action="<?= base_url('users/save'); ?>" method="post">
            <fieldset class="row">
                <div class="col-md-12">
                    <label class="ls-label">
                        <b class="ls-label-text">Nome *</b>
                        <input type="text" name="name" placeholder="Nome completo" required>
                    </label>
                </div>

                <div class="col-md-12">
                    <label class="ls-label">
                        <b class="ls-label-text">E-mail *</b>
                        <input type="email" name="email" placeholder="E-mail válido" required>
                    </label>
                </div>

                <div class="col-md-12">
                    <label class="ls-label">
                        <b class="ls-label-text">Senha *</b>
                        <input type="password" name="password" placeholder="Uma senha segura..." required>
                    </label>
                </div>

                <div class="col-md-12">
                    <input type="submit" class="btn btn-default" value="Salvar" />
                </div>
            </fieldset>
        </form>
    </div>
</div>
