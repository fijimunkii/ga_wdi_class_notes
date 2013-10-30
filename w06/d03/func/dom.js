// DOM = Document Object Model

// nodes

var userName = prompt('what is your name?');

var aTag = document.createElement('a');
aTag.href = "http://www.wikipedia.org"

var newH1 = document.createElement('h1');
newH1.textContent = userName;

aTag.appendChild(newH1)
document.body.appendChild(aTag);
