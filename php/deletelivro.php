<?php
    include_once 'conexao.php';
    include_once 'funcoes.php';

    
    #Deletando dados de Alunos
    $res = delete("livros", array("id_livro"=>$_POST['id_livro']));
    
    if($res){
        header("location: ../livro_consulta.php");
    }else{
        header("location: ../livro_consulta.php?erro=erro ao deletar");
    }
?>