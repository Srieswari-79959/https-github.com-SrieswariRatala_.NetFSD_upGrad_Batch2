function gradeEva(){
    let Marks=90;
    if(Marks>=75)
    {
        console.log(`Grade A`);
    }
    else if(Marks>=60)
    {
        console.log(`Grade B`);
    }
    else if(Marks>=40)
    {
        console.log(`Grade C`);
    }
    else if(Marks<40){
        console.log("Fail")
    }
}
gradeEva();