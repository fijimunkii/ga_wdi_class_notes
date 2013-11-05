var WDIBelt = WDIBelt || {};

WDIBelt.version = 0.2;

WDIBelt.each = function(array, func) {
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    func.call(element, index);
  }
}

WDIBelt.map = function(array, func) {
  var results = [];
  for (var index = 0; index < array.length; index++) {
    var element = array[index];
    results.push(func(element));
  }
  return results;
}

WDIBelt.select = function(array, truthTest) {
  var results = [];
  this.each(array, function(){
    if (truthTest(this) === true) {
      results.push(this);
    }
  });
  return results;
}

WDIBelt.random = function(array) {
  var randIndex = Math.floor(array.length * Math.random())
  return array[randIndex];
}

WDIBelt.contains = function(array, item) {
  var result = false;
  this.each(array, function(){
    if (this.toString() === item) {
      result = true;
    }
  });
  return result;
}

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

function hasClass(elem, klass) {
  var classIndex = elem.className.indexOf(klass),
      nextIndex = elem.className[classIndex+klass.length];
  if (classIndex === -1) {
    return false;
  } else if (nextIndex !== undefined && nextIndex !== " "){
    return false;
  } else {
    return true;
  }
}


function getSiblings(elem) {
  var family = elem.parentNode.children;
  var bretheren = [];
  for (i in family) {
    if (family[i].nodeType == 1 && family[i] !== elem) {
      bretheren.push(family[i]);
    }
  }
  return bretheren;
}


function ajax(opt) {
  var xhr = new XMLHttpRequest();
  xhr.open(opt.method, opt.url, true);
  xhr.send(opt.data);
  return xhr.response;
}

function postForm(e) {
  e.preventDefault();
  this.style.display = 'none';
  var form = {};
  form.title = this.elements
}
