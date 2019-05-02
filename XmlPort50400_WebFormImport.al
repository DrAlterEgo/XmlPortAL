xmlport 50892 CMT_DemoDataXmlPortImport
{
    Direction = Import;
    FieldDelimiter = '"';
    FieldSeparator = ';';
    Format = VariableText;
    UseRequestPage = false;
    TextEncoding = UTF16;
    RecordSeparator = '<LF>';

    schema
    {
        textelement(Subscriptions)
        {
            tableelement(CMT_ImportDemoData; CMT_ImportDemoData)
            {
                AutoUpdate = true;
                XmlName = 'SubRecord';

                fieldelement("TransactionDate"; CMT_ImportDemoData.TransactionDate){}
                fieldelement("Info";CMT_ImportDemoData.Info){}
            }
        }      
    }  
}

