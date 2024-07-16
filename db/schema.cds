namespace aakankshagupta_ds1_a29;

using { S4HCP_ServiceOrder_Odata } from '../srv/external/S4HCP_ServiceOrder_Odata.cds';

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
    customerId : String(100);
    productId : String(100);
    summaryCustomerLanguage : String(500);
    originatingCountry : String(100);
    sourceLanguage : String(100);
    fullMessageCustomerLanguage : String(2000);
    fullMessageEnglish : String(2000);
    suggestedResponseEnglish : String(2000);
    suggestedResponseCustomerLanguage : String(2000);
    S4HC_ServiceOrder : Association to one S4HCP_ServiceOrder_Odata.A_ServiceOrder;
}
