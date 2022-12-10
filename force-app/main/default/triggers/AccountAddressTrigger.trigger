trigger AccountAddressTrigger on Account (before insert,before update) {
    List<Account> acclist =  new List<Account>();   
    for(Account a : trigger.new){       
        if((a.Match_Billing_Address__c ==true)&&(account.BillingPostalCode != NULL))        
            a.ShippingPostalCode = a.BillingPostalCode;       
    }     }