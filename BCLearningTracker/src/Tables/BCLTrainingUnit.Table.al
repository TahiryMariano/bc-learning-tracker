table 50100 "BCL Training Unit"
{
    Caption = 'Training Unit';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
        }
        field(2; "Module Name"; Text[100])
        {
            Caption = 'Module Name';
        }
        field(3; "Unit No."; Integer)
        {
            Caption = 'Unit No.';
        }
        field(4; "Title"; Text[100])
        {
            Caption = 'Title';
        }
        field(5; "Status"; Enum "BCL Units Status")
        {
            Caption = 'Status';

            trigger OnValidate()
            begin
                if Status = Status::Completed then
                    "Completed Date" := Today()
                else
                    "Completed Date" := 0D;
            end;
        }
        field(6; "Completed Date"; Date)
        {
            Caption = 'Completed Date';
            Editable = false;
        }
        field(7; Notes; Text[250])
        {
            Caption = 'Notes';
        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}