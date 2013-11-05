(function() {

  var $header = $('<header>'),
      $button = $('<button>');
  $('body').append($header);
  $header.append($button);

  $button.on('click', function(){
    var colors = ['white','red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet'];
    var curIndex = colors.indexOf($('body')[0].className);

    if (curIndex === colors.length-1) {
      $('body').removeClass(colors[curIndex]);
      $('body').addClass(colors[0]);
    } else {
      $('body').removeClass(colors[curIndex]);
      $('body').addClass(colors[curIndex+1]);
    }

  });

  Paint.loadTiles(100, 200);

  $('.tile').on('mouseover', function() {
    $(this).addClass('hover-green');
  });

  $('.tile').on('mouseout', function() {
    $(this).removeClass('hover-green');
  });

  $('.tile').on('click', function() {
    $(this).addClass('painted-green');
  })

})();
