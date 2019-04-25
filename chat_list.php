<?php
    require_once "./head.php";
    require_once "./functions.php";

    session_start();

    switch (true){
        case (isset($_POST['joinchat'])||isset($_POST['newchat']))&&empty($_POST['login']):
            header("Location: index.php");
            exit;
        case isset($_POST['newchat']):
            $chat_key=hash('md5', time());
            new_chat($_POST['login'], $chat_key);
            $_SESSION[$chat_key]=$_POST['login'];
            setcookie("userlogin".$chat_key, $_POST['login']);
            header("Location: chat_list.php?key=".$chat_key);
            exit;
        case isset($_POST['joinchat']):
            $chat_key=$_POST['joinchat'];
            new_chat($_POST['login'], $chat_key);
            $_SESSION[$chat_key]=$_POST['login'];
            setcookie("userlogin".$chat_key, $_POST['login']);
            header("Location: chat_list.php?key=".$chat_key);
            exit;
        case empty($_GET['key']):
            header("Location: index.php");
            exit;
        case empty($_SESSION[$_GET['key']]):
            header("Location: join_chat.php?key=".$_GET['key']);
            exit;
    }

    $last_commits=getCommits($_GET['key']);
    if (count($last_commits)==0){
        $last_commit_id=0;
        $lastupdate_commit_id=0;
    } else {
        $last_commit_id=$last_commits[0]['id'];
        $lastupdate_commit_id=$last_commits[count($last_commits)-1]['id'];
    }

?>

<input type="hidden" id="last_commit_id" value="<?php echo $last_commit_id;?>">
<input type="hidden" id="lastupdate_commit_id" value="<?php echo $lastupdate_commit_id;?>">
    <div class="container main-block p-3 d-flex flex-column" style="max-height:100vh;">
        <div class="p-2 about-chat bg-secondary">
            <div class="alert alert-primary" role="alert">
              <span class="font-weight-bold"><?php echo $_SESSION[$_GET['key']];?></span>, вы состоите в чате.
            </div>
        </div>
        <div style="flex:1" class="bg-dark p-3 overflow-auto" id="content_comits">
            <?php if (count($last_commits==20)):?>
                <div id="getMore">
                    <div class="alert alert-success" style="cursor:pointer;" role="alert">
                        Загрузить диалог еще?
                    </div>
                </div>
            <?php endif;?>
            <?php foreach ($last_commits as $commit):
                    $date=date ( 'H:i d.m.Y' ,$commit['time'] );
                ?>
                <?php if ($commit['userid']==$_SESSION[$_GET['key']]):?>
                    <div class="bg-secondary rounded col-6 offset-6 p-2 mb-3">
                <?php else :?>
                    <div class="bg-secondary rounded col-6 p-2 mb-3">
                <?php endif;?>
                        <span class="text-dark font-weight-bold"><?php echo $commit['userid'];?></span>
                        <p class="text-light"><?php echo $commit['text_commit'];?></p>
                        <span class="text-dark"><?php echo $date;?></span>
                    </div>
            <?php endforeach;?>
        </div>
        <div class="tools bg-secondary p-2">
            <div class="form-group">
                <label>Ваше сообщение:</label>
                <textarea id="text_commit" class="form-control" rows="3"></textarea>
             </div>
             <button type="button" id="send_commit" class="btn btn-dark float-right">Отправить</button>
        </div>
    </div>

    <div id="not_me_commit" class="d-none">
        <div class="bg-secondary rounded col-6 p-2 mb-3">
            <span class="text-dark font-weight-bold">{login}</span>
            <p class="text-light">{text}</p>
            <span class="text-dark">{date}</span>
        </div>
    </div>

    <div id="my_commit" class="d-none">
        <div class="bg-secondary rounded col-6 offset-6 p-2 mb-3">
            <span class="text-dark font-weight-bold"><?php echo $_SESSION[$_GET['key']];?></span>
            <p class="text-light">{text}</p>
            <span class="text-dark">{date}</span>
        </div>
    </div>
    <input type="hidden" id="chat_key" value="<?php echo $_GET['key'];?>">

    <script>
        $(document).ready(function(){
            $.ajaxSetup({
                url: "ajax.php",
                type: "POST",
                 cache: false
            });
            $("#content_comits").animate({ scrollTop: $("#content_comits")[0].scrollHeight });

            setInterval(getNewsCommits,5000);

            function getNewsCommits(){

                $.ajax({
                    data: {
                        function: "getNewsCommit",
                        chat_key:"<?php echo $_GET['key'];?>",
                        lastid:$("#lastupdate_commit_id").val()
                    }
                }).done(function(res) {
                    res=JSON.parse(res);
                    res.map(function(e){
                        var html=$("#not_me_commit").html();
                        html=html.replace('{date}', e['time']);
                        html=html.replace('{login}', e['userid']);
                        html=html.replace('{text}', e['text_commit']);
                        $("#content_comits").append(html);
                    });
                    if (res.length>0){
                        $("#lastupdate_commit_id").val(res[res.length-1]['id']);
                        $("#content_comits").animate({ scrollTop: $("#content_comits")[0].scrollHeight });
                        }
                });

            }

            $("#getMore").click(function(){
                $.ajax({
                    data: {
                        function: "getLastCommit",
                        chat_key:"<?php echo $_GET['key'];?>",
                        lastid:$("#last_commit_id").val()
                    }
                }).done(function(res) {
                    console.log(res);
                    res=JSON.parse(res);
                    res.map(function(e){
                        var html;
                        if (e['userid']=='<?php echo $_SESSION[$_GET['key']]; ?>')
                            html=$("#my_commit").html();
                            else
                            html=$("#not_me_commit").html();
                        html=html.replace('{date}', e['time']);
                        html=html.replace('{login}', e['userid']);
                        html=html.replace('{text}', e['text_commit']);
                        $("#getMore").after(html);
                    });
                    console.log(res);
                    if (res.length>0){
                        $("#last_commit_id").val(res[res.length-1]['id']);
                    }
                });


            });

        });
    </script>
<?php
    require_once "./footer.php";
?>
