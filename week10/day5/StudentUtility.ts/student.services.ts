import { Student } from "./student.models";
export function getGrade(marks:number):string{
        if(marks<=100 && marks<80)
        {
            return "your grade is A";
        }
        else if(marks>=80 && marks<60){
                return "your grade is B";
        }
        else if(marks>=60 && marks<40)
        {
            return "your grade is C";
        }
        else{
            return "fail";
        }
    }
        





export function getTopper(students:Student[]):Student{

    let topper=students[0];
    for(var s of students)
    {
        if(s.marks>topper.marks){
            topper=s;
        }
    }
    return topper;
       
}
