import { LightningElement } from 'lwc';
import searchEmployees from '@salesforce/apex/EmployeeCtrl2.searchEmployees';

export default class EmployeeSearch extends LightningElement {
    employees;
    error;

    searchHandler(event){
        const searchWord = event.target.value;
        if(searchWord.length>0){
        searchEmployees({searchKey: searchWord })
            .then(result =>{
                if(result.length>0){
                this.employees = result;
                this.error = undefined;
                }else{
                    this.employees = undefined;
                    this.error = "Theare no matching employee records, try different search criteria"
                }
            })
            .catch(error =>{
                this.error = error.body.message;
            })
        }else {
            this.employees = undefined;
            this.error = "Please enter a search word in order to see matching employee records";
        }
        
    }
}