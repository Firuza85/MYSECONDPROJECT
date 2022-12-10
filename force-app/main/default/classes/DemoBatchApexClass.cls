/****
 * 
**/
public class DemoBatchApexClass implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext BC) {
        string query; 
        return Database.getQueryLocator(query);
    } 
    
    public void execute(Database.BatchableContext BC, List<Account> scope) {
        
    } 
    
    public void finish(Database.BatchableContext BC) {
        
    }
       
}