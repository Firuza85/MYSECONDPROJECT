trigger triggerLead on Lead (before insert,before update, after insert, after update) {
    switch on Trigger.operationType { 
    when After_Insert{
        list <task> leadtasks= new list<task>();
        for(Lead LeadRecord : Trigger.New){
            // create a task
            task leadTask = New Task(Subject ='Follow up on Lead Status', WhoId=leadRecord.Id);
          leadtasks.add(leadTask);
        }
            insert leadtasks;
    }
}
}