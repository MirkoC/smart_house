var server = 'localhost';
var port = '8080';


function send_command(command) {
    $.ajax({
        type: "POST",
        url: "http://" + server + ":" + port + "/heat=" + command,
        dataType: 'text/plain',
        data: command.toString(),
        success: function(data, textStatus, jqXHR)
        {
            console.log("prošlo")
            console.log(data)
        },
        error: function (jqXHR, textStatus, errorThrown)
        {

        },
    });
}


