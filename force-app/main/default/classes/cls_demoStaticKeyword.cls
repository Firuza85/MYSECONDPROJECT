/*
 Created by: Firuza 
description: written for Demo
createrd Date 9/29/2022
*/

public class cls_demoStaticKeyword {
    
    Public static integer totalDeliveriesS= 0;
    public integer totalDeliveriesNS=0;
// Contructor
    public cls_demoStaticKeyword(){
        
    }
    public void demoMethod(){
       
        totalDeliveriesS++;
  totalDeliveriesNS++;
        
        system.debug('======line 23'+totalDeliveriesS);
         system.debug('======totaldeliveries===='+totalDeliveriesNS);
    }  
}