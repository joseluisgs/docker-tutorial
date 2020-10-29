<?php
echo ("<h1>HOLA</h1>");
echo ("<h3>He montado LEMP</h3>");

$pdo = new \PDO('mysql:host=localhost;dbname=docker_sample', 'joseluis', '123');
$res = $pdo->query('select name, last_name from users');
foreach ($res as $user) {
  echo '<p>' . $user[0] . ' - ' . $user[1];
}
