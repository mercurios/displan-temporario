$(document).ready(function() {

    var quantidade = $("#titulo-tabelas td").length;

    if (quantidade >= 3) {
        $("#rmvColuna").fadeIn();
    }

    // Adicionar e remover colunas das tabelas
    $("#addColuna").on('click', function(e) {

        e.preventDefault();

        $("#rmvColuna").fadeIn();

        var titulo      = '<td><input class="col-md-10" type="text" name="titulos[]" placeholder="1 Vida"></td>';
        var idade0018   = '<td><input class="col-md-10" type="text" name="idade0018[]" placeholder="150,00"></td>';
        var idade1923   = '<td><input class="col-md-10" type="text" name="idade1923[]" placeholder="150,00"></td>';
        var idade2428   = '<td><input class="col-md-10" type="text" name="idade2428[]" placeholder="150,00"></td>';
        var idade2933   = '<td><input class="col-md-10" type="text" name="idade2933[]" placeholder="150,00"></td>';
        var idade3438   = '<td><input class="col-md-10" type="text" name="idade3438[]" placeholder="150,00"></td>';
        var idade3943   = '<td><input class="col-md-10" type="text" name="idade3943[]" placeholder="150,00"></td>';
        var idade4448   = '<td><input class="col-md-10" type="text" name="idade4448[]" placeholder="150,00"></td>';
        var idade4953   = '<td><input class="col-md-10" type="text" name="idade4953[]" placeholder="150,00"></td>';
        var idade5458   = '<td><input class="col-md-10" type="text" name="idade5458[]" placeholder="150,00"></td>';
        var idade59     = '<td><input class="col-md-10" type="text" name="idade59[]" placeholder="150,00"></td>';

        $("#titulo-tabelas").append(titulo).children(':last').hide().fadeIn(500);
        $("#valor0018").append(idade0018).children(':last').hide().fadeIn(500);
        $("#valor1923").append(idade1923).children(':last').hide().fadeIn(500);
        $("#valor2428").append(idade2428).children(':last').hide().fadeIn(500);
        $("#valor2933").append(idade2933).children(':last').hide().fadeIn(500);
        $("#valor3438").append(idade3438).children(':last').hide().fadeIn(500);
        $("#valor3943").append(idade3943).children(':last').hide().fadeIn(500);
        $("#valor4448").append(idade4448).children(':last').hide().fadeIn(500);
        $("#valor4953").append(idade4953).children(':last').hide().fadeIn(500);
        $("#valor5458").append(idade5458).children(':last').hide().fadeIn(500);
        $("#valor59").append(idade59).children(':last').hide().fadeIn(500);
    });

    $("#rmvColuna").on('click', function(e) {

        e.preventDefault();

        var quantidade = $("#titulo-tabelas td").length;

        if (quantidade == 3) {
            $("#rmvColuna").fadeOut();
        }

        if (quantidade > 2) {
            $("#titulo-tabelas td:last").fadeOut(500, function(){ this.remove() });
            $("#valor0018 td:last").fadeOut(500, function(){ this.remove() });
            $("#valor1923 td:last").fadeOut(500, function(){ this.remove() });
            $("#valor2428 td:last").fadeOut(500, function(){ this.remove() });
            $("#valor2933 td:last").fadeOut(500, function(){ this.remove() });
            $("#valor3438 td:last").fadeOut(500, function(){ this.remove() });
            $("#valor3943 td:last").fadeOut(500, function(){ this.remove() });
            $("#valor4448 td:last").fadeOut(500, function(){ this.remove() });
            $("#valor4953 td:last").fadeOut(500, function(){ this.remove() });
            $("#valor5458 td:last").fadeOut(500, function(){ this.remove() });
            $("#valor59 td:last").fadeOut(500, function(){ this.remove() });
        }
    });

    // Combo de operadoras e planos
    $("#operadorasCombo").on("change", function() {
        $("#planosCombo").hide();
        $(".comboLoad").fadeIn();

        var operadora = $(this).val();

        if (operadora.length) {
            $.getJSON(url + 'planos/findplanos/' + operadora, function(data){

                var options = '<option value="">-- Selecione um plano --</option>';

                for (var i = 0; i < data.length; i++) {
                    options += '<option value="' + data[i].id + '">' + data[i].name + '</option>';
                }

                $(".comboLoad").hide();
                $("#planosCombo").html(options).fadeIn();

            });
        } else {
            var options = '<option value="">-- Sem planos cadastrados --</option>';
            $(".comboLoad").hide();
            $("#planosCombo").html(options).fadeIn();
        }
    });
});
