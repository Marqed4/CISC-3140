const fs = require("fs");

// Must take line
const readline = require("readline");

// IO
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

/* 
UTF‑8 is how JavaScript (via Node’s fs module) interprets the bytes 
inside text files—HTML, TXT, JSON, etc.—and turns them into readable 
characters. Without specifying "utf8", Node returns raw binary data 
(Buffer objects), which looks like: �����h��!�,`��M���#V� (unreadable).
*/
function fetchLine(fileName) {
  return fs.readFileSync(fileName, "utf8");
}

function modifyLine(html, modifyWhat, replaceWith) {
  return html.replaceAll(modifyWhat, replaceWith);
}

function printLine(html) {
  console.log("\nModified Output:\n");
  console.log(html);
}

let fileName = "";
let modifyWhat = "";
let replaceWith = "";

// Question: 1
rl.question("File Name: ", (answer1) => {
  fileName = answer1;

  // Question: 2
  rl.question("Modify What: ", (answer2) => {
    modifyWhat = answer2;

    // Question: 3
    rl.question("To What: ", (answer3) => {
      replaceWith = answer3;

      // Read file
      const html = fetchLine(fileName);
       // Modify all matching/occurences of
      const modified = modifyLine(html, modifyWhat, replaceWith);
      // Print result
      printLine(modified);

      rl.close();
    });
  });
});
