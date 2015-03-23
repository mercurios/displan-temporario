$(document).ready(function() {
    // Slider
    $('.carousel').carousel({
		interval: 5000
    })
	var $f = jQuery.noConflict();

     // Use jQuery via $f(...)
     $f(document).ready(function(){
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
	});

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
