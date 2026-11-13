page 50100 "BCL Training Unit List"
{
    Caption = 'Training Units';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "BCL Training Unit";
    CardPageId = "BCL Training Unit Card";

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
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
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(MarkCompleted)
            {
                Caption = 'Mark as Completed';
                Image = Approve;

                trigger OnAction()
                var
                    UnitMgt: Codeunit "BCL Unit Mgt";
                begin
                    UnitMgt.MarkCompleted(Rec);
                    CurrPage.Update(false);
                end;
            }
        }
        area(Promoted)
        {
            actionref(MarkCompleted_Promoted; MarkCompleted)
            {
            }
        }
    }

    trigger OnOpenPage()
    begin
        ShowNoCompletedNotification();
    end;

    local procedure ShowNoCompletedNotification()
    var
        TrainingUnit: Record "BCL Training Unit";
        NoCompletedNotification: Notification;
    begin
        TrainingUnit.SetRange(Status, TrainingUnit.Status::Completed);
        if not TrainingUnit.IsEmpty() then
            exit;

        NoCompletedNotification.Message(NoCompletedMsg);
        NoCompletedNotification.Scope := NotificationScope::LocalScope;
        NoCompletedNotification.Send();
    end;

    var
        NoCompletedMsg: Label 'No training unit completed yet. Start with Unit 1!';
}