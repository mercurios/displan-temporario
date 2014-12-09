<div class="container-fluid">
    <h1 class="ls-title-intro">Categorias</h1>
    <h2 class="ls-title-3 ">
        <a href="<?= base_url('categorias/add') ?>" class="pull-right ls-btn-default ls-ico-plus">Adicionar categoria</a>
    </h2>

    <hr>
    <table class="ls-table ls-table-striped ls-bg-header" id="tabela-de-precos">
        <thead>
            <tr>
                <th>Nome</th>
                <th width="150">Ação</th>
            </tr>
        </thead>

        <tbody>
            <?php foreach ($resultado as $res) : ?>
                <tr>
                    <td><?= $res->name ?></td>
                    <td>
                        <a href="<?= base_url('categorias/edit/' . $res->id) ?>" class="btn btn-default ls-ico-pencil"></a>
                        <a href="<?= base_url('categorias/delete/' . $res->id) ?>" class="btn btn-default ls-ico-close"></a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
