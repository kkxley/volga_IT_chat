$(document).ready(function(){

    $("#send_commit").click(function(){
        var text=$("#text_commit").val();
        if (text=="") return;

        var html=$("#my_commit").html();
        var date=new Date();
        var dateString=String(date.getHours()).padStart(2, '0')+':'+String(date.getMinutes()).padStart(2, '0')+' '+String(date.getDate()).padStart(2, '0')+'.'+String(date.getMonth() + 1).padStart(2, '0')+'.'+date.getFullYear();
        console.log(dateString);
        html=html.replace('{date}', dateString);
        html=html.replace('{text}', text);
        console.log(html);
        $("#content_comits").append(html);

        $("#text_commit").val("");
        $("#text_commit").focus();


    });


    console.log("test");
});
