function po(){
    let n=30;
    let pon= n>0? "positive": "Negitive";
    console.log(pon);
    if(n%2==0)
    {
        console.log(`Even`);
    }
    else{
        console.log(`Odd`);
    }
    for(let i=1; i<=n; i++)
    {
        console.log(i);
    }
}

po();