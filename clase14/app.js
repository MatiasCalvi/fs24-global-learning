import { readFileSync, writeFileSync } from "node:fs";

const document = readFileSync("./dates.txt", "utf8");

const noCharacters = document.replace(/[<>]/g, "");

const numArray = noCharacters.split(" ").map(Number);

function countPares(numbers) {
  const pares = numbers.filter((number) => number % 2 === 0);
  return pares.length;
}

writeFileSync("results.txt", `Number of even numbers: ${countPares(numArray)}`);

console.log(
  `The file 'results.txt' has been created with the number of even numbers: ${countPares(
    numArray
  )}`
);
