codeunit 50101 "BCL Subscribers"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"BCL Unit Mgt", 'OnAfterMarkCompleted', '', false, false)]
    local procedure ShowCongratulations(var TrainingUnit: Record "BCL Training Unit")
    begin
        Message(CongratsMsg, TrainingUnit.Title);
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", 'OnRegisterAssistedSetup', '', false, false)]
    local procedure RegisterAssistedSetup()
    var
        GuidedExperience: Codeunit "Guided Experience";
    begin
        GuidedExperience.InsertAssistedSetup(
            SetupTitleTxt,
            CopyStr(SetupShortTitleTxt, 1, 50),
            SetupDescriptionTxt,
            2,
            ObjectType::Page,
            Page::"BCL Setup Wizard",
            Enum::"Assisted Setup Group"::GettingStarted,
            '',
            Enum::"Video Category"::Uncategorized,
            '');
    end;

    var
        CongratsMsg: Label 'Well done! You completed "%1".', Comment = '%1 = unit title';
        SetupTitleTxt: Label 'Set up the BC Learning Tracker';
        SetupShortTitleTxt: Label 'Learning Tracker';
        SetupDescriptionTxt: Label 'Tell us your name and your weekly learning goal.';
}