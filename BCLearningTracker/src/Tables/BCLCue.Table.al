table 50101 "BCL Cue"
{
    Caption = 'BCL Cue';
    DataClassification = SystemMetadata;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "In Progress Units"; Integer)
        {
            Caption = 'In Progress Units';
            FieldClass = FlowField;
            CalcFormula = count("BCL Training Unit" where(Status = const("In Progress")));
            Editable = false;
        }
        field(3; "Completed Units"; Integer)
        {
            Caption = 'Completed Units';
            FieldClass = FlowField;
            CalcFormula = count("BCL Training Unit" where(Status = const(Completed)));
            Editable = false;
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