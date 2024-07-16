namespace aakankshagupta_ds1_a29;

using { cuid } from '@sap/cds/common';

entity CustomerMessage : cuid
{
    titleEnglish : String(100);
    customerName : String(100);
    productName : String(100);
    summaryEnglish : String(500);
    messageCategory : String(100);
    messageUrgency : String(100);
    messageSentiment : String(100);
    titleCustomerLanguage : String(100);
    customerId : String(36);
    productId : String(36);
    summaryCustomerLanguage : String(500);
    originatingCountry : String(100);
    sourceLanguage : String(100);
    fullMessageCustomerLanguage : String(2000);
    fullMessageEnglish : String(2000);
    suggestedResponseEnglish : String(2000);
    suggestedResponseCustomerLanguage : String(2000);
}