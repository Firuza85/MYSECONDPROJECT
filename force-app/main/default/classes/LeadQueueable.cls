public class LeadQueueable implements Queueable {
    public void execute (queueableContext context) {
        List <Lead> existingRecords =  [Select Id,LeadSource From Lead ];
        for (Lead record : existingRecords){
            record.LeadSource = 'Web';
        }
        update existingRecords;

        
    }
}