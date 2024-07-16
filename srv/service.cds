using { aakankshagupta_ds1_a29 as my } from '../db/schema.cds';

@path: '/service/aakankshagupta_ds1_a29'
@requires: 'authenticated-user'
service aakankshagupta_ds1_a29Srv {
  @odata.draft.enabled
  entity CustomerMessage as projection on my.CustomerMessage;
}