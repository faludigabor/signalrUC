pageextension 60100 ExtendOrderProcessor extends "Order Processor Role Center"
{
    layout
    {
    addafter(Control13){
        part(ChatPagePart;ChatPagePart){
            ApplicationArea = All;
        }
    }    
    }
}
