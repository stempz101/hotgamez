<?php
   $mysql = new mysql ("hotgamez.mysql.tools", "hotgamez_db", "cavq5Fn5", "hotgamez_db");
   $result = $mysql->query("SELECT `name_game` FROM `game`");
   $games- = $result->fetch_assoc();
   if(count($games) == 0) {
    echo "Error #666";
      exit();
   }
   print_r($games);
   exit();

   $mysql->close ();

   header('Location: /');

?>
