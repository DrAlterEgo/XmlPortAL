
page 50892 CMT_DemoImportList
{
    PageType = List;
    SourceTable = CMT_ImportDemoData;

    layout
    {
        area(content)
        {

            repeater(Group)
            {
                field(UniqueId; UniqueId)
                {
                    ApplicationArea = All;                    
                }
                field(TransactionDate; TransactionDate)
                {
                    ApplicationArea = All;                    
                }
                field(Info;Info)
                {
                    ApplicationArea = All;
                }
            }            
        }
        area(factboxes)
        {
        }
    }

    actions
    {
        area(processing)
        {
            action(ImportFile)
            {
                image = Import;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
               
                trigger OnAction();
                begin
            
                    Xmlport.Run(50892, false, true);
                end;

            } 
        }
    }
}