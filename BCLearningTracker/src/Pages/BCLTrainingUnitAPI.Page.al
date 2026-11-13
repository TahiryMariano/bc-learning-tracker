page 50104 "BCL Training Unit API"
{
    PageType = API;
    Caption = 'trainingUnit';
    APIPublisher = 'bclearning';
    APIGroup = 'tracker';
    APIVersion = 'v1.0';
    EntityName = 'trainingUnit';
    EntitySetName = 'trainingUnits';
    SourceTable = "BCL Training Unit";
    ODataKeyFields = SystemId;
    DelayedInsert = true;
    Extensible = false;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(id; Rec.SystemId)
                {
                    Caption = 'Id';
                    Editable = false;
                }
                field(moduleName; Rec."Module Name")
                {
                    Caption = 'Module Name';
                }
                field(unitNo; Rec."Unit No.")
                {
                    Caption = 'Unit No.';
                }
                field(title; Rec.Title)
                {
                    Caption = 'Title';
                }
                field(status; Rec.Status)
                {
                    Caption = 'Status';
                }
                field(completedDate; Rec."Completed Date")
                {
                    Caption = 'Completed Date';
                    Editable = false;
                }
                field(notes; Rec.Notes)
                {
                    Caption = 'Notes';
                }
            }
        }
    }
}