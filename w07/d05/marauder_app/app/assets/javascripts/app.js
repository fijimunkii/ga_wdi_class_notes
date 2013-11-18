$(function() {

  var App = App || {};

  App.createUser = function() {
    var name = $('#name').val();
    var email = $('#email').val();

    return $.ajax({
      url: '/users',
      type: 'post',
      data: { user: { name: name, email: email} }
    });
  }

  App.makeMap = function() {
    var mapOptions = {
      center: new google.maps.LatLng(-34.397, 150.644),
      zoom: 8,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  }

  App.makeMap();


  $('#signup-form').on('submit', function(e) {
    e.preventDefault();

    App.createUser().done(function(data) {
      $('#notice').html('Created ' + data.name)
      .fadeIn().fadeOut(2000);

      $('#name').val('');
      $('#email').val('');
    });
  });

  $('#drop-pin').on('click', function(e) {
    e.preventDefault();

    var myLatlng = new google.maps.LatLng(-25.363882,131.044922);

    var marker = new google.maps.Marker({
        position: myLatlng,
        title:"Hello World!"
    });

    marker.setMap(map);

    var current_bounds = map.getBounds();
    var marker_pos = marker.getPosition();

    if( !current_bounds.contains( marker_pos ) ){

      var new_bounds = current_bounds.extend( marker_pos );
      map.fitBounds( new_bounds );
    }

  });



});
