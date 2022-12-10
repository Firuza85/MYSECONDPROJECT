trigger AccountTrigger on Account (before delete) {
/*Describtion: Show error when user wants to delete account related to Opportunity
 * Trigger.old=>List<sObject>=>List<Account>
 * Trigger.oldMap => Map<id, sObject> => Map <id,Account>
 *  keySet ()=>Set<Keys>=> Set <id> => Set <AccountId>
**/
    Set <Id> accountIdsSet = Trigger.oldMap.KeySet();
    list<Opportunity>opportunityList = [Select id,Name, StageName, AccountId 
                                        From Opportunity Where AccountId IN:accountIdsSet 
                                        AND iswon = true];
   
    Map<id, Opportunity>opportunitiesMap = new Map <id, Opportunity>();
    // Approach 1 Using List
    /*for (Account acc:Trigger.Old){
        for (Opportunity opp: opportunityList){
            acc.addError ('Yo can not delete Account which have closed won Opportunity. Please contact your Admin');
        }
    }
}
*/// Approach 2 using Map
    for (Opportunity opp:opportunityList){
        if (!opportunitiesMap.containsKey(opp.AccountId)){
            opportunitiesMap.put(opp.AccountId,opp);
        }
    }
    for (Account acc: Trigger.Old){
        if (opportunitiesMap.containsKey(acc.Id)){
            acc.addError ('Yo can not delete Account which have closed won Opportunity. Please contact your Admin');
        }
    }
}