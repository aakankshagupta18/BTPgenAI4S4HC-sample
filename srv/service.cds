using { S4HCP_ServiceOrder_Odata } from './external/S4HCP_ServiceOrder_Odata.cds';

using { aakankshagupta_ds1_a29 as my } from '../db/schema.cds';

@path : '/service/aakankshagupta_ds1_a29'
service aakankshagupta_ds1_a29Srv
{
    @odata.draft.enabled
    entity CustomerMessage as
        projection on my.CustomerMessage
        actions
        {
            action Action1
            (
            );

            action Action2
            (
            );
        };

    entity A_ServiceOrder as
        projection on S4HCP_ServiceOrder_Odata.A_ServiceOrder
        {
            ServiceOrder,
            ServiceOrderDescription
        };

    @odata.draft.enabled
    entity ProductFAQ as
        projection on my.ProductFAQ
        {
            ID,
            issue,
            question,
            answer
        };
}

annotate aakankshagupta_ds1_a29Srv with @requires :
[
    'authenticated-user'
];
