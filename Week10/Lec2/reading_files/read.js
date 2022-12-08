const { readFileSync } = require("fs");

const text = readFileSync("/etc/hosts", {encoding: "utf8"});
console.log(text);
