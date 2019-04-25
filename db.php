<?php

    $connect_db=new DB("localhost", "chat", "root", "bnfxb");

    class DB {
        private $dbh;

        function __construct($host, $dbname, $user, $pass){
            $this->dbh = new PDO('mysql:host='.$host.';dbname='.$dbname, $user, $pass);
        }

        function getRows($table,  $column, $where=''){
            $res=array();
            foreach($this->dbh->query('SELECT '.implode(', ', $column).' FROM '.$table.' '.$where, PDO::FETCH_ASSOC) as $row) {
                $res[]=$row;
            }
            return $res;
        }

        function setRow($table, $colm, $val){
            $stmt = $this->dbh->prepare('INSERT INTO '.$table.' ('.implode(', ', $colm).') VALUES ('.implode(', ', array_map(function($col){ return ':'.$col;}, $colm)).')');

            foreach ($val as $row){
                foreach ($colm as $column){
                    echo $column." ".$row[$column]."<br>";
                    $stmt->bindParam(':'.$column, $row[$column]);
                }
                $stmt->execute();
            }

        }

        function delete($table, $where=""){
            $count = $dbh->exec("DELETE FROM ".$table." ".$where);
            return $count;
        }


    }



 ?>
