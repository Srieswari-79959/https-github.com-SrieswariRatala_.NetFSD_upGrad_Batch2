function cal(Amount){
    
    if(Amount>=5000)
    {
        let discount=(20/100)*Amount;
        let totalamount=Amount-discount;
        console.log(`Discount amount`,discount);
        console.log(`Final payble amount`,totalamount);
    }
    else if(Amount>=3000)
    {
        let discount=(10/100)*Amount;
        let totalamount=Amount-discount;
        console.log(`Discount amount`,discount);
        console.log(`Final payble amount`,totalamount);
    }
    else{
        console.log(`No discount`);
        console.log(`final payble amount`, Amount);
    }
}
cal(10000);