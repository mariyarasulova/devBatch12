import { LightningElement } from 'lwc';

export default class TypeNumbers extends LightningElement {
   num1;
   num2;
   totalOfNumbers;

    changeHandler(event){
       if(event.target.name === "Number1"){
        this.num1 = event.target.value;
       }else{
        this.num2 = event.target.value;
       }
       if(this.num1==undefined){
        this.num1=0;
       }
       if(this.num2==undefined){
        this.num2=0;
       }
       this.totalOfNumbers = Number(this.num1)+ Number(this.num2);
    };
    
    
}