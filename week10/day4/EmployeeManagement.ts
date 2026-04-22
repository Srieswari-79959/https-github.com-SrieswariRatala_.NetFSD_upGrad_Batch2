class Employee{

    public empId:number;
    protected empName:string;
    private empSalary:number;
    constructor( empId:number,empName:string,empSalary:number){
                this.empId=empId;
                this.empName=empName;
                this.empSalary=empSalary;
    }
    get():number{
    return this.empSalary;
    }
    set(empSalary:number)
    {
        if(empSalary>0)
        {
            this.empSalary=empSalary;
        }
    }

    displayDetails(){
        console.log(`employeeId is ${this.empId} and empName is ${this.empName} and employee salary is ${this.empSalary}`);
    }

}



class Manager extends Employee{
    public teamSize:number;
    constructor(empId:number,empName:string,empSalary:number,teamSize:number){
        super(empId,empName,empSalary);
        this.teamSize=teamSize;
    }

    displayDetails() {
         console.log(`employeeId is ${this.empId} and empName is ${this.empName} and employee salary is ${this.get()},and team size should be ${this.teamSize}`);
    }

} 


let obj2=new Manager(234, "Srisai123", 34567654,4);

obj2.displayDetails();
obj2.get();
obj2.set(23453345);


