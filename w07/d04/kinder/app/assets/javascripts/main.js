function getKitty() {
  return $.ajax({
    url: '/cats',
    type: 'get'
  });
}

function updateKitty(id, hotOrNot) {
  return $.ajax({
    url: '/cats/' + id,
    type: 'put',
    data: { hot_or_not: hotOrNot }
  });
}

function placeKitty() {
  getKitty().done(function(data) {
    $('#cat-img').attr('src', data.img_url);
    $('#cat-img').attr('data-id', data.id);
  });
}

function voteKitty(hotOrNot) {
  var id = $('#cat-img').attr('data-id');
  updateKitty(id, hotOrNot).done(function() {
    placeKitty();
  });
}

$(function() {

  $('#hot').on('click', function() {
    voteKitty('hot');
  });

  $('#not').on('click', function() {
    voteKitty('not');
  });

  $('.button').on('mouseover', function() {
    $(this).addClass('hover');
  }).on('mouseout', function() {
    $(this).removeClass('hover');
  });

  placeKitty();

});
