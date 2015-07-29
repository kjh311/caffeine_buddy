// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
$( document ).ready(function() {
    console.log( "ready!" );


document.getElementById('get_location').onclick = function() {
  navigator.geolocation.getCurrentPosition(c);
  return false;
}

var c = function(pos)  {
var lat    = pos.coords.latitude,
    long   = pos.coords.longitude,
    coords = lat + ', ' + long;

document.getElementById('google_map').setAttribute('src', 'https://maps.google.com/?q=' + coords +'&z=60&output=embed')
}



  function randompic() {
    var random = Math.random();
    if (random < 0.1){
      $('#funnypic').addClass('funny1');
    }else if (random < 0.2){
      $('#funnypic').addClass('funny2');
    }else if (random < 0.3){
      $('#funnypic').addClass('funny3');
    }else if (random < 0.4){
      $('#funnypic').addClass('funny4');
    }else if (random < 0.5){
      $('#funnypic').addClass('funny5');
    }else if (random < 0.6){
      $('#funnypic').addClass('funny6');
    }else if (random < 0.7){
      $('#funnypic').addClass('funny7');
    }else if (random < 0.8){
      $('#funnypic').addClass('funny8');
    }else if (random < 0.9){
      $('#funnypic').addClass('funny9');
    }else
      $('#funnypic').addClass('funny10');
}
randompic();

});

