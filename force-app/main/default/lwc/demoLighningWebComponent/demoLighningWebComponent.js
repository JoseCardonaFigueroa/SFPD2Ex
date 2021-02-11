import { LightningElement, wire } from 'lwc';
import getBirthdayCelebrants from '@salesforce/apex/demoLightningWebCmponent.geteBirthdayCelebrants',
import staticDemoLWC from '@salesforce/resourceUrl/demoLWC';
import { loadScript, loadStyle } from "lightning/platformRedourceLoader";


export default class DemoLighningWebComponent extends LightningElement {
    @api recordId;
    
    //Apex method
    //Account parameters is imported 
    @wire(getBirthdayCelebrants, {accountId: '$recordId'}) contacts;

    imgHappyBirthday = staticDemoLWC + '/demoLWC/images/HappyBirthday.png';

    renderedCallback(){
        Promise.all([
            loadStyle(this, staticDemoLWC + '/demoLWC/CSS/styles.css'),
            loadScript(this, staticDemoLWC + '/demoLWC/js/script.js')
        ]).then(() => { 
            // callback
            alert();

        });
    }
    
    // Example of wiring a function
    @wire(getUpdatedAccounts, {} )
    doSomething ({error, data}) {
        if (error) {
            // TODO: Error handling
        } else if (data) {
            // TODO: Data handling
        }
    }
}