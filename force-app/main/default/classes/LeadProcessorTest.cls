@isTest
private class LeadProcessorTest {
    @isTest
    private static void testLeadProcessorBatch(){
        
        // Load Test Data
        List<Lead> leads = new List<Lead>();
        for(Integer i=1;i<=200;i++){
            leads.add(new Lead(LastName='LeadLstName', Company='SalesForce'));
        }
        insert leads;
        // perfor test 
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp,200);
        Test.stopTest();
        
        //check result
        List<Lead> updatedLeads = [SELECT Id FROM Lead WHERE LeadSource='Dreamforce'];
        System.assertEquals(200, updatedLeads.size(),'ERROR: at least 1 Lead record not updated correctly');
    }
}