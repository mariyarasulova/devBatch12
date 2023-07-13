import { LightningElement } from 'lwc';

export default class ChildCom extends LightningElement {
    clickHandler(){
        console.log("User has clicked button, about to create an event!");
        const showEvent = new CustomEvent('show', {bubbles: true, composed: true});
        this.dispatchEvent(showEvent);
        console.log("show event has been dispatched from the child component!");
    }
}