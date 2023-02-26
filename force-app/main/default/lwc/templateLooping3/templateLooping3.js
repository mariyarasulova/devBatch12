import { LightningElement } from 'lwc';

export default class TemplateLooping3 extends LightningElement {
    opportunities = [
        {
            Name: "Standart Switches",
            Amount: 1000000,
            Stage: "Prospect",
            Type: "New Customer"
        },
        {
            Name: "Universal Button",
            Amount: 4000000,
            Stage: "Qualification",
            Type: "Existing Customer - Upgrade"  
        },
        {
            Name: "Advanced Taps",
            Amount: 2000000,
            Stage: "Negotiation/Review  ",
            Type: "Existing Customer - Downgrade"  
        }
    ];
}