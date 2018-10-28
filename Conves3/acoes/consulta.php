 <?php
 include_once 'conexao.php';  
 
$filtro = isset($_GET['filtro'])?$_GET['filtro']:"";

$sql = "select * from tpcafe where nome like '%$filtro%' order by nome";
$consulta = mysqli_query($conexao,$sql);
$registros = mysqli_num_rows($consulta);

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
        <h1>Nossa Lista de produtos</h1>
        
 <?php
       
       
    while($exibirRegistros = mysqli_fetch_array($consulta)){
           

           
           $id= $exibirRegistros[0];
           $nome= $exibirRegistros[1];
           $sb = $exibirRegistros[2];
           
           
           print "<article>";
           
           print "Identificação $id  <br>";
           print "<h2>$nome<br></h2><br><br>";

           print "<h3> $sb<br><h3>";
           
           
           print "</article>";
           
           
    }
       
       
        ?>
    </section>
</div>

</body>
</html>