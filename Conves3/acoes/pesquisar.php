<?php
include_once ("conexao.php");


$filtro = isset($_GET['filtro'])?$_GET['filtro']:"";

$sql = "select * from tpcafe where id  = '$filtro'";
$consulta = mysqli_query($conexao,$sql);
$registros = mysqli_num_rows($consulta);

?>

<!doctype html>
<html lang="pt-br">
<head>
   <meta charset="UTF-8">
    <title>Loucos por Café</title>
    <link rel ="stylesheet" href="../_css/estilo.css">
</head>
<body>
<div class="container">

    <nav >
        <ul class="menu">
            <a href="../index.html"> <li>Home</li></a>
            <br>
            <a href="cadastro.html"> <li>Cadastrar</li></a>
            <a href="consulta.php"> <li>Listar</li></a>
            <a href="pesquisar.php"> <li>Pesquisa</li></a>
            
            

        </ul>
    </nav>
    
    <section class="ps">
        <form method="get" action="">
    <input type="text" name="filtro"  class="campo">
    <input type="submit" value="Pesquisar" class="btn">
</form>
        
        
</section>
<?php
    while($exibirRegistros = mysqli_fetch_array($consulta)){
    $nomeproduto=$exibirRegistros[0];
    $id=$exibirRegistros[0];
    $nome=$exibirRegistros[1];
    $sb=$exibirRegistros[2];
    
print "<article>";
    print "<h3>Identificação $id</h3><br>";
    print "<h2> $nome<br></h2><br><br>";
    print "<h4>$sb</h4> ";
print "</article>";
    }
?>

</body>
</html>

