namespace riskmanagement;

using { managed } from '@sap/cds/common';

entity Risks: managed {
    key id: UUID @(core.computed: true);
        title: String(100);
        owner: String;
        prio: String(5);
        descr: String;
        miti: Association to Mitigations;
        impact: Integer;
        criticality: Integer
}

entity Mitigations: managed {
    key id: UUID @(Core.Computed: true);
        descr: String;
        owner: String;
        timeline: String;
        risks: Association to many Risks on risks.miti = $self
}

entity Impacts{
    ID: Integer;
    desc: String; 
    own: String
}