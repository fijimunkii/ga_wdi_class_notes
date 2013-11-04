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

function serialize(obj) {
  results = [];

  function escapeURI(string) {
    return encodeURIComponent(string).replace(/[!'()]/g, escape).replace(/\*/g, "%2A");
  }
  // loop through properties on the object
  for (var prop in obj) {
    // skip properties on the prototype
    if (obj.hasOwnProperty(prop)) {
      var key = escapeURI(prop);
      var value = escapeURI(obj[prop]);
      var pair = key + "=" + value;
      results.push(pair);
    }
  }
  return results.join('&');
}


