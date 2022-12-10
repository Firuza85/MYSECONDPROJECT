/*1.Create account named test
2. Create test Account related 10contact
3. Create related 10case for each contact. (10contact has 10cases each, means you will have 100cases overall)
 */
public class Interview {
public static void mymethod () {
        Account acc = new Account();
        acc.Name = 'Test';
        insert acc;
        system.debug('acc==inserted =='+ acc);
        List<Contact> conts = new list<contact>();
        contact cont = new contact();
        for(integer i=0; i<10; i++){
            cont = new Contact();
            cont.FirstName = 'Rana';
            cont.LastName = 'Rahimli - ' + i;
			cont.email = 'rana.krahimli@gmail.com' + i;
			cont.accountid = acc.id;
			conts.add(cont);           
        }
   insert conts;
        system.debug('---contacts---10' + conts );
        List<case> casesInsert = new list <case>();
        case ca = new case();
        for(contact cont2 : conts){
            
            for(integer j=0; j<10; j++){
                ca = new case();
                ca.subject = 'Today interview' + j + '--' + cont2.LastName;
                ca.contactId = cont2.Id;
                ca.origin = 'web';
                casesInsert.add(ca);
            }
            
        }
    insert casesInsert;
        system.debug('====' + casesInsert);
    }
    
}