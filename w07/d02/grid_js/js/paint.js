var Paint = Paint || {};

Paint.loadTiles = function(rows, num, size) {
  var $table = $('<table>');
  $('body').append($table);

  for (var r=0; r<rows; r++){
    var $tr = $('<tr>');
    $table.append($tr);

    for (var i=0; i<num; i++) {
      var $td = $('<td>');
          $tile = $('<div>');
      $tile[0].id = 'tile-'+i;
      $tile.addClass('tile');
      $tile.addClass('white');
      $tile.css('height', size);
      $tile.css('width', size);

      $td.append($tile);
      $tr.append($td)
    }
  }
}
