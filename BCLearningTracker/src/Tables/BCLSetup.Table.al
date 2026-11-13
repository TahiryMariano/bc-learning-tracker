table 50102 "BCL Setup"
{
    Caption = 'BCL Setup';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Learner Name"; Text[50])
        {
            Caption = 'Learner Name';
        }
        field(3; "Weekly Goal"; Integer)
        {
            Caption = 'Weekly Goal (units)';
            MinValue = 1;
        }
    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}