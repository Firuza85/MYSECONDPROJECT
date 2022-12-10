public class cls_1stWeekAssignment2 {

    PUBLIC STATIC integer modelnumber;
    public static String modelName;
    public static date cteatedDate; 
  public static DateTime createdTime;
   public static Boolean ModelQuality;
    public static  Decimal Modelprice;
     public static blob ModelContent;

public void method(){    
   
 cls_1stWeekAssignment2.modelnumber= 0012; 
 cls_1stWeekAssignment2.modelName ='KIA';
 cls_1stWeekAssignment2.cteatedDate = Date.today();
 cls_1stWeekAssignment2.createdTime= dateTime.now();
 cls_1stWeekAssignment2.ModelQuality = true;
 cls_1stWeekAssignment2.Modelprice = 15.500;
 cls_1stWeekAssignment2.ModelContent =blob.valueOf(modelName);
    
    system.debug('Models number is'  + modelnumber);
    system.debug('Models name is ' + modelName);
    system.debug('Model cteated date is ' + cteatedDate);
    system.debug('Model created at this time : ' +createdTime);
    system.debug( 'Qualiti of model is high ' + ModelQuality);
    system.debug('Price of model is ' + Modelprice);
    system.debug(ModelContent);
} 
    
}