<?php
   $mysql = new mysql ("hotgamez.mysql.tools", "hotgamez_group", "As-191-cool", "hotgamez_main");
   $result = $mysql->query("SELECT `name_game` FROM `game`");
   $games- = $result->fetch_assoc();
   print_r($games);
   exit();

   $mysql->close ();

?>
