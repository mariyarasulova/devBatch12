
import { LightningElement, wire } from 'lwc';
import EMPLOYEE_OBJECT from '@salesforce/schema/Employee__c'
import { createRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';



export default class CreateRecordBlog extends LightningElement {

formdata = {};

changeHandler(event){
    const{name, value} = event.target;
    this.formdata[name] = value;
}

saveEmployee(){
    const recordInput = {
        apiName: EMPLOYEE_OBJECT.objectApiName,
        fields: this.formdata
    }
    createRecord(recordInput)
    .then(result=>{
        const successToast = new ShowToastEvent({
            title:"Success",
            message: "Employee record has been created successfully!",
            variant:"success"
        })
        this.dispatchEvent(successToast);
    })
    .catch(error => {
        //show error toast
        console.error(error);
    })

}
cancelEmployee(){
    this.template.querySelector('form.empform').reset();
    this.formdata = {};
}


}