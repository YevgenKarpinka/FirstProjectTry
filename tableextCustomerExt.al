tableextension 50103 "Customer Ext" extends Customer
{
    fields
    {
        field(50100; "Reward ID"; Code[30])
        {
            TableRelation = Reward."Reward ID";
            ValidateTableRelation = true;
            trigger OnValidate()
            begin
                if ("Reward ID" <> xRec."Reward ID") and (Blocked <> Blocked::" ") then begin
                    Error('Cannot update the rewards status of the blocked customer')
                end;
            end;
        }
    }

    var
        myInt: Integer;
}