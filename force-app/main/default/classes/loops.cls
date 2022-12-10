public class loops {
 public void myMethod(){
  // While loop
  integer i=5;
       while (i<15 )
       {system.debug('While loop example ' +i);
           i++;}}
    //for loop
    public void myMethod1(){
    for (integer c=0; c<5; c++){
       system.debug('this is a for loop '+ c); 
        if (c==2){
            break;}}  }
    // do while loop
    public void myMethod2(){
        integer i =  1; 
       do {
          system.debug(i); 
          i++;}
       while (i<11);
        
    }
}