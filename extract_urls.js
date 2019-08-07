var links = document.getElementsByTagName('button');
var hrefs = [];

for (var i = 0 ; i < links.length ; i++) {
  var extracted = links[i].getAttribute('onclick').replace("window.location.href='","").replace("'; return false;","");
  if (! extracted.includes(".n3") ) {
    hrefs.push(extracted);
  }
}

console.log(hrefs.join(" "))
