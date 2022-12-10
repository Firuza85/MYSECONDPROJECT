Global class Demobatchclassnew implements database.Batchable<Sobject>{

    Global Database.QueryLocator start (Database.BatchableContext BC){
        string query1;
        query1 = 'Select Id, Name, Type, Indusrty from Account';
        return Database.getQueryLocator(query1);
    }    
    Global void execute(Database.BatchableContext BC, List <account> scope){
        list <account> updateaccounts = new list <account>();
        integer j = 1000;
        for (account ac: scope){
            ac.Name = 'TestingAccountUpdated' + j++;
            updateaccounts.add(ac);
        } 
        if(updateaccounts.size()>0){
            update updateaccounts;
        }
    }
    
    Global void finish (Database.BatchableContext BC){
        
    }
}