
$(document).ready(function() {

    // Use jQuery via $f(...)
	var $f = jQuery.noConflict();

    // Slider
    $f('.carousel').carousel({
        interval: 5000
    });

    // Carregamento assíncrono das imagens
    $f(function() {
        setTimeout(function() {
            $f('div[data-img-src]').each(function() {
 
                var src = $f(this).attr('data-img-src');
 
                $f('<img>')
                    .attr('src', src)
                    .addClass('banner span12')
                    .appendTo(this);
            });
        }, 200);
    });

    $f('.btnAbrir').bind('click', function(){
        if ($f(this).parents(".full").children(".mini").attr('data-estado') == 'fechado'){
            $f(this).parents(".full").children(".mini").addClass('listaAberta');
            $f(this).parents(".full").children(".btnAbrir").addClass('btnFechar')
            $f(this).parents(".full").children(".mini").attr('data-estado','aberto');
        } else {
            $f(this).parents(".full").children(".mini").removeClass('lista listaAberta').addClass('lista mini');

            $f(this).parents(".full").children(".btnAbrir").removeClass('btnFechar');

            $f(this).parents(".full").children(".mini").attr('data-estado', 'fechado');
        }
    })

    // Mapa
    function initialize() {

        var myLatlng = new google.maps.LatLng(-8.060682,-34.894562);

        var mapOptions = {
            zoom: 15,
            center: myLatlng
        }

        var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

        var marker = new google.maps.Marker({
            position: myLatlng,
            map: map,
            title: 'Displan Saúde'
        });

        var infowindow = new google.maps.InfoWindow();
        infowindow.setContent('<b style="color: black;">Displan Saúde</b>');
        google.maps.event.addListener(marker, 'click', function() {
            infowindow.open(map, marker);
        });
    }

    google.maps.event.addDomListener(window, 'load', initialize);
});
