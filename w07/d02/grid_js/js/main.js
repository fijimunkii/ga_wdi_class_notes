(function() {
  var $header = $('<header>');
  $('body').append($header);

  var colors = ['white','red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet'];
  for (var i=0; i<colors.length; i++) {

    $button = $('<button>');
    $button.html(colors[i]);

    $header.append($button);

    $button.on('click', function(i){
      return function() {
        Paint.curColor = colors[i];
        var classToRemove = $header.attr('class');
        $header.removeClass(classToRemove);
        $header.addClass('painted-' + colors[i]);
      }
    }(i));
  }

  $newColorInput = $('<input>');
  $newColorSubmit = $('<div>');
  $newColorSubmit.addClass('color-submit');
  $newColorSubmit.html('Submit!')

  $header.append($newColorInput);
  $header.append($newColorSubmit);

  $newColorSubmit.on('click', function() {
    var newColor = $newColorInput[0].value,
        style = $('<style>.painted-' +newColor + ', .hover-' + newColor +' { background: ' + newColor + '; }</style>');
    $('html > head').append(style);
    Paint.curColor = newColor;
    var classToRemove = $header.attr('class');
    $header.removeClass(classToRemove);
    $header.addClass('painted-' + newColor);
  });

  Paint.loadTiles(60, 80, 10);

  $('.tile').on('mouseover', function(e) {
    $(this).addClass('hover-' + Paint.curColor);
    if (e.which === 1) {
      $(this).addClass('painted-' + Paint.curColor);
    }
  });

  $('.tile').on('mouseout', function() {
    $(this).removeClass('hover-' + Paint.curColor);
  });

  $('.tile').on('mousedown', function() {
    $(this).addClass('painted-' + Paint.curColor);
  })

})();
