import { LightningElement } from 'lwc';
import CASE from '@salesforce/schema/Case';
import ACCOUNT_FIELD from '@salesforce/schema/Case.AccountId';
import CONTACT_FIELD from '@salesforce/schema/Case.ContactId';
import SUBJECT_FIELD from '@salesforce/schema/Case.Subject';
import DESCRIPTION_FIELD from '@salesforce/schema/Case.Description';
import PRIORITY_FIELD from '@salesforce/schema/Case.Priority';
import ORIGIN_FIELD from '@salesforce/schema/Case.Origin';

export default class FormWeek1 extends LightningElement {

    objectName = CASE;
    caseFields = [ACCOUNT_FIELD,CONTACT_FIELD,SUBJECT_FIELD,DESCRIPTION_FIELD,PRIORITY_FIELD,ORIGIN_FIELD];
}