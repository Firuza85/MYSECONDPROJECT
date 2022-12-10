public class Map_test {
    public static String orderTea (){
        Map <String, String>teaTypes = new Map <String,String>();
        teaTypes.put ('Black', 'Earthy');
        teaTypes.put ('White', 'Sweet');
        teaTypes.put ('Herbal', 'Sweet');
        string flavorprofile = teaTypes.get ('Herbal');
        system.debug('The flavorProfile of Herbal is: '+ flavorProfile);
        return flavorprofile; 
        
        
    }
}