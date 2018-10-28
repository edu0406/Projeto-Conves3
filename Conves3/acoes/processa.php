<?php

include_once ('conexao.php');

$nome=$_POST['nome'];
$sb=$_POST['sb'];

$sql="insert into tpcafe(nome, sb) values('$nome','$sb')";

$salvar= mysqli_query($conexao, $sql);


$linhas = mysqli_affected_rows($conexao);




mysqli_close($conexao);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sistema de Cadastro</title>
    <link rel ="stylesheet" href="../_css/estilo.css">
</head>
<body>
<div class="container">

    <nav>
        <ul class="menu">
            <a href="../index.html"> <li>Home</li></a>
            <br>
            <a href="cadastro.html"> <li>Cadastrar</li></a>
            <a href="consulta.php"> <li>Listar</li></a>
            <a href="pesquisar.php"> <li>Pesquisa</li></a>

        </ul>
    </nav>
    <section>
        <h1>Confirmação de Cadastro</h1>
        <hr><br><br>

        <?php
        if($linhas ==1){
            print"Cadastro efetuado com sucesso";
        }
        else{
            print"Cadastro <b>NÃO</b> efetuado!!! <br> Já existe um produto cadastrado com esse nome.";
        }

        ?>
    </section>
</div>

</body>
</html>