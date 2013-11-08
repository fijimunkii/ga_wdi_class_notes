$(function() {

  var App = App || {};

  App.createUser = function() {
    var name = $('#name').val();
    var email = $('#email').val();

    return $.ajax({
      url: '/users',
      type: 'post',
      data: { name: name, email: email}
    });
  }


  $('#signup-form').on('submit', function() {
    App.createUser().done(function(data) {
      $('#notice').html('Created ' + data.name)
      .fadeIn().fadeOut();
    });
  });



});
