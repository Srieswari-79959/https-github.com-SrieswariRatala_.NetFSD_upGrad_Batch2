import { formatName } from "./Utils";
import { getGrade } from "./student.services";
import { Student } from "./student.models";
import { calculateAverage } from "./Utils";
import { getTopper } from "./student.services";



console.log(formatName("Srisai"));
console.log(getGrade(56));
let students:Student[]=[
    {id:21,name:"srisai",marks:99},
    {id:54,name:"saisri",marks:100},
    {id:87,name:"navi",marks:98}
]
   

console.log(calculateAverage(students));
console.log(getTopper(students));
