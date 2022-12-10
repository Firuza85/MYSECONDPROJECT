public class DemoScheduleApexClass implements Schedulable{
    public void execute(SchedulableContext SC){
        //Do your code or logic
   list<Account> updatesAccounts = new list<Account>();
        
  // list<Account> accounts = [Select Id, Name, Type, Industry from account];
       
        for(account ac : [Select Id, Name, Type, Industry from account where Industry = null]){
            ac.Industry = 'HealthCare';
            updatesAccounts.add(ac);
        }
        if(updatesAccounts.size()>0){
            update updatesAccounts;
        }
    }
    
}