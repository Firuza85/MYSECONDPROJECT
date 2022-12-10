public class LeadtriggerHandler {
    public static void beforeinserthandler(List <lead> newRecords){
          for(Lead leadRecord : newRecords){
            if(String.isBlank(leadRecord.leadSource)){
            leadRecord.leadsource ='other';
    } 
             //Validation rules on Industry fields
    if(String.isBlank(leadRecord.Industry) && Trigger.IsInsert){
        leadRecord.addError('The industry field cannot be blank');
       }
     }
    }
    public static void afterInserthandler(List <lead> newRecords){
        List <Task> leadTasks = new List <Task>();
            for(Lead leadRecord : newRecords){
                // Create a task
                Task leadTask = new Task(Subject = 'Follow up on Lead Status', WhoId = leadRecord.Id);
                leadTasks.add(leadTask);
            }
            insert leadTasks;
            Lead anotherlead = new Lead (LastName = 'Test Lead Single',Status ='Open -Not contacted');
            insert anotherlead;
            
        }
    
    public static void beforeUpdatehandler(List <lead> newRecords,Map<Id, Lead> oldRecordsMap){
         
          for(Lead leadRecord : newRecords){
          if(String.isBlank(leadRecord.leadSource)){
        leadRecord.leadsource ='other';
    }
     if ((leadRecord.Status == 'Closed - Converted' || leadRecord.Status == 'Closed - Not Converted') && oldRecordsMap.get(LeadRecord.Id).Status == 'Working - Contacted')
    leadRecord.Status.addError('You can not directly close or open lead record');        
        }
        } 
    }