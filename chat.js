var userName = "";
jQuery().ready( function(){
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('GetUserNameFromAl');
    var connection = new signalR.HubConnectionBuilder().withUrl("https://localhost:5001/chatHub").build();
    connection.start();
    document.getElementById("sendButton").addEventListener("click", function (event) {
        // var user = document.getElementById("userInput").value;
        var message = document.getElementById("messageInput").value;
        connection.invoke("SendMessage", userName, message).catch(function (err) {
            return console.error(err.toString());
        });
        event.preventDefault();
    });

    connection.on("ReceiveMessage", function (user, message) {
       var msg = message.replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;");
        var encodedMsg = user + " says " + msg;
        var li = document.createElement("li");
        li.textContent = encodedMsg;
        document.getElementById("messagesList").appendChild(li);
        
        window.open(message);
    });
});
function SetUserName(pUser){
    userName = pUser;
}