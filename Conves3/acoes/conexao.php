<?php
$hostname="localhost";
$user="root";
$pass="";
$db="conves";
$conexao= mysqli_connect($hostname, $user, $pass, $db);
if(!$conexao){
    echo "Falha na conexão com o Banco de Dados.";
}
?>