trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
      List<Task> oppList = new List<Task>();
    
    for (Opportunity a : [SELECT Id,StageName,(SELECT WhatId,Subject FROM Tasks) FROM Opportunity
                     WHERE Id IN :Trigger.New AND StageName LIKE '%Closed Won%']) {
        oppList.add(new Task( WhatId=a.Id, Subject='Follow Up Test Task'));
         
    }
    
    if (oppList.size() > 0) {
        insert oppList;
    }
}