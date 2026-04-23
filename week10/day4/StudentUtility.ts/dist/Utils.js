"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.formatName = formatName;
exports.calculateAverage = calculateAverage;
function formatName(name) {
    return name.toUpperCase();
}
function calculateAverage(students) {
    let total = 0;
    for (let s of students) {
        total += s.marks;
    }
    return total / students.length;
}
