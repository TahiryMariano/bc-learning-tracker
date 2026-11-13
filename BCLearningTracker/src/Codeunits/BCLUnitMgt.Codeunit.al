codeunit 50100 "BCL Unit Mgt"
{
    procedure MarkCompleted(Var TrainingUnit: Record "BCL Training Unit")
    begin
        if TrainingUnit.Status = TrainingUnit.Status::Completed then
            Error(AlreadyCompletedErr, TrainingUnit.Title);

        TrainingUnit.Validate(Status, TrainingUnit.Status::Completed);
        TrainingUnit.Modify(true);

        OnAfterMarkCompleted(TrainingUnit);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterMarkCompleted(Var TrainingUnit: Record "BCL Training Unit")
    begin
    end;

    var
        AlreadyCompletedErr: Label 'The unit "%1" is already completed.', Comment = '%1 =unit title';
}