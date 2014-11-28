<div class="container-fluid">
    <h1 class="ls-title-intro">Tabelas individuais</h1>
    <h2 class="ls-title-3 ">
        <a href="<?= base_url('tabelas/newindividual') ?>" class="pull-right ls-btn-default ls-ico-plus">Adicionar tabela</a>
    </h2>

    <hr>

    <?php if (empty($tabelas)) : ?>
    <div class="ls-box ls-lg-space ls-ico-table-alt ls-ico-bg">
        <h1 class="ls-title-1 ls-color-theme">Sem tabelas individuais!</h1>
        <p>Está esperando o que? Cadastre uma nova tabela clicando no botão ai do lado.</p>
    </div>
    <?php else : ?>

    <table class="ls-table ls-table-striped ls-bg-header" id="tabela-de-precos">
        <thead>
            <tr>
                <th>Operadora</th>
                <th>Plano</th>
                <th>Acomodação</th>
                <th width="150">Ação</th>
            </tr>
        </thead>

        <tbody>
            <?php foreach ($tabelas as $t) : ?>
            <tr>
                <td><?= $t->operadora_id; ?></td>
                <td><?= $t->plano_id; ?></td>
                <td><?= $t->acomodacao; ?></td>
                <td>
                    <a href="<?= base_url('tabelas/editindividual/' . $t->id) ?>" class="btn btn-default ls-ico-pencil"></a>
                    <a href="<?= base_url('tabelas/delete/' . $t->id) ?>" class="btn btn-default ls-ico-close"></a>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>

    <?php endif; ?>
</div>
