function getWelcomeMessage(name:string):string{
    return `Welcome ${name} for this opportunity`;
}
function getUserInfo(name:string, age?:number):string 
{
    if(age != null)
    {
        return `hii ${name} your age is ${age}`;
    }
    else
    {
        return `hii are you ${name}`;
    }
}


function getSubscriptionStatus(name?:string, isSubscribed:boolean=false):boolean{
    if(name != null && isSubscribed==false)
    {
        console.log("you has not subscribed");
        return false;
    }
    else{
        console.log("you are subscribed to our channel");
        return true;
    }
}

var NotificationService = {
    appName:"CogniZant",
    show(){
        const print =() =>
        {
           console.log(this.appName);
        };
        print();
    }

};

NotificationService.show();
console.log(getWelcomeMessage("srisai"));
console.log(getUserInfo("srisai",22));
console.log(getSubscriptionStatus("saimma",true));