public class Flower {
    public static void updateProfile (List <Id> oppIds){
        
         List<Opportunity> opps = [SELECT Id, Amount, Profile__c from Opportunity where id IN: oppIds];
        for (Opportunity opp:opps){
            
         
            if (opp.Amount == null){
                opp.Profile__c= 'Low';
            } else if (Opp.Amount <10000){
                opp.Profile__c ='Low';
            } else if (opp.Amount>50000){
                opp.profile__c = 'High';
            }else {
                opp.Profile__c = 'Medium';
            }
            
        }
        update opps;
    }
}