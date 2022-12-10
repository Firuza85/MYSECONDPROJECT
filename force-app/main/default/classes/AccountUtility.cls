public class AccountUtility {
    public static void viewAnnualRevenue (){
      list<Account>  accountsList =[Select Name, AnnualRevenue from Account];
        for (Account acc: accountsList){
     String acctRev = acc.Name + ' : '+ acc.AnnualRevenue;
       system.debug(acctRev);
    }
}
}