import { LightningElement } from 'lwc';

export default class AccountDetails extends LightningElement {
    name;
    rating;
    industry;
    phone;

    handleShhowDetails(event) {
        const detail = event.detail;

        this.name = detail.fields.Name.value;
        this.rating = detail.fields.Rating.value;
        this.industry = detail.fields.Industry.value;
        this.phone = detail.fields.Phone.value;

    }
}