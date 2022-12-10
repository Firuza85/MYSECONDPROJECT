public class leadAsynchronous {
    @future
    public static void updateLeadRecords (Set<Id>existingRecordIds){
        List <lead> existingRecords = [Select Id,LeadSource From Lead where Id IN:existingRecordIds];
        for (Lead record : existingRecords){
            record.LeadSource = 'Web';
        }
        update existingRecords;
    }
    @future
    public static void creatLeadRecords (){
      Lead anotherLead = new Lead (LastName = 'Test Lead Single', Status= 'Open - Not Closed', Company = 'SMFBLN'); 
        INSERT anotherLead;
    }
}