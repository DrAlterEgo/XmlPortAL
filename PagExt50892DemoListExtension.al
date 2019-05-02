pageextension 50892 CMT_CustomerListDemoExt extends "Customer List"
{
    actions
    {
    
        addafter(General)
        {
              action("Import Data")
                {
                    ApplicationArea = All;
                    Promoted = true;
                    PromotedIsBig = true;                    
                    
                    RunObject = page CMT_DemoImportList;
                    Image = Import;
                }
        }    
    }
}