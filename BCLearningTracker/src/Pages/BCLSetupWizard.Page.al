page 50103 "BCL Setup Wizard"
{
    Caption = 'Learning Tracker Setup';
    PageType = NavigatePage;
    ApplicationArea = All;
    SourceTable = "BCL Setup";

    layout
    {
        area(Content)
        {
            group(Welcome)
            {
                Caption = 'Welcome';
                InstructionalText = 'Tell us who you are and how many units you want to complete each week.';

                field("Learner Name"; Rec."Learner Name")
                {
                }
                field("Weekly Goal"; Rec."Weekly Goal")
                {
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Finish)
            {
                Caption = 'Finish';
                Image = Approve;
                InFooterBar = true;

                trigger OnAction()
                var
                    GuidedExperience: Codeunit "Guided Experience";
                begin
                    Rec.Modify();
                    GuidedExperience.CompleteAssistedSetup(ObjectType::Page, Page::"BCL Setup Wizard");
                    CurrPage.Close();
                end;
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Rec.Get() then begin
            Rec.Init();
            Rec."Weekly Goal" := 3;
            Rec.Insert();
        end;
    end;
}