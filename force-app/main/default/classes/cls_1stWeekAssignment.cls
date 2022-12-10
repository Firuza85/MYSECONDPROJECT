public class cls_1stWeekAssignment {

    public static integer totalvalue =0;
    string abc= 'Hello world' ;
    
    public void method(){
        
      integer totalvalue =0;
    string mycontent = 'StringToBlob' ;
    Account  a = new account (name= 'test');
        insert a;
        Attachment attachmentPDF = new Attachment();
        attachmentPDF.parentId= a.id;
         attachmentPDF.name = a.name + '.pdf';
        attachmentPDF.body = blob.toPDF(mycontent);
        insert attachmentPDF;
        

    }
}