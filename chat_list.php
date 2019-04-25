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


?>
    <div class="container main-block p-3 d-flex flex-column" style="max-height:100vh;">
        <div class="p-2 about-chat bg-secondary">
            <div class="alert alert-primary" role="alert">
              <span class="font-weight-bold"><?php echo $_SESSION[$_GET['key']];?></span>, вы состоите в чате.
            </div>
        </div>
        <div style="flex:1" class="bg-dark p-3 overflow-auto" id="content_comits">

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
<?php
    require_once "./footer.php";
?>
