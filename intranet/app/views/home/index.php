<div class="container-fluid">
    <h1 class="ls-title-intro">Dashboard</h1>

    <hr>

    <div class="row">
        <div class="col-md-4">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default box-estatisticas">
                        <div class="panel-heading">
                            <h3 class="panel-title">Estatísticas 1</h3>
                        </div>
                        <div class="panel-body">

                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="panel panel-default box-estatisticas">
                        <div class="panel-heading">
                            <h3 class="panel-title">Estatísticas 2</h3>
                        </div>
                        <div class="panel-body">

                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="panel panel-default box-estatisticas">
                        <div class="panel-heading">
                            <h3 class="panel-title">Estatísticas 3</h3>
                        </div>
                        <div class="panel-body">

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-8">
            <div class="panel panel-default box-estatisticas">
                <div class="panel-heading">
                    <h3 class="panel-title">Últimas ações do painel</h3>
                </div>
                <div class="panel-body">
                    <?php if (!empty($logs)) : ?>
                        <ul class="timeline">
                            <?php foreach ($logs as $l) : ?>
                                <li>
                                    <div class="timeline-badge warning">
                                        <i class="fa fa-dashboard"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title"><?= $l->usuario; ?></h4>
                                            <p>
                                                <small class="text-muted">
                                                    <i class="glyphicon glyphicon-time"></i>
                                                    <?= $this->datas->get_timeDifference($l->data, date('Y-m-d H:i:s')); ?> atrás
                                                </small>
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p><?= $l->mensagem; ?></p>
                                        </div>
                                    </div>
                                </li>
                            <?php endforeach; ?>
                        </ul>

                    <?php else : ?>
                        <p>
                            Nenhum log registrado!
                        </p>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
</div>
