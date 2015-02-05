<?php if ($this->session->flashdata('msgOK')) : ?>
    <div class="alerta ls-alert-success ls-dismissable">
        <span data-ls-module="dismiss" class="ls-dismiss">&times;</span>
        <?= $this->session->flashdata('msgOK'); ?>
    </div>
<?php endif; ?>

<?php if ($this->session->flashdata('msgERROR')) : ?>
    <div class="alerta ls-alert-success ls-dismissable">
        <span data-ls-module="dismiss" class="ls-dismiss">&times;</span>
        <?= $this->session->flashdata('msgERROR'); ?>
    </div>
<?php endif; ?>
