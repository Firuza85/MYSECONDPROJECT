public class CodingExerciseBaseTableController {
    
    @auraEnabled
    public static list <opportunity> getInitRecords(String recordId){
        String myCustomLabelValues = Label.My_Table_Columns; //FOR BUILD 1
        /*TO DO
        //Change the return type and retrieve needed values.
        */
    string stageName = 'Prospecting';
        string que = 'Select' + myCustomLabelValues + 'from Opportunity where stage = 'Prospecting' account id =: recordId';
    List<opportunity> opps = Database.Query(recordId);
    system.debug('====list of Opps ====' + opps.size());
    return opps;
}
}

