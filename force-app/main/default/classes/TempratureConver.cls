public class TempratureConver {
   
    public static Decimal FahrenheitToCelsius(Decimal fh)
    {
        Decimal cs=(fh-32)*5/9;
        System.debug('temperature in Celsius='+cs.setScale(2));
        return cs.setScale(2);
    }
    
    
}