<?php
    require_once './db.php';

    global $connect_db;


    switch ($_POST['function']){
        case "sendCommit":
                sendCommit();
            break;
        case "getNewsCommit":
                getNewsCommit();
            break;
        case "getLastCommit":
                getLastCommit();
            break;


    }


    function sendCommit(){
        session_start();
        if (isset($_POST['text'])&&isset($_POST['chat_key'])&&isset($_SESSION[$_POST['chat_key']])){
            global $connect_db;

            $connect_db->setRow(
                "commits",
                array("userid", "chat_key", "text_commit", "time"),
                array(
                    array(
                        "userid"=>$_SESSION[$_POST['chat_key']],
                        "chat_key"=>$_POST['chat_key'],
                        "text_commit"=>$_POST['text'],
                        "time"=>time()
                    )
                ));
        }
        die();
    }



    function getLastCommit(){
        if (isset($_POST['chat_key'])&&isset($_POST['lastid'])){
            global $connect_db;
            session_start();
            $dt=$connect_db->getRows('commits',
                array('id',"userid",  "text_commit", "time"),
                " WHERE chat_key='".$_POST['chat_key']."' AND id<".$_POST['lastid']." ORDER BY id DESC LIMIT 20");
            
            foreach ($dt as &$row) {
                $row['time']=date ( 'H:i d.m.Y' ,$row['time'] );
            }

            echo json_encode($dt);

        }
        die();


    }

    function getNewsCommit(){
        if (isset($_POST['chat_key'])&&isset($_POST['lastid'])){
            global $connect_db;
            session_start();
            $dt=$connect_db->getRows('commits',
                array('id',"userid",  "text_commit", "time"),
                " WHERE chat_key='".$_POST['chat_key']."' AND id>".$_POST['lastid']." AND NOT userid='".$_SESSION[$_POST['chat_key']]."'");
            foreach ($dt as &$row) {
                $row['time']=date ( 'H:i d.m.Y' ,$row['time'] );
            }

            echo json_encode($dt);

        }
        die();

    }













 ?>
