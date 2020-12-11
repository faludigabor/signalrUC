controladdin SignalRCA
{
    RequestedHeight = 300;
    MinimumHeight = 300;
    MaximumHeight = 300;
    RequestedWidth = 700;
    MinimumWidth = 700;
    MaximumWidth = 700;
    VerticalStretch = true;
    VerticalShrink = true;
    HorizontalStretch = true;
    HorizontalShrink = true;
    Scripts = 
        'https://localhost:5001/lib/jquery/dist/jquery.min.js',
        'https://localhost:5001/js/signalr/dist/browser/signalr.js',
        'chat.js';
    StartupScript = 'startupScript.js';
    
    
    event GetUserNameFromAl()
    
    procedure SetUserName(pUser : Text)  
}