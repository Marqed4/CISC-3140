// Must take line
const readline = require("readline");

// IO
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function modifyLine(line, modifyWhat, replaceWith) {
  return line.replaceAll(modifyWhat, replaceWith);
}

function printLine(line) {
  console.log("\nModified Output:\n");
  console.log(line);
}

// Question: 1
rl.question("Enter a line of text: ", (line) => {
    // Question: 1
    rl.question("Modify What: ", (modifyWhat) => {
        // Question: 3
        rl.question("To What: ", (replaceWith) => {
            const modified = modifyLine(line, modifyWhat, replaceWith);
            printLine(modified);

            rl.close();
        });
    });
});
