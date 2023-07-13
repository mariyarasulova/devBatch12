import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';


import CASE_OBJECT from '@salesforce/schema/Case'
import SUBJECT_FIED from '@salesforce/schema/Case.Subject'
import PRIORITY_FIED from '@salesforce/schema/Case.Priority'
import STATUS_FIED from '@salesforce/schema/Case.Status'
import DESCRIPTION_FIED from '@salesforce/schema/Case.Description'
import ORIGIN_FIED from '@salesforce/schema/Case.Origin'

import ACCOUNTID_FIED from '@salesforce/schema/Case.AccountId'
import CONTACTID_FIED from '@salesforce/schema/Case.ContactId'
export default class LightningEditCaseFormAssigment extends LightningElement {
    objectName = CASE_OBJECT
    fields ={
    subject : SUBJECT_FIED,
    priority: PRIORITY_FIED,
    status: STATUS_FIED,
    description: DESCRIPTION_FIED,
    origin: ORIGIN_FIED,
    accountName: ACCOUNTID_FIED,
    contactName: CONTACTID_FIED
    }
    recordId = "500Do000001cOJUIA2";

    successHandler(){
        const event = new ShowToastEvent({
            title:"Success",
            variant:"success",
            message:"Your Case record successfully saved!"
        });
        this.dispatchEvent(event);
}
}