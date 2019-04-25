<?php
    require_once './db.php';

    global $connect_db;


    function new_chat($nameuser, $chat_key){
        global $connect_db;

        $dt=$connect_db->getRows('chat_join', array('userlogin'), "  WHERE chat_key='".$chat_key."' AND userlogin='".$nameuser."'");
        if (count($dt)>0) {
            header("Location: join_chat.php?key=".$chat_key);
            die();
        }

        $connect_db->setRow(
            "chat_join",
            array("chat_key", "userlogin", "last_time"),
            array(
                array(
                    "chat_key"=>$chat_key,
                    "userlogin"=>$nameuser,
                    "last_time"=>time()
                )
            ));

    }

    function getCommits($key){
        global $connect_db;

        $dt=$connect_db->getRows('commits',
            array('id',"userid",  "text_commit", "time"), " WHERE chat_key='$key' ORDER BY id DESC LIMIT 20");
        $dt=array_reverse($dt);

        return $dt;
    }


 ?>
