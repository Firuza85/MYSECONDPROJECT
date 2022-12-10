/*
 Create an apex trigger on the contact object and every time a new contact will be created 
and an accountwill be selected in the creation of that contact object then on that account object a checkbox filed
( Contact_Created__c )will be checked true, which represent that this account has a contact.
*/
trigger AccountTriggerPractice2 on Contact (after insert, after update) {
   /*
    if(Trigger.IsInsert && Trigger.IsUpdate){
       SET<Id> accountsIds = new SET <Id>();
        for(Contact cont : Trigger.New){
        Account acc =  [Select Id, Name,Contact_Created__c from Account where Id =: cont.accountId];
            acc.Contact_Created__c =true;
            update acc;
    }
    }*/
    if(Trigger.IsInsert && Trigger.IsAfter){
       SET<Id> accountIds = new SET <Id>();
        for(Contact cont : Trigger.New){
          accountIds.add(cont.Id); 
        }
        List <Account> accountsUpdate = new List <Account>();
        list <Account> accounts = [select id, Name,Contact_Created__c from account where Id IN: accountIds ];
        for (account acc:accounts){
           acc.Contact_Created__c = true; 
        }
        update accountsUpdate;
}
}