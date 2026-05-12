const fs = require('fs');
let html = fs.readFileSync('index.html', 'utf8');
html = html.replace('<p>Hello</p>', '<p>Hello MODIFIED</p>');
console.log(html);