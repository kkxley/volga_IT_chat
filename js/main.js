$(document).ready(function(){
    $.ajaxSetup({
        url: "ajax.php",
        type: "POST"
    });

    $("#send_commit").click(function(){
        var text=$("#text_commit").val();
        if (text=="") return;
        $("#lastupdate_commit_id").val(parseInt($("#lastupdate_commit_id").val())+1);

        var html=$("#my_commit").html();
        var chat_key=$("#chat_key").val();
        var date=new Date();
        var dateString=String(date.getHours()).padStart(2, '0')+':'+String(date.getMinutes()).padStart(2, '0')+' '+String(date.getDate()).padStart(2, '0')+'.'+String(date.getMonth() + 1).padStart(2, '0')+'.'+date.getFullYear();
        console.log(dateString);
        html=html.replace('{date}', dateString);
        html=html.replace('{text}', text);
        console.log(html);
        $("#content_comits").append(html);

        $("#text_commit").val("");
        $("#text_commit").focus();

        $.ajax({
            data: {
                function: "sendCommit",
                text:text,
                chat_key: chat_key,
            }
        }).done(function(){

            $("#content_comits").animate({ scrollTop: $("#content_comits")[0].scrollHeight });
        });
    });




});
