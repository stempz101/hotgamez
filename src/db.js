// var send = function (url) {
//   var ajax = new XMLHttpRequest();
//   ajax.open('GET', url, true);
//   ajax.onreadystatechange = function() {
//    if (ajax.readyState == 4) {
//     if (ajax.status == 200) {
//      console.log(ajax.responseText);
//     }
//    }
//   };
//   ajax.send(null);
// }

// var getData = function (id) {
  
// }

const con = mysql.createConnection({
    host: "hotgamez.mysql.tools",
    user: "hotgamez_group",
    password: "As-191-cool",
    database: 'hotgamez_main'
});

con.connect(function(err) {
    if (err) throw err;
    con.query("SELECT * FROM game", function (err, result, fields) {
        if (err) throw err;
        console.log(result);
    });
});
