
const marks = [70, 80, 65, 90, 50];
const total = marks.reduce((sum, mark) => sum + mark, 0);


const average = total / marks.length;

const result = average >= 50 ? "Pass" : "Fail";

console.log(`Total Marks: ${total}`);
console.log(`Average Marks: ${average}`);
console.log(`Result: ${result}`);