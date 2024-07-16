using { S4HCP_ServiceOrder_Odata } from './external/S4HCP_ServiceOrder_Odata.cds';

using { aakankshagupta_ds1_a29 as my } from '../db/schema.cds';

@path : '/service/aakankshagupta_ds1_a29'
service aakankshagupta_ds1_a29Srv
{
    @odata.draft.enabled
    entity CustomerMessage as
        projection on my.CustomerMessage;

    entity A_ServiceOrder as projection on S4HCP_ServiceOrder_Odata.A_ServiceOrder
    {
        ServiceOrder,
        ServiceOrderDescription
    };
}

annotate aakankshagupta_ds1_a29Srv with @requires :
[
    'authenticated-user'
];
