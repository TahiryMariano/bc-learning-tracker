permissionset 50100 "BCL ALL"
{
    Assignable = true;
    Caption = 'BC Learning Tracker - All';

    Permissions =
        tabledata "BCL Training Unit" = RIMD,
        tabledata "BCL Cue" = RIMD,
        tabledata "BCL Setup" = RIMD,
        table "BCL Training Unit" = X,
        table "BCL Cue" = X,
        table "BCL Setup" = X,
        codeunit "BCL Unit Mgt" = X,
        codeunit "BCL Subscribers" = X,
        page "BCL Training Unit List" = X,
        page "BCL Training Unit Card" = X,
        page "BCL Cue Part" = X,
        page "BCL Setup Wizard" = X,
        page "BCL Training Unit API" = X;
}