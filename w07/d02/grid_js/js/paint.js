var Paint = Paint || {};

Paint.loadTiles = function(rows, num, size) {
  var $table = $('<table>');
  $('body').append($table);

  var tableString = '';

  for (var r=0; r<rows; r++){
    tableString += '<tr>';

    for (var i=0; i<num; i++) {
      tableString += '<td><div class=\'tile white\' style=\'height:' + size + 'px; width: ' + size + 'px;\'></div></td>';
    }

    tableString += '</tr>';
  }
  $table.html(tableString);
}

Paint.curColor = 'green';
