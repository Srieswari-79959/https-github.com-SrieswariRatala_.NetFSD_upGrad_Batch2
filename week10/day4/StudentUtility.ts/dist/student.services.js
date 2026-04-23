"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.getGrade = getGrade;
exports.getTopper = getTopper;
function getGrade(marks) {
    if (marks <= 100 && marks < 80) {
        return "your grade is A";
    }
    else if (marks >= 80 && marks < 60) {
        return "your grade is B";
    }
    else if (marks >= 60 && marks < 40) {
        return "your grade is C";
    }
    else {
        return "fail";
    }
}
function getTopper(students) {
    let topper = students[0];
    for (var s of students) {
        if (s.marks > topper.marks) {
            topper = s;
        }
    }
    return topper;
}
