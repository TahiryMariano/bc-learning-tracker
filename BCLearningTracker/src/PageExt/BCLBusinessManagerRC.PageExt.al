pageextension 50105 "BCL Business Manager RC" extends "Business Manager Role Center"
{
    layout
    {
        addfirst(rolecenter)
        {
            part(BCLTrainingCue; "BCL Cue Part")
            {
                ApplicationArea = All;
            }
        }
    }
}