<?php
   $mysqli = new mysqli ("hotgamez.mysql.tools", "hotgamez_db", "cavq5Fn5", "hotgamez_db");
   $result = $mysqli->query("SELECT `name_game` FROM `game`");
   $games- = $result->fetch_assoc();
   if(count($games) == 0) {
    echo "Error #666";
      exit();
   }
   print_r($games);
   exit();

   $mysqli->close ();

   header('Location: /');

?>
