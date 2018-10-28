<?php
include("../conexao2/ClassConexao.php");

class ClassPesquisa extends ClassConexao{

    public function pesquisaBD($busca)
    {
        $buscaLike='%'.$busca.'%';
        $crud=$this->conectaBD()->prepare("select * from tpcafe where nome like '$busca'");
        $crud->bindValue(':nome',$buscaLike);
        $crud->execute();
        return $f=$crud->fetchAll();
    }
}