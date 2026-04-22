const UserName:string ="Srisai";
let Age:number=23;
const Email="srisai143@gmail.com";
const IsSubscribed=true;
Age++;
if(Age>18 && IsSubscribed)
{
    console.log(`Hello ${UserName}, you are ${Age} years old and email is ${Email}`);
}