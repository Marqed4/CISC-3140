// My defined func
const fs = require('fs');

function fetchLine() {
    return fs.readFileSync('index.html', 'utf8');
}

function modifyLine(html) {
    return html.replace('<h2>2001</h2>', '<h2>2002</h2>');
}

function printLine(html) {
    console.log(html);
}

// Main
let html = fetchLine();
html = modifyLine(html);
printLine(html);