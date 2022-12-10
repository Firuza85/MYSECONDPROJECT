public class AccountFutureMethodController {
@future
    public static void myFutureMethod(){
       account acc=new Account ();
        List<Id> recordIds = new List<Id>();
        List <Account> accts =[Select Name,Type, Industry From Account Where Id IN :recordIds];
        list<Account>updateAccounts= new list <Account>();
        for (account ac: accts){
            acc= new Account();
            acc.Industry = 'Healthcare';
            updateAccounts.add(acc);
        }
        if (updateAccounts.size()>0){
            update updateAccounts;
        }
    }
}