import { LightningElement, wire } from 'lwc';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import ANNUALREVENUE_FIELD from '@salesforce/schema/Account.AnnualRevenue';
import INDUSTRY_FIELD from '@salesforce/schema/Account.Industry';
import { getFieldDisplayValue, getFieldValue, getRecord } from 'lightning/uiRecordApi';

const FIELDS = [NAME_FIELD, ANNUALREVENUE_FIELD, INDUSTRY_FIELD];

export default class GetRecordAccount extends LightningElement {
    recordId = "001Do000003DzUnIAK";
    name;
    annualRevenue;
    industry;
    @wire(getRecord,{recordId: '$recordId', fields: FIELDS})
    recordHandler({data, error}){
        if(data){
            this.name = getFieldValue(data, NAME_FIELD);
            this.annualRevenue = getFieldDisplayValue(data, ANNUALREVENUE_FIELD);
            this.industry = getFieldValue(data, INDUSTRY_FIELD);
        }
        if(error){
            console.error(error);
        }
    }
        
}