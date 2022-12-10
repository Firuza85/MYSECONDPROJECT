import { LightningElement, track } from 'lwc';

export default class Calculator extends LightningElement {
firstNumber;
secondNumber;
@track sum;
@track product;

firstNumberHandler(event){
this.firstNumber=event.target.value;

}
secondNumberHandler(event){
    this.secondNumber=event.target.value;
    
    }
    sumHandler(){
        const num1=parseInt(this.firstNumber);
        const num2=parseInt(this.secondNumber);
        this.sum= num1+num2;
    }
    productHandler(){
        const num1=parseInt(this.firstNumber);
        const num2=parseInt(this.secondNumber);
        this.product= num1 * num2;  
    }
}