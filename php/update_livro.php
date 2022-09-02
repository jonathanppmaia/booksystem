<?php
    include_once 'conexao.php';
    include_once 'funcoes.php';

    #Atualizando os dados no banco
    $res = update("livros", $_POST, array("id_livro"=>$_POST['id_livro']));
    
    if($res){
        header("location: ../livro_consulta.php");
    }else{
        header("location: ../livro_consulta.php?erro=erro na atualização");
    }
?>