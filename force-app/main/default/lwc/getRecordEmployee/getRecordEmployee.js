import {getFieldValue, getRecord} from 'lightning/uiRecordApi';
import { LightningElement, wire } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Employee__c.Name';
import EMPLOYEE_NAME_FIELD from '@salesforce/schema/Employee__c.Employee_Name__c';
import DESIGNATION_FIELD from '@salesforce/schema/Employee__c.Designation__c';
import EMAIL_FIELD from '@salesforce/schema/Employee__c.Email__c';
import PHONENUMBER_FIELD from '@salesforce/schema/Employee__c.Phone_Number__c';
import GENDER_FIELD from '@salesforce/schema/Employee__c.Gender__c';
import USERNAME_FIELD from '@salesforce/schema/Employee__c.Username__c';

export default class GetRecordEmployee extends LightningElement {
    recordId = "a0ADo000000cOuMMAU";
    employeeId;
    designation;
    email;
    employeeName;
    gender;
    phone;
    userName;



    
    @wire(getRecord, {recordId: '$recordId', layoutTypes: ['Full'], modes:['View']})
    recordHandler({data, error}){
        if(data){
            console.log(data);
            /*aproach 1
            this.designation = data.fields.Designation__c.value;
            this.employeeId = data.fields.Name.value;
            this.email = data.fields.Email__c.value;
            this.employeeName = data.fields.Employee_Name__c.value;
            this.gender = data.fields.Gender__c.displayValue;
            this.phone = data.fields.Phone_Number__c.value;
            this.userName = data.fields.Username__c.value;
            */

            /*approach2 way 2*/
            this.employeeId = getFieldValue(data, NAME_FIELD);
            this.employeeName = getFieldValue(data, EMPLOYEE_NAME_FIELD);
            this.designation = getFieldValue(data, DESIGNATION_FIELD);
            this.gender = getFieldValue(data, GENDER_FIELD);
            this.email = getFieldValue(data, EMAIL_FIELD);
            this.phone = getFieldValue(data, PHONENUMBER_FIELD);
            this.userName = getFieldValue(data, USERNAME_FIELD);



        }
        if(error){
            console.error(error);
        }
    }


    
}