import { LightningElement } from 'lwc';
import EMP_OBJECT from '@salesforce/schema/Employee__c';

export default class ModalChild extends LightningElement {
    objectName = EMP_OBJECT;

    clickHandler(){
        /*Simple Event
        const closeEvent = new CustomEvent('close');
        this.dispatchEvent(closeEvent);*/

        /** Event with primotive Data 
        let message = "User wants the child to be closed, hence closed!";
        const closeEvent = new CustomEvent('close', {detail: message})
        this.dispatchEvent(closeEvent);*/

        /** Event with non primitive Data */
        let message = {
            Id: 1,
            Name: "Mariya Rasulova",
            Company: "Microsoft",
            Position: "CEO"
        }
            const closeEvent = new CustomEvent('close', {detail: message})
            this.dispatchEvent(closeEvent);
        
    }
}