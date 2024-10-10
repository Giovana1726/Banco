<?php

$servername = "localhost";
$database = "agenda_contato";
$username = "root";
$password = "";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Conexão Falhou:" . misqli_connect_error());

}

?>