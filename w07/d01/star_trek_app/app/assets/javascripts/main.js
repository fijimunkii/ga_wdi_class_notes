(function addTheVulcans(){
  var vulcans = ["Sarek", "Skon", "Solkar", "Sybok"];
  for (i in vulcans) {

    var pTag = document.createElement('p');
    pTag.textContent = vulcans[i];
    $('#vulcan-dudes').appendChild(pTag);
    pTag.addEventListener('click', function() {

      var form = new FormData();
      form.append('refugee[name]', this.textContent);
      var xhr = new XMLHttpRequest();
      xhr.open('post', '/refugees', false);
      xhr.send(form);
      $('#vulcan-dudes').removeChild(this);
    })
  }
})();

$('#enterprise').addEventListener('mouseover', function() {
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function() {
    if (this.readyState === 4) {

      var crewMembers = JSON.parse(this.response);
      var ul = document.createElement('ul');
      $('#crew').appendChild(ul);

      for (i in crewMembers) {
        if (crewMembers[i].on_ship) {
          var li = document.createElement('li');
          li.textContent = crewMembers[i].name;
          ul.appendChild(li);
        }
      }

    }
  }
  xhr.open('get', '/crew_members', false);
  xhr.send();

  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function() {
    if (this.readyState === 4) {
      var refugees = JSON.parse(this.response);
      var ul = document.createElement('ul');
      $('#refugees').appendChild(ul);

      for (i in refugees) {
        var li = document.createElement('li');
        li.textContent = refugees[i].name;
        ul.appendChild(li);
      }
    }
  }
  xhr.open('get', '/refugees', false);
  xhr.send();
})

$('#enterprise').addEventListener('mouseout', function() {
  $('#crew').textContent = '';
  $('#refugees').textContent = '';
});

$('#vulcan').addEventListener('dblclick', function() {
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function() {
    if (this.readyState === 4) {
      var crewMembers = JSON.parse(this.response);

      for (i in crewMembers) {
        if (crewMembers[i].on_ship && crewMembers[i].name !== 'Scotty') {
          var form = new FormData();
          form.append('crew_member[id]', crewMembers[i].id)
          form.append('crew_member[name]', crewMembers[i].name);
          form.append('crew_member[on_ship]', false);

          var xhr = new XMLHttpRequest();
          xhr.open('put', '/crew_members/' + crewMembers[i].id, false);
          xhr.send(form);

          var li = document.createElement('li');
          li.textContent = crewMembers[i].name;
          li.id = crewMembers[i].id;

          $('#vulcan-crew').appendChild(li);
          li.addEventListener('click', function() {
            var form = new FormData();
            form.append('crew_member[id]', this.id);
            form.append('crew_member[name]', this.textContent);
            form.append('crew_member[on_ship]', true);

            var xhr = new XMLHttpRequest();
            xhr.open('put', '/crew_members/' + this.id);
            xhr.send(form);

            $('#vulcan-crew').removeChild(this);
          });

        }
      }

    }
  }
  xhr.open('get', '/crew_members', false);
  xhr.send();
});
