import { LightningElement } from 'lwc';

export default class P2cNonPrimitivesParent2 extends LightningElement {
    contacts = [
        {
        Id: 1,
        Name: "Emrah",
        City: "Houston"
        },
        {
            Id: 2,
            Name: "Enes",
            City: "Dallas"
        },
        {
            Id: 3,
            Name: "Mariya",
            City: "Philadelphia"
        }
    ];
}