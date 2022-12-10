/*
 * 
 * 
 * 
 * 
*/
@ISTest
public class AccountTriggerUnitTest {
    
    @testSetup static void setup(){
        }
    @ISTest
    static void testMethod1(){
        Account acc = new Account (Name ='TestingAccount', Type ='Healthcare',phone = '2345665');
        
        }
    
    @IsTest
    static void testMethod2(){
        test.startTest();
        Account ac =[Select Id, Name from account];
         update ac; 
        test.stopTest();
    }
}