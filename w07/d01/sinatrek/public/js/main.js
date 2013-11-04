function $(query) {
  var prefix = query[0],
      name = query.slice(1,query.length);
  if (prefix === '.') {
    return document.getElementsByClassName(name);
  } else if (prefix === '#') {
    return document.getElementById(name);
  } else {
    return document.getElementsByTagName(query);
  }
}

function enterpriseMouseOver() {
  var xhr = new XMLHttpRequest();
  var url = '/crew';
  // xhr.onprogress = function(e) {
  //   if (e.lengthComputable) {
  //     console.log((e.loaded/e.totalSize * 100) + " % loaded...");
  //   }
  // }
  xhr.onreadystatechange = function() {
    if (this.readyState === 4) {
      var jsonCrew = JSON.parse(this.response);
      $('#enterprise').textContent = jsonCrew.length;
    }
  };
  xhr.open('GET', url, true);
  xhr.send(null);
  $('#enterprise').removeEventListener('mouseover', enterpriseMouseOver);
}
$('#enterprise').addEventListener('mouseover', enterpriseMouseOver);

function enterpriseSingleClick() {
  // list the crew members names in an ordered list
  var xhr = new XMLHttpRequest(),
      url = '/crew';

  xhr.onreadystatechange = function() {

    if (this.readyState === 4) {
      var jsonCrew = JSON.parse(this.response),
          ol = document.createElement('ol');
      ol.id = 'the-crew';

      $('#enterprise').textContent = '';
      $('#enterprise').appendChild(ol);

      for (var i=0; i < jsonCrew.length; i++) {
        var li = document.createElement('li');
        li.textContent = jsonCrew[i].name;
        var createAlertingFunction = function(i){
          return function(e) {
            e.preventDefault(e);
            alert(jsonCrew[i].rank);
          };
        }
        var alertingFunction = createAlertingFunction(i);
        li.addEventListener('dblclick', alertingFunction);
        ol.appendChild(li);
      }

    } // readystate === 4

  } // onreadystatechange

  xhr.open('GET', url, true);
  xhr.send(null);

  $('#enterprise').removeEventListener('click', enterpriseSingleClick);
};

$('#enterprise').addEventListener('click', enterpriseSingleClick);

// event listener for each crew members
// on doubleclick alert the rank

function mutantFormPost() {
  var xhr = new XMLHttpRequest();
  xhr.open('post', '/mutants', false);

  var form = new FormData();
  form.append('mutant[name]', 'harrison');
  form.append('mutant[alias]', 'harry');
  xhr.send(form);
}
