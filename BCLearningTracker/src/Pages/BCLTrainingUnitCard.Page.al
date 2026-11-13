page 50101 "BCL Training Unit Card"
{
    Caption = 'Training Unit';
    PageType = Card;
    ApplicationArea = All;
    SourceTable = "BCL Training Unit";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Module Name"; Rec."Module Name")
                {
                }
                field("Unit No."; Rec."Unit No.")
                {
                }
                field(Title; Rec.Title)
                {
                }
                field(Status; Rec.Status)
                {
                }
                field("Completed Date"; Rec."Completed Date")
                {
                }
                field(Notes; Rec.Notes)
                {
                    MultiLine = true;
                }
            }
        }
    }
}