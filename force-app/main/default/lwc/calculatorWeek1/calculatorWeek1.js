import { LightningElement } from 'lwc';

export default class CalculatorWeek1 extends LightningElement {
   num1 = 0;
   num2 = 0 ;
   total = 0;
   
   changeHandler(event){
      if (event.target.name === "number1") {
         this.num1 = Number(event.target.value);
         
      }else {
         this.num2 = Number(event.target.value) ;
         
      }
     this.total = this.num1 + this.num2;
   }

  
   // get total(){
   //    return this.num1 + this.num2;
      
   // }
}