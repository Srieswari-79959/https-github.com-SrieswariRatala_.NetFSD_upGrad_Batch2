"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const Utils_1 = require("./Utils");
const student_services_1 = require("./student.services");
const Utils_2 = require("./Utils");
const student_services_2 = require("./student.services");
console.log((0, Utils_1.formatName)("Srisai"));
console.log((0, student_services_1.getGrade)(56));
let students = [
    { id: 21, name: "srisai", marks: 99 },
    { id: 54, name: "saisri", marks: 100 },
    { id: 87, name: "navi", marks: 98 }
];
console.log((0, Utils_2.calculateAverage)(students));
console.log((0, student_services_2.getTopper)(students));
