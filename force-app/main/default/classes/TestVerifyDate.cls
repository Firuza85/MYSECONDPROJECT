@isTest
public class TestVerifyDate {   
    
    @isTest
    static void testCheckDatesPositive(){
        Date dte = VerifyDate.CheckDates(Date.valueOf('2015-04-30'), Date.valueOf('2015-05-10'));
        system.assertEquals(dte,Date.valueOf('2015-05-10'));
    }
    
    @isTest
    static void testCheckDatesdate2GT30Daysdate1(){
        Date dte = VerifyDate.CheckDates(Date.valueOf('2015-04-30'), Date.valueOf('2015-06-30'));
        system.assertEquals(dte,Date.valueOf('2015-04-30'));
    }
    
    @isTest
    static void testCheckDatesdate2LTdate1(){
        Date dte = VerifyDate.CheckDates(Date.valueOf('2015-04-30'), Date.valueOf('2015-03-30'));
        system.assertEquals(dte,Date.valueOf('2015-04-30'));
    }
    
}