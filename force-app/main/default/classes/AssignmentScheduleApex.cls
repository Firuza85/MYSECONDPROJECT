public class AssignmentScheduleApex implements Schedulable {
    public void execute (SchedulableContext SC){
        list <Contact> updatesContacts = new list <Contact>();
        for (Contact con : [Select AccountId, FirstName from Contact]){
            con.FirstName = 'Schedule Test';
            updatesContacts.add(con);
        }
         update updatescontacts;
    }
}