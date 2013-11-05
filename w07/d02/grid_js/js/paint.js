var Paint = Paint || {};

Paint.loadTiles = function(size, num) {
  for (i=0; i<num; i++) {
    var $tile = $('<div>');
    $tile[0].id = 'tile-'+i;
    $tile.addClass('tile');
    $tile.addClass('white');
    $tile.css('height', size);
    $tile.css('width', size);
    $('body').append($tile);
  }
}
