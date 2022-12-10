public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer count, String lastName) {
        List<Contact> contacts = new List<Contact>();
        for (Integer i = 0; i < count; ++i) {
            contacts.add(new Contact(FirstName = 'Test ' + (i + 1), LastName = lastName));
        }
        return contacts;
    }
}