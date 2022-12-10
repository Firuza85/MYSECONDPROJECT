public class AccountHandler {
    public static void insertAccount(Integer Num)
    {
        List<Account> addAccounts = new List<Account>();
        Integer i=1;
        While(i <= Num)
        {
           Account objAcc = new Account();
           objAcc.name = 'Acme Inc n'+i; 
           objAcc.AccountNumber = 'A000n'+i;
           addAccounts.add(objAcc);
            i++;
        }
        insert addAccounts;
    }
}