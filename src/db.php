<?php
   $mysql = new mysql ("hotgamez.mysql.tools", "hotgamez_db", "cavq5Fn5", "hotgamez_db");
   $result = $mysql->query("SELECT `name_game` FROM `game`");
   $games- = $result->fetch_assoc();
   print_r($games);
   exit();

   $mysql->close ();

?>
