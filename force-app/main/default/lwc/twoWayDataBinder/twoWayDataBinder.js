import { LightningElement } from 'lwc';

export default class TwoWayDataBinder extends LightningElement {
    fullname = ' Mariya Rasulova';
    title = 'Salesforce Developer';
    changeHandler(event){
        this.title = event.target.value;
    }
}