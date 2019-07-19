page 50102 "Reward List"
{
    PageType = List;
    UsageCategory = Lists;
    SourceTable = Reward;
    CardPageId = "Reward Card";
    ContextSensitiveHelpPage = 'sales-rewards';

    layout
    {
        area(Content)
        {
            repeater(Rewards)
            {
                field("Reward ID"; "Reward ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the level of reward that the customers has at this point.';
                }

                field(Description; Description)
                {
                    ApplicationArea = All;
                }

                field("Discount Percentage"; "Discount Percentage")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}