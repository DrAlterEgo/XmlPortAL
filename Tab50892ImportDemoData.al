table 50892  CMT_ImportDemoData
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; UniqueId; Guid)
        {
            DataClassification = ToBeClassified;
        }
        field(2; "TransactionDate"; Date)
        {
            DataClassification = ToBeClassified;            
        }
        field(3; Info; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; UniqueId)
        {
            Clustered = true;
        }
    }   

    trigger OnInsert()
    begin
        UniqueId := CreateGuid();
    end;
}