page 60100 ChatPagePart
{
    
    Caption = 'ChatPagePart';
    PageType = CardPart;
    SourceTable = Integer;
    
    layout
    {
        area(content)
        {
            group(General)
            {
               usercontrol(SignalrUC;SignalRCA) {
                   ApplicationArea = All;
                   trigger GetUserNameFromAl()
                   begin
                       CurrPage.SignalrUC.SetUserName(UserId());
                   end;
               }
            }
        }
    }
    
}
