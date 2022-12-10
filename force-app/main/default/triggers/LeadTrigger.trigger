trigger LeadTrigger on Lead (before insert,after insert, before update, after update) {
    Switch  on Trigger.OperationType{
        when Before_insert { 
              for(Lead leadRecord : Trigger.new){
            if(String.isBlank(leadRecord.leadSource)){
            leadRecord.leadsource ='other';
    } 
             //Validation rules on Industry fields
    if(String.isBlank(leadRecord.Industry) && Trigger.IsInsert){
        leadRecord.addError('The industry field cannot be blank');
       }
     }
    }
        When After_Insert {
            List <Task> leadTasks = new List <Task>();
            for(Lead leadRecord : Trigger.new){
                // Create a task
                Task leadTask = new Task(Subject = 'Follow up on Lead Status', WhoId = leadRecord.Id);
                leadTasks.add(leadTask);
            }
            insert leadTasks;
            Lead anotherlead = new Lead (LastName = 'Test Lead Single',Status ='Open -Not contacted');
            insert anotherlead;
            
        }
        When Before_Update {
          for(Lead leadRecord : Trigger.new){
          if(String.isBlank(leadRecord.leadSource)){
        leadRecord.leadsource ='other';
    }
     if ((leadRecord.Status == 'Closed - Converted' || leadRecord.Status == 'Closed - Not Converted') && Trigger.oldMap.get(LeadRecord.Id).Status == 'Working - Contacted')
    leadRecord.Status.addError('You can not directly close or open lead record');        
        }
        }     
    }
}