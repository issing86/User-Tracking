import { LightningElement,api } from 'lwc';

export default class TrackPage extends LightningElement {

    @api outputTest;
    outputTest='123';
    outputTest = document.title;

}