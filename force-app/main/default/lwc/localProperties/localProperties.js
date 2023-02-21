import { LightningElement } from 'lwc';

export default class LocalProperties extends LightningElement {
    name; //undefined
    age = 33;
    fullname = 'Mariya Rasulova';
    location = {
        city :'Texas',
        country: 'Unitrd States',
        postalcode: '75009',
    };
    fruits = ['Orange', 'Banana', 'Apple'];
}