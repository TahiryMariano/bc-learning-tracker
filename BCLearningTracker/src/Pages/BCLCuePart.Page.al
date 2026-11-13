page 50102 "BCL Cue Part"
{
    Caption = 'Training';
    PageType = CardPart;
    ApplicationArea = All;
    SourceTable = "BCL Cue";

    layout
    {
        area(Content)
        {
            cuegroup(Training)
            {
                Caption = 'Training';

                field("In Progress Units"; Rec."In Progress Units")
                {
                    DrillDownPageId = "BCL Training Unit List";
                }
                field("Completed Units"; Rec."Completed Units")
                {
                    DrillDownPageId = "BCL Training Unit List";
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}