public class LeadBatch implements Database.Batchable<SObject> {

    public Database.QueryLocator start (Database.BatchableContext BC){
        return Database.getQueryLocator('Select Id,LeadSource From Lead');
    }
    public void execute (Database.BatchableContext BC, List <lead> scope){
        for (Lead leadRecord : scope) {
            leadRecord.LeadSource = 'Web';
        }
        update scope;
    }
    public void finish (Database.BatchableContext BC){
        system.debug('Batch Finished');
    }
}