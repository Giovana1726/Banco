<?php

$servername = "localhost";
$database = "Contas_a_Receber";
$username = "root";
$password = "";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Conexão Falhou:" . misqli_connect_error());

}

?>