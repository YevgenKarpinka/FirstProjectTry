pageextension 50104 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Reward ID"; "Reward ID")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the level or reward that the customer has at this point.';
                Lookup = true;
            }
        }
    }

    actions
    {
        addfirst(Navigation)
        {
            action("Rewards")
            {
                ApplicationArea = All;
                RunObject = page "Reward List";
            }
        }
    }

    var
        myInt: Integer;
}