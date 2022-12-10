import { LightningElement } from 'lwc';

export default class Quiz extends LightningElement {
correct=0;
incorrect=0;
progress;
totalquestions=5;
answer1;
answer2;
answer3;
answer4;
answer5;

handleChange(event){
    const fieldname=event.target.name;
    if(fieldname==='answer1'){
        this.answer1=event.target.value;
    }
    else if(fieldname==='answer2'){
        this.answer2=event.target.value;
}
else if(fieldname==='answer3'){
    this.answer3=event.target.value;

}
else if(fieldname==='answer4'){
    this.answer4=event.target.value;

}
else if(fieldname==='answer5'){
    this.answer5=event.target.value;
}
this.totalCorrect();
}


totalCorrect(){
var total_correct=0;
var total_incorrect=0;
if (this.answer1 !=null){
    if(this.answer1==7){
    total_correct=total_correct + 1;
}
else{
    total_incorrect=total_incorrect +1; 
}
}
if (this.answer2 !=null){
    if(this.answer2==20){
    total_correct=total_correct + 1;
}
else{
    total_incorrect=total_incorrect +1; 
}
}
if (this.answer3 !=null){
    if(this.answer3==3){
    total_correct=total_correct + 1;
}
else{
    total_incorrect=total_incorrect +1; 
}
}
if (this.answer4 !=null){
    if(this.answer4==5){
    total_correct=total_correct + 1;
}
else{
    total_incorrect=total_incorrect +1; 
}
}
if (this.answer5 !=null){
    if(this.answer5==9){
    total_correct=total_correct + 1;
}
else{
    total_incorrect=total_incorrect +1; 
}
}

this.correct=total_correct;
this.incorrect=total_incorrect;
this.progress=(total_correct +total_incorrect)/this.totalquestions *100;
}
}



