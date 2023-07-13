import { LightningElement } from 'lwc';

export default class QuerySelectorsDemo extends LightningElement {
    fruits =  ["Orange", "Banana", "Apple", "Mango"];


    clickHandler(){
        //query selector demo
        const headerElem = this.template.querySelector("h1");
        console.log(headerElem.innerText);
        headerElem.style.color = 'blue';
        headerElem.style.backgroundColor = 'yellow';
        headerElem.style.border = '2px solid green';

        const pElem = this.template.querySelector("p");
        console.log(pElem.innerText);
        pElem.style.color ="purple";
        pElem.style.backgroundColor = "lightgreen";
        pElem.style.border = "3px solid red";

        //query Selecrors Demo
        const divElems = this.template.querySelectorAll("div.child");
        divElems.forEach(item=>{
            console.log(item.innerText);
            item.setAttribute("class", "slds-align_absolute-center");
        })
    }
}