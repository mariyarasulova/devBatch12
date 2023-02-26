import { LightningElement} from 'lwc';

export default class TrackProperty extends LightningElement {
    location= {
        city: 'Houston',
        country: 'United States'
    };
    changeHandler(event) {
        this.location.city = event.target.value;
    }
}