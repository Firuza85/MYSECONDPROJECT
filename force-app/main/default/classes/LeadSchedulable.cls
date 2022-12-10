public class LeadSchedulable implements Schedulable{
    public void execute (SchedulableContext SC){
        List <Lead> existingRecords =  [Select Id,LeadSource From Lead ];
        for (Lead record : existingRecords){
            record.LeadSource = 'Web';
        }
        update existingRecords;
    }

}